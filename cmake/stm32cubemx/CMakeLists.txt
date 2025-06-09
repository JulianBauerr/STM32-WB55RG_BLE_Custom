cmake_minimum_required(VERSION 3.22)
# Enable CMake support for ASM and C languages
enable_language(C ASM)
# STM32CubeMX generated symbols (macros)
set(MX_Defines_Syms 
	USE_HAL_DRIVER 
	STM32WB55xx
    $<$<CONFIG:Debug>:DEBUG>
)

# STM32CubeMX generated include paths
set(MX_Include_Dirs
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/STM32_WPAN/App
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Inc
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Inc/Legacy
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Utilities/lpm/tiny_lpm
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/utilities
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/core
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/core/auto
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/core/template
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/svc/Inc
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/svc/Src
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/CMSIS/Device/ST/STM32WBxx/Include
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Utilities/sequencer
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/CMSIS/Include
)

# STM32CubeMX generated application sources
set(MX_Application_Src
    ${CMAKE_SOURCE_DIR}/STM32_WPAN/App/app_ble.c
    ${CMAKE_SOURCE_DIR}/STM32_WPAN/App/custom_stm.c
    ${CMAKE_SOURCE_DIR}/STM32_WPAN/App/custom_app.c
    ${CMAKE_SOURCE_DIR}/STM32_WPAN/Target/hw_ipcc.c
    ${CMAKE_SOURCE_DIR}/Core/Src/main.c
    ${CMAKE_SOURCE_DIR}/Core/Src/app_entry.c
    ${CMAKE_SOURCE_DIR}/Core/Src/app_debug.c
    ${CMAKE_SOURCE_DIR}/Core/Src/hw_timerserver.c
    ${CMAKE_SOURCE_DIR}/Core/Src/hw_uart.c
    ${CMAKE_SOURCE_DIR}/Core/Src/stm32_lpm_if.c
    ${CMAKE_SOURCE_DIR}/Core/Src/stm32wbxx_it.c
    ${CMAKE_SOURCE_DIR}/Core/Src/stm32wbxx_hal_msp.c
    ${CMAKE_SOURCE_DIR}/Core/Src/sysmem.c
    ${CMAKE_SOURCE_DIR}/Core/Src/syscalls.c
    ${CMAKE_SOURCE_DIR}/startup_stm32wb55xx_cm4.s
)

# STM32 HAL/LL Drivers
set(STM32_Drivers_Src
    ${CMAKE_SOURCE_DIR}/Core/Src/system_stm32wbxx.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_hsem.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_rcc.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_ll_rcc.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_rcc_ex.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_flash.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_flash_ex.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_gpio.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_dma.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_dma_ex.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_pwr.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_pwr_ex.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_cortex.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_exti.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_ipcc.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_uart.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_uart_ex.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_rng.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_rtc.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Drivers/STM32WBxx_HAL_Driver/Src/stm32wbxx_hal_rtc_ex.c
)

# Drivers Midllewares


set(Utilities_Src
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Utilities/lpm/tiny_lpm/stm32_lpm.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Utilities/sequencer/stm32_seq.c
)
set(STM32_WPAN_Src
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl/tl_mbox.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci/shci.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/utilities/dbg_trace.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/utilities/otp.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/utilities/stm_list.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/utilities/stm_queue.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/core/template/osal.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_events.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_gap_aci.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_gatt_aci.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_hal_aci.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_hci_le.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_l2cap_aci.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl/hci_tl.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl/hci_tl_if.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl/shci_tl.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl/shci_tl_if.c
    /Users/julian/STM32Cube/Repository/STM32Cube_FW_WB_V1.22.1/Middlewares/ST/STM32_WPAN/ble/svc/Src/svc_ctl.c
)

# Link directories setup
set(MX_LINK_DIRS

)
# Project static libraries
set(MX_LINK_LIBS 
    STM32_Drivers
    Utilities	STM32_WPAN	
)
# Interface library for includes and symbols
add_library(stm32cubemx INTERFACE)
target_include_directories(stm32cubemx INTERFACE ${MX_Include_Dirs})
target_compile_definitions(stm32cubemx INTERFACE ${MX_Defines_Syms})

# Create STM32_Drivers static library
add_library(STM32_Drivers OBJECT)
target_sources(STM32_Drivers PRIVATE ${STM32_Drivers_Src})
target_link_libraries(STM32_Drivers PUBLIC stm32cubemx)


# Create Utilities static library
add_library(Utilities OBJECT)
target_sources(Utilities PRIVATE ${Utilities_Src})
target_link_libraries(Utilities PUBLIC stm32cubemx)

# Create STM32_WPAN static library
add_library(STM32_WPAN OBJECT)
target_sources(STM32_WPAN PRIVATE ${STM32_WPAN_Src})
target_link_libraries(STM32_WPAN PUBLIC stm32cubemx)

# Add STM32CubeMX generated application sources to the project
target_sources(${CMAKE_PROJECT_NAME} PRIVATE ${MX_Application_Src})

# Link directories setup
target_link_directories(${CMAKE_PROJECT_NAME} PRIVATE ${MX_LINK_DIRS})

# Add libraries to the project
target_link_libraries(${CMAKE_PROJECT_NAME} ${MX_LINK_LIBS})

# Add the map file to the list of files to be removed with 'clean' target
set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES ADDITIONAL_CLEAN_FILES ${CMAKE_PROJECT_NAME}.map)

# Validate that STM32CubeMX code is compatible with C standard
if((CMAKE_C_STANDARD EQUAL 90) OR (CMAKE_C_STANDARD EQUAL 99))
    message(ERROR "Generated code requires C11 or higher")
endif()
