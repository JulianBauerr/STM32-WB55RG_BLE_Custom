# toolchain-arm-gcc.cmake

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Pfad zur richtigen STM32CubeIDE GCC Toolchain
set(TOOLCHAIN_PATH /Applications/STM32CubeIDE.app/Contents/Eclipse/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.13.3.rel1.macos64_1.0.0.202411102158/tools/bin/)

set(CMAKE_C_COMPILER ${TOOLCHAIN_PATH}/arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PATH}/arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER ${TOOLCHAIN_PATH}/arm-none-eabi-gcc)

# Notwendig für Bare-Metal-Projekte
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
