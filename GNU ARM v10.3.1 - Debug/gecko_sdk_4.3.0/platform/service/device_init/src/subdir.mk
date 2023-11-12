################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_emu_s0.c \
../gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_hfxo_s0.c \
../gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_lfxo_s0.c \
../gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_nvic.c 

OBJS += \
./gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_emu_s0.o \
./gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_hfxo_s0.o \
./gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_lfxo_s0.o \
./gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_nvic.o 

C_DEPS += \
./gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_emu_s0.d \
./gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_hfxo_s0.d \
./gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_lfxo_s0.d \
./gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_nvic.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_emu_s0.o: ../gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_emu_s0.c gecko_sdk_4.3.0/platform/service/device_init/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\config" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\autogen" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\Device\SiliconLabs\EFM32GG\Include" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\hardware\board\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\CMSIS\Core\Include" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\service\device_init\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\emlib\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\common\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\common\toolchain\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\service\system\inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_emu_s0.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_hfxo_s0.o: ../gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_hfxo_s0.c gecko_sdk_4.3.0/platform/service/device_init/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\config" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\autogen" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\Device\SiliconLabs\EFM32GG\Include" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\hardware\board\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\CMSIS\Core\Include" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\service\device_init\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\emlib\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\common\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\common\toolchain\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\service\system\inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_hfxo_s0.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_lfxo_s0.o: ../gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_lfxo_s0.c gecko_sdk_4.3.0/platform/service/device_init/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\config" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\autogen" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\Device\SiliconLabs\EFM32GG\Include" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\hardware\board\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\CMSIS\Core\Include" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\service\device_init\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\emlib\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\common\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\common\toolchain\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\service\system\inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_lfxo_s0.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_nvic.o: ../gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_nvic.c gecko_sdk_4.3.0/platform/service/device_init/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG990F1024=1' '-DSL_BOARD_NAME="BRD2200A"' '-DSL_BOARD_REV="B05"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\config" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\autogen" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\Device\SiliconLabs\EFM32GG\Include" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\hardware\board\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\CMSIS\Core\Include" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\service\device_init\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\emlib\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\common\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\common\toolchain\inc" -I"C:\Users\colin\SimplicityStudio\v5_workspace\UART_CC3\gecko_sdk_4.3.0\platform\service\system\inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/service/device_init/src/sl_device_init_nvic.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


