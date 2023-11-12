/*
 * uart.c
 *
 *  Created on: 10-Aug-2023
 *      Author: colin
 */
#include "em_chip.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "em_usart.h"
#include "em_timer.h"

#define UART_PORT       USART1
#define UART_LOCATION   1
#define UART_TX_PORT    gpioPortD
#define UART_TX_PIN     0
#define UART_RX_PORT    gpioPortD
#define UART_RX_PIN     1
#define LED_PORT        gpioPortE
#define LED_PIN         2
#define TOGGLE_DELAY_MS 3000

#define RX_BUFFER_SIZE  128 // Size of the receive buffer
volatile uint8_t rxBuffer[RX_BUFFER_SIZE];
volatile uint32_t uartRxIndex = 0;
#define UART_TX_BUFFER_SIZE 128
volatile uint8_t uartTxBuffer[UART_TX_BUFFER_SIZE];
volatile uint32_t uartTxIndex = 0;

void UART_Init(void) {
    // Enable clock for USART1
    CMU_ClockEnable(cmuClock_USART1, true);
    CMU_ClockEnable(cmuClock_GPIO, true);
    CMU_ClockEnable(cmuClock_TIMER1, true);


    // Configure UART pins
    GPIO_PinModeSet(UART_TX_PORT, UART_TX_PIN, gpioModePushPull, 1);
    GPIO_PinModeSet(UART_RX_PORT, UART_RX_PIN, gpioModeInput, 0);

    // Configure USART for asynchronous mode, no flow control
    USART_InitAsync_TypeDef uartInit = USART_INITASYNC_DEFAULT;
    uartInit.enable = usartDisable; // Disable temporarily for configuration
    uartInit.baudrate = 9600;       // Desired baud rate
    USART_InitAsync(UART_PORT, &uartInit);

    UART_PORT->ROUTE = USART_ROUTE_TXPEN | USART_ROUTE_RXPEN |USART_ROUTE_LOCATION_LOC1;
    // Enable UART
    //UART_PORT->CMD = USART_CMD_TXEN | USART_CMD_RXEN; // Enable both TX and RX


    TIMER_Init_TypeDef timer_init = TIMER_INIT_DEFAULT;
    timer_init.enable = false;
    TIMER_Init(TIMER1, &timer_init);
    TIMER_TopSet(TIMER1, (CMU_ClockFreqGet(cmuClock_TIMER1) / 1000) * TOGGLE_DELAY_MS);


    // UART initialization and configuration
//    USART_InitAsync_TypeDef usart_initasync = USART_INITASYNC_DEFAULT;
//    usart_initasync.enable = usartDisable;
//    USART_InitAsync(UART_PORT, &usart_initasync);


    //   Interrupt enabler
    TIMER_IntEnable(TIMER1, TIMER_IF_OF); // Enable overflow interrupt
    USART_IntEnable(UART_PORT, USART_IF_TXBL | USART_IF_RXDATAV);
    NVIC_ClearPendingIRQ(TIMER1_IRQn); // Enable TIMER0 interrupt in NVIC
    NVIC_EnableIRQ(TIMER1_IRQn);

    // Enable the peripherals
    TIMER_Enable(TIMER1, true);

    // Enable USART
    USART_Enable(UART_PORT, usartEnable);
}
void USART0_RX_IRQHandler() {
    // Handle USART RX interrupt
    if (UART_PORT->STATUS & USART_STATUS_RXDATAV) {
        rxBuffer[uartRxIndex] = UART_PORT->RXDATA;
        uartRxIndex = (uartRxIndex + 1) % uartRxIndex;
    }
}

void USART0_TX_IRQHandler() {
    // Handle USART TX interrupt
    if (UART_PORT->STATUS & USART_STATUS_TXBL) {
        // Check if there's more data to send
        if (uartTxIndex != uartTxIndex) {
            UART_PORT->TXDATA = uartTxBuffer[uartTxIndex];
            uartTxIndex = (uartTxIndex + 1) % uartTxIndex;
        }
    }
}
void UART_SendByte(uint8_t data) {
    // Check if USART TX buffer is not full
    if ((uartTxIndex + 1) % UART_TX_BUFFER_SIZE != uartTxIndex) {
        uartTxBuffer[uartTxIndex] = data;
        uartTxIndex = (uartTxIndex + 1) % UART_TX_BUFFER_SIZE;

        // Start USART transmission if not already in progress
        if (!(UART_PORT->STATUS & USART_STATUS_TXBL)) {
            UART_PORT->TXDATA = uartTxBuffer[uartTxIndex];
        }
    }
}

//void UART_SendChar(uint8_t data) {
//    // Wait for the transmit buffer to be empty
//    while (!(UART_PORT->STATUS & USART_STATUS_TXBL));
//    UART_PORT->TXDATA = data;
//}


void UART_SendString(char *str) {
    while (*str) {
        UART_SendByte(*str++);
    }
}

void SendData(void) {
  UART_SendString("Hello,UART!\r\n");
}


void Led_Toggle(void){
  GPIO_PinModeSet(LED_PORT, LED_PIN, gpioModePushPull, 0);
  GPIO->P[LED_PORT].DOUTSET = (1 << LED_PIN);

}
void Process_action(void) {
  SendData();
}
