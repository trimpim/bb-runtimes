--
--  Copyright (C) 2019, AdaCore
--

--  Copyright (c) 2010 - 2017, Nordic Semiconductor ASA
--
--  All rights reserved.
--
--

--  This spec has been automatically generated from nrf52840.svd

--  This is a version for the nRF52840 reference description for radio MCU with
--  ARM 32-bit Cortex-M4 Microcontroller  MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick                                     : constant Interrupt_ID := -1;
   POWER_CLOCK                                  : constant Interrupt_ID := 0;
   RADIO                                        : constant Interrupt_ID := 1;
   UARTE0_UART0                                 : constant Interrupt_ID := 2;
   SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0            : constant Interrupt_ID := 3;
   SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1            : constant Interrupt_ID := 4;
   NFCT                                         : constant Interrupt_ID := 5;
   GPIOTE                                       : constant Interrupt_ID := 6;
   SAADC                                        : constant Interrupt_ID := 7;
   TIMER0                                       : constant Interrupt_ID := 8;
   TIMER1                                       : constant Interrupt_ID := 9;
   TIMER2                                       : constant Interrupt_ID := 10;
   RTC0                                         : constant Interrupt_ID := 11;
   TEMP                                         : constant Interrupt_ID := 12;
   RNG                                          : constant Interrupt_ID := 13;
   ECB                                          : constant Interrupt_ID := 14;
   CCM_AAR                                      : constant Interrupt_ID := 15;
   WDT                                          : constant Interrupt_ID := 16;
   RTC1                                         : constant Interrupt_ID := 17;
   QDEC                                         : constant Interrupt_ID := 18;
   COMP_LPCOMP                                  : constant Interrupt_ID := 19;
   SWI0_EGU0                                    : constant Interrupt_ID := 20;
   SWI1_EGU1                                    : constant Interrupt_ID := 21;
   SWI2_EGU2                                    : constant Interrupt_ID := 22;
   SWI3_EGU3                                    : constant Interrupt_ID := 23;
   SWI4_EGU4                                    : constant Interrupt_ID := 24;
   SWI5_EGU5                                    : constant Interrupt_ID := 25;
   TIMER3                                       : constant Interrupt_ID := 26;
   TIMER4                                       : constant Interrupt_ID := 27;
   PWM0                                         : constant Interrupt_ID := 28;
   PDM                                          : constant Interrupt_ID := 29;
   MWU                                          : constant Interrupt_ID := 32;
   PWM1                                         : constant Interrupt_ID := 33;
   PWM2                                         : constant Interrupt_ID := 34;
   SPIM2_SPIS2_SPI2                             : constant Interrupt_ID := 35;
   RTC2                                         : constant Interrupt_ID := 36;
   I2S                                          : constant Interrupt_ID := 37;
   FPU                                          : constant Interrupt_ID := 38;
   USBD                                         : constant Interrupt_ID := 39;
   UARTE1                                       : constant Interrupt_ID := 40;
   QSPI                                         : constant Interrupt_ID := 41;
   CRYPTOCELL                                   : constant Interrupt_ID := 42;
   PWM3                                         : constant Interrupt_ID := 45;
   SPIM3                                        : constant Interrupt_ID := 47;

end Ada.Interrupts.Names;
