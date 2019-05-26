--
--  Copyright (C) 2019, AdaCore
--

--  Copyright (c) 2010 - 2017, Nordic Semiconductor ASA
--
--  All rights reserved.
--
--

--  This spec has been automatically generated from nrf52840.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package Interfaces.NRF52.WDT is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Write '1' to Enable interrupt for TIMEOUT event
   type INTENSET_TIMEOUT_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TIMEOUT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for TIMEOUT event
   type INTENSET_TIMEOUT_Field_1 is
     (
      --  Reset value for the field
      Intenset_Timeout_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TIMEOUT_Field_1 use
     (Intenset_Timeout_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to Enable interrupt for TIMEOUT event
      TIMEOUT       : INTENSET_TIMEOUT_Field_1 :=
                       Intenset_Timeout_Field_Reset;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      TIMEOUT       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Write '1' to Disable interrupt for TIMEOUT event
   type INTENCLR_TIMEOUT_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TIMEOUT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for TIMEOUT event
   type INTENCLR_TIMEOUT_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Timeout_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TIMEOUT_Field_1 use
     (Intenclr_Timeout_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to Disable interrupt for TIMEOUT event
      TIMEOUT       : INTENCLR_TIMEOUT_Field_1 :=
                       Intenclr_Timeout_Field_Reset;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      TIMEOUT       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Indicates whether or not the watchdog is running
   type RUNSTATUS_RUNSTATUS_Field is
     (
      --  Watchdog not running
      Notrunning,
      --  Watchdog is running
      Running)
     with Size => 1;
   for RUNSTATUS_RUNSTATUS_Field use
     (Notrunning => 0,
      Running => 1);

   --  Run status
   type RUNSTATUS_Register is record
      --  Read-only. Indicates whether or not the watchdog is running
      RUNSTATUS     : RUNSTATUS_RUNSTATUS_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RUNSTATUS_Register use record
      RUNSTATUS     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Request status for RR[0] register
   type REQSTATUS_RR0_Field is
     (
      --  RR[0] register is not enabled, or are already requesting reload
      Disabledorrequested,
      --  RR[0] register is enabled, and are not yet requesting reload
      Enabledandunrequested)
     with Size => 1;
   for REQSTATUS_RR0_Field use
     (Disabledorrequested => 0,
      Enabledandunrequested => 1);

   --  Request status for RR[1] register
   type REQSTATUS_RR1_Field is
     (
      --  RR[1] register is not enabled, or are already requesting reload
      Disabledorrequested,
      --  RR[1] register is enabled, and are not yet requesting reload
      Enabledandunrequested)
     with Size => 1;
   for REQSTATUS_RR1_Field use
     (Disabledorrequested => 0,
      Enabledandunrequested => 1);

   --  Request status for RR[2] register
   type REQSTATUS_RR2_Field is
     (
      --  RR[2] register is not enabled, or are already requesting reload
      Disabledorrequested,
      --  RR[2] register is enabled, and are not yet requesting reload
      Enabledandunrequested)
     with Size => 1;
   for REQSTATUS_RR2_Field use
     (Disabledorrequested => 0,
      Enabledandunrequested => 1);

   --  Request status for RR[3] register
   type REQSTATUS_RR3_Field is
     (
      --  RR[3] register is not enabled, or are already requesting reload
      Disabledorrequested,
      --  RR[3] register is enabled, and are not yet requesting reload
      Enabledandunrequested)
     with Size => 1;
   for REQSTATUS_RR3_Field use
     (Disabledorrequested => 0,
      Enabledandunrequested => 1);

   --  Request status for RR[4] register
   type REQSTATUS_RR4_Field is
     (
      --  RR[4] register is not enabled, or are already requesting reload
      Disabledorrequested,
      --  RR[4] register is enabled, and are not yet requesting reload
      Enabledandunrequested)
     with Size => 1;
   for REQSTATUS_RR4_Field use
     (Disabledorrequested => 0,
      Enabledandunrequested => 1);

   --  Request status for RR[5] register
   type REQSTATUS_RR5_Field is
     (
      --  RR[5] register is not enabled, or are already requesting reload
      Disabledorrequested,
      --  RR[5] register is enabled, and are not yet requesting reload
      Enabledandunrequested)
     with Size => 1;
   for REQSTATUS_RR5_Field use
     (Disabledorrequested => 0,
      Enabledandunrequested => 1);

   --  Request status for RR[6] register
   type REQSTATUS_RR6_Field is
     (
      --  RR[6] register is not enabled, or are already requesting reload
      Disabledorrequested,
      --  RR[6] register is enabled, and are not yet requesting reload
      Enabledandunrequested)
     with Size => 1;
   for REQSTATUS_RR6_Field use
     (Disabledorrequested => 0,
      Enabledandunrequested => 1);

   --  Request status for RR[7] register
   type REQSTATUS_RR7_Field is
     (
      --  RR[7] register is not enabled, or are already requesting reload
      Disabledorrequested,
      --  RR[7] register is enabled, and are not yet requesting reload
      Enabledandunrequested)
     with Size => 1;
   for REQSTATUS_RR7_Field use
     (Disabledorrequested => 0,
      Enabledandunrequested => 1);

   --  Request status
   type REQSTATUS_Register is record
      --  Read-only. Request status for RR[0] register
      RR0           : REQSTATUS_RR0_Field;
      --  Read-only. Request status for RR[1] register
      RR1           : REQSTATUS_RR1_Field;
      --  Read-only. Request status for RR[2] register
      RR2           : REQSTATUS_RR2_Field;
      --  Read-only. Request status for RR[3] register
      RR3           : REQSTATUS_RR3_Field;
      --  Read-only. Request status for RR[4] register
      RR4           : REQSTATUS_RR4_Field;
      --  Read-only. Request status for RR[5] register
      RR5           : REQSTATUS_RR5_Field;
      --  Read-only. Request status for RR[6] register
      RR6           : REQSTATUS_RR6_Field;
      --  Read-only. Request status for RR[7] register
      RR7           : REQSTATUS_RR7_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REQSTATUS_Register use record
      RR0           at 0 range 0 .. 0;
      RR1           at 0 range 1 .. 1;
      RR2           at 0 range 2 .. 2;
      RR3           at 0 range 3 .. 3;
      RR4           at 0 range 4 .. 4;
      RR5           at 0 range 5 .. 5;
      RR6           at 0 range 6 .. 6;
      RR7           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Enable or disable RR[0] register
   type RREN_RR0_Field is
     (
      --  Disable RR[0] register
      Disabled,
      --  Enable RR[0] register
      Enabled)
     with Size => 1;
   for RREN_RR0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable RR[1] register
   type RREN_RR1_Field is
     (
      --  Disable RR[1] register
      Disabled,
      --  Enable RR[1] register
      Enabled)
     with Size => 1;
   for RREN_RR1_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable RR[2] register
   type RREN_RR2_Field is
     (
      --  Disable RR[2] register
      Disabled,
      --  Enable RR[2] register
      Enabled)
     with Size => 1;
   for RREN_RR2_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable RR[3] register
   type RREN_RR3_Field is
     (
      --  Disable RR[3] register
      Disabled,
      --  Enable RR[3] register
      Enabled)
     with Size => 1;
   for RREN_RR3_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable RR[4] register
   type RREN_RR4_Field is
     (
      --  Disable RR[4] register
      Disabled,
      --  Enable RR[4] register
      Enabled)
     with Size => 1;
   for RREN_RR4_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable RR[5] register
   type RREN_RR5_Field is
     (
      --  Disable RR[5] register
      Disabled,
      --  Enable RR[5] register
      Enabled)
     with Size => 1;
   for RREN_RR5_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable RR[6] register
   type RREN_RR6_Field is
     (
      --  Disable RR[6] register
      Disabled,
      --  Enable RR[6] register
      Enabled)
     with Size => 1;
   for RREN_RR6_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable RR[7] register
   type RREN_RR7_Field is
     (
      --  Disable RR[7] register
      Disabled,
      --  Enable RR[7] register
      Enabled)
     with Size => 1;
   for RREN_RR7_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable register for reload request registers
   type RREN_Register is record
      --  Enable or disable RR[0] register
      RR0           : RREN_RR0_Field := Interfaces.NRF52.WDT.Enabled;
      --  Enable or disable RR[1] register
      RR1           : RREN_RR1_Field := Interfaces.NRF52.WDT.Disabled;
      --  Enable or disable RR[2] register
      RR2           : RREN_RR2_Field := Interfaces.NRF52.WDT.Disabled;
      --  Enable or disable RR[3] register
      RR3           : RREN_RR3_Field := Interfaces.NRF52.WDT.Disabled;
      --  Enable or disable RR[4] register
      RR4           : RREN_RR4_Field := Interfaces.NRF52.WDT.Disabled;
      --  Enable or disable RR[5] register
      RR5           : RREN_RR5_Field := Interfaces.NRF52.WDT.Disabled;
      --  Enable or disable RR[6] register
      RR6           : RREN_RR6_Field := Interfaces.NRF52.WDT.Disabled;
      --  Enable or disable RR[7] register
      RR7           : RREN_RR7_Field := Interfaces.NRF52.WDT.Disabled;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RREN_Register use record
      RR0           at 0 range 0 .. 0;
      RR1           at 0 range 1 .. 1;
      RR2           at 0 range 2 .. 2;
      RR3           at 0 range 3 .. 3;
      RR4           at 0 range 4 .. 4;
      RR5           at 0 range 5 .. 5;
      RR6           at 0 range 6 .. 6;
      RR7           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Configure the watchdog to either be paused, or kept running, while the
   --  CPU is sleeping
   type CONFIG_SLEEP_Field is
     (
      --  Pause watchdog while the CPU is sleeping
      Pause,
      --  Keep the watchdog running while the CPU is sleeping
      Run)
     with Size => 1;
   for CONFIG_SLEEP_Field use
     (Pause => 0,
      Run => 1);

   --  Configure the watchdog to either be paused, or kept running, while the
   --  CPU is halted by the debugger
   type CONFIG_HALT_Field is
     (
      --  Pause watchdog while the CPU is halted by the debugger
      Pause,
      --  Keep the watchdog running while the CPU is halted by the debugger
      Run)
     with Size => 1;
   for CONFIG_HALT_Field use
     (Pause => 0,
      Run => 1);

   --  Configuration register
   type CONFIG_Register is record
      --  Configure the watchdog to either be paused, or kept running, while
      --  the CPU is sleeping
      SLEEP         : CONFIG_SLEEP_Field := Interfaces.NRF52.WDT.Run;
      --  unspecified
      Reserved_1_2  : Interfaces.NRF52.UInt2 := 16#0#;
      --  Configure the watchdog to either be paused, or kept running, while
      --  the CPU is halted by the debugger
      HALT          : CONFIG_HALT_Field := Interfaces.NRF52.WDT.Pause;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      SLEEP         at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      HALT          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Description collection[0]: Reload request 0

   --  Description collection[0]: Reload request 0
   type RR_Registers is array (0 .. 7) of Interfaces.NRF52.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog Timer
   type WDT_Peripheral is record
      --  Start the watchdog
      TASKS_START    : aliased Interfaces.NRF52.UInt32;
      --  Watchdog timeout
      EVENTS_TIMEOUT : aliased Interfaces.NRF52.UInt32;
      --  Enable interrupt
      INTENSET       : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR       : aliased INTENCLR_Register;
      --  Run status
      RUNSTATUS      : aliased RUNSTATUS_Register;
      --  Request status
      REQSTATUS      : aliased REQSTATUS_Register;
      --  Counter reload value
      CRV            : aliased Interfaces.NRF52.UInt32;
      --  Enable register for reload request registers
      RREN           : aliased RREN_Register;
      --  Configuration register
      CONFIG         : aliased CONFIG_Register;
      --  Description collection[0]: Reload request 0
      RR             : aliased RR_Registers;
   end record
     with Volatile;

   for WDT_Peripheral use record
      TASKS_START    at 16#0# range 0 .. 31;
      EVENTS_TIMEOUT at 16#100# range 0 .. 31;
      INTENSET       at 16#304# range 0 .. 31;
      INTENCLR       at 16#308# range 0 .. 31;
      RUNSTATUS      at 16#400# range 0 .. 31;
      REQSTATUS      at 16#404# range 0 .. 31;
      CRV            at 16#504# range 0 .. 31;
      RREN           at 16#508# range 0 .. 31;
      CONFIG         at 16#50C# range 0 .. 31;
      RR             at 16#600# range 0 .. 255;
   end record;

   --  Watchdog Timer
   WDT_Periph : aliased WDT_Peripheral
     with Import, Address => System'To_Address (16#40010000#);

end Interfaces.NRF52.WDT;
