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

package Interfaces.NRF52.COMP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Shortcut between READY event and SAMPLE task
   type SHORTS_READY_SAMPLE_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_READY_SAMPLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between READY event and STOP task
   type SHORTS_READY_STOP_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_READY_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between DOWN event and STOP task
   type SHORTS_DOWN_STOP_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_DOWN_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between UP event and STOP task
   type SHORTS_UP_STOP_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_UP_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between CROSS event and STOP task
   type SHORTS_CROSS_STOP_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_CROSS_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut register
   type SHORTS_Register is record
      --  Shortcut between READY event and SAMPLE task
      READY_SAMPLE  : SHORTS_READY_SAMPLE_Field :=
                       Interfaces.NRF52.COMP.Disabled;
      --  Shortcut between READY event and STOP task
      READY_STOP    : SHORTS_READY_STOP_Field :=
                       Interfaces.NRF52.COMP.Disabled;
      --  Shortcut between DOWN event and STOP task
      DOWN_STOP     : SHORTS_DOWN_STOP_Field :=
                       Interfaces.NRF52.COMP.Disabled;
      --  Shortcut between UP event and STOP task
      UP_STOP       : SHORTS_UP_STOP_Field := Interfaces.NRF52.COMP.Disabled;
      --  Shortcut between CROSS event and STOP task
      CROSS_STOP    : SHORTS_CROSS_STOP_Field :=
                       Interfaces.NRF52.COMP.Disabled;
      --  unspecified
      Reserved_5_31 : Interfaces.NRF52.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      READY_SAMPLE  at 0 range 0 .. 0;
      READY_STOP    at 0 range 1 .. 1;
      DOWN_STOP     at 0 range 2 .. 2;
      UP_STOP       at 0 range 3 .. 3;
      CROSS_STOP    at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Enable or disable interrupt for READY event
   type INTEN_READY_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_READY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for DOWN event
   type INTEN_DOWN_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_DOWN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for UP event
   type INTEN_UP_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_UP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for CROSS event
   type INTEN_CROSS_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CROSS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  Enable or disable interrupt for READY event
      READY         : INTEN_READY_Field := Interfaces.NRF52.COMP.Disabled;
      --  Enable or disable interrupt for DOWN event
      DOWN          : INTEN_DOWN_Field := Interfaces.NRF52.COMP.Disabled;
      --  Enable or disable interrupt for UP event
      UP            : INTEN_UP_Field := Interfaces.NRF52.COMP.Disabled;
      --  Enable or disable interrupt for CROSS event
      CROSS         : INTEN_CROSS_Field := Interfaces.NRF52.COMP.Disabled;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      READY         at 0 range 0 .. 0;
      DOWN          at 0 range 1 .. 1;
      UP            at 0 range 2 .. 2;
      CROSS         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Write '1' to Enable interrupt for READY event
   type INTENSET_READY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_READY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for READY event
   type INTENSET_READY_Field_1 is
     (
      --  Reset value for the field
      Intenset_Ready_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_READY_Field_1 use
     (Intenset_Ready_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for DOWN event
   type INTENSET_DOWN_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_DOWN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for DOWN event
   type INTENSET_DOWN_Field_1 is
     (
      --  Reset value for the field
      Intenset_Down_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_DOWN_Field_1 use
     (Intenset_Down_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for UP event
   type INTENSET_UP_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_UP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for UP event
   type INTENSET_UP_Field_1 is
     (
      --  Reset value for the field
      Intenset_Up_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_UP_Field_1 use
     (Intenset_Up_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for CROSS event
   type INTENSET_CROSS_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CROSS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for CROSS event
   type INTENSET_CROSS_Field_1 is
     (
      --  Reset value for the field
      Intenset_Cross_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CROSS_Field_1 use
     (Intenset_Cross_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to Enable interrupt for READY event
      READY         : INTENSET_READY_Field_1 := Intenset_Ready_Field_Reset;
      --  Write '1' to Enable interrupt for DOWN event
      DOWN          : INTENSET_DOWN_Field_1 := Intenset_Down_Field_Reset;
      --  Write '1' to Enable interrupt for UP event
      UP            : INTENSET_UP_Field_1 := Intenset_Up_Field_Reset;
      --  Write '1' to Enable interrupt for CROSS event
      CROSS         : INTENSET_CROSS_Field_1 := Intenset_Cross_Field_Reset;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      READY         at 0 range 0 .. 0;
      DOWN          at 0 range 1 .. 1;
      UP            at 0 range 2 .. 2;
      CROSS         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Write '1' to Disable interrupt for READY event
   type INTENCLR_READY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_READY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for READY event
   type INTENCLR_READY_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Ready_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_READY_Field_1 use
     (Intenclr_Ready_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for DOWN event
   type INTENCLR_DOWN_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_DOWN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for DOWN event
   type INTENCLR_DOWN_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Down_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_DOWN_Field_1 use
     (Intenclr_Down_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for UP event
   type INTENCLR_UP_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_UP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for UP event
   type INTENCLR_UP_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Up_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_UP_Field_1 use
     (Intenclr_Up_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for CROSS event
   type INTENCLR_CROSS_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CROSS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for CROSS event
   type INTENCLR_CROSS_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Cross_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CROSS_Field_1 use
     (Intenclr_Cross_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to Disable interrupt for READY event
      READY         : INTENCLR_READY_Field_1 := Intenclr_Ready_Field_Reset;
      --  Write '1' to Disable interrupt for DOWN event
      DOWN          : INTENCLR_DOWN_Field_1 := Intenclr_Down_Field_Reset;
      --  Write '1' to Disable interrupt for UP event
      UP            : INTENCLR_UP_Field_1 := Intenclr_Up_Field_Reset;
      --  Write '1' to Disable interrupt for CROSS event
      CROSS         : INTENCLR_CROSS_Field_1 := Intenclr_Cross_Field_Reset;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      READY         at 0 range 0 .. 0;
      DOWN          at 0 range 1 .. 1;
      UP            at 0 range 2 .. 2;
      CROSS         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Result of last compare. Decision point SAMPLE task.
   type RESULT_RESULT_Field is
     (
      --  Input voltage is below the threshold (VIN+ &lt; VIN-)
      Below,
      --  Input voltage is above the threshold (VIN+ &gt; VIN-)
      Above)
     with Size => 1;
   for RESULT_RESULT_Field use
     (Below => 0,
      Above => 1);

   --  Compare result
   type RESULT_Register is record
      --  Read-only. Result of last compare. Decision point SAMPLE task.
      RESULT        : RESULT_RESULT_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESULT_Register use record
      RESULT        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Enable or disable COMP
   type ENABLE_ENABLE_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 2;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 2);

   --  COMP enable
   type ENABLE_Register is record
      --  Enable or disable COMP
      ENABLE        : ENABLE_ENABLE_Field := Interfaces.NRF52.COMP.Disabled;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Analog pin select
   type PSEL_PSEL_Field is
     (
      --  AIN0 selected as analog input
      Analoginput0,
      --  AIN1 selected as analog input
      Analoginput1,
      --  AIN2 selected as analog input
      Analoginput2,
      --  AIN3 selected as analog input
      Analoginput3,
      --  AIN4 selected as analog input
      Analoginput4,
      --  AIN5 selected as analog input
      Analoginput5,
      --  AIN6 selected as analog input
      Analoginput6,
      --  AIN7 selected as analog input
      Analoginput7)
     with Size => 3;
   for PSEL_PSEL_Field use
     (Analoginput0 => 0,
      Analoginput1 => 1,
      Analoginput2 => 2,
      Analoginput3 => 3,
      Analoginput4 => 4,
      Analoginput5 => 5,
      Analoginput6 => 6,
      Analoginput7 => 7);

   --  Pin select
   type PSEL_Register is record
      --  Analog pin select
      PSEL          : PSEL_PSEL_Field := Interfaces.NRF52.COMP.Analoginput0;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSEL_Register use record
      PSEL          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Reference select
   type REFSEL_REFSEL_Field is
     (
      --  VREF = internal 1.2 V reference (VDD &gt;= 1.7 V)
      Int1V2,
      --  VREF = internal 1.8 V reference (VDD &gt;= VREF + 0.2 V)
      Int1V8,
      --  VREF = internal 2.4 V reference (VDD &gt;= VREF + 0.2 V)
      Int2V4,
      --  VREF = VDD
      Vdd,
      --  VREF = AREF (VDD &gt;= VREF &gt;= AREFMIN)
      Aref)
     with Size => 3;
   for REFSEL_REFSEL_Field use
     (Int1V2 => 0,
      Int1V8 => 1,
      Int2V4 => 2,
      Vdd => 4,
      Aref => 5);

   --  Reference source select for single-ended mode
   type REFSEL_Register is record
      --  Reference select
      REFSEL        : REFSEL_REFSEL_Field := Interfaces.NRF52.COMP.Vdd;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REFSEL_Register use record
      REFSEL        at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  External analog reference select
   type EXTREFSEL_EXTREFSEL_Field is
     (
      --  Use AIN0 as external analog reference
      Analogreference0,
      --  Use AIN1 as external analog reference
      Analogreference1,
      --  Use AIN2 as external analog reference
      Analogreference2,
      --  Use AIN3 as external analog reference
      Analogreference3,
      --  Use AIN4 as external analog reference
      Analogreference4,
      --  Use AIN5 as external analog reference
      Analogreference5,
      --  Use AIN6 as external analog reference
      Analogreference6,
      --  Use AIN7 as external analog reference
      Analogreference7)
     with Size => 3;
   for EXTREFSEL_EXTREFSEL_Field use
     (Analogreference0 => 0,
      Analogreference1 => 1,
      Analogreference2 => 2,
      Analogreference3 => 3,
      Analogreference4 => 4,
      Analogreference5 => 5,
      Analogreference6 => 6,
      Analogreference7 => 7);

   --  External reference select
   type EXTREFSEL_Register is record
      --  External analog reference select
      EXTREFSEL     : EXTREFSEL_EXTREFSEL_Field :=
                       Interfaces.NRF52.COMP.Analogreference0;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTREFSEL_Register use record
      EXTREFSEL     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype TH_THDOWN_Field is Interfaces.NRF52.UInt6;
   subtype TH_THUP_Field is Interfaces.NRF52.UInt6;

   --  Threshold configuration for hysteresis unit
   type TH_Register is record
      --  VDOWN = (THDOWN+1)/64*VREF
      THDOWN         : TH_THDOWN_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.NRF52.UInt2 := 16#0#;
      --  VUP = (THUP+1)/64*VREF
      THUP           : TH_THUP_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.NRF52.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TH_Register use record
      THDOWN         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      THUP           at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Speed and power modes
   type MODE_SP_Field is
     (
      --  Low-power mode
      Low,
      --  Normal mode
      Normal,
      --  High-speed mode
      High)
     with Size => 2;
   for MODE_SP_Field use
     (Low => 0,
      Normal => 1,
      High => 2);

   --  Main operation modes
   type MODE_MAIN_Field is
     (
      --  Single-ended mode
      Se,
      --  Differential mode
      Diff)
     with Size => 1;
   for MODE_MAIN_Field use
     (Se => 0,
      Diff => 1);

   --  Mode configuration
   type MODE_Register is record
      --  Speed and power modes
      SP            : MODE_SP_Field := Interfaces.NRF52.COMP.Low;
      --  unspecified
      Reserved_2_7  : Interfaces.NRF52.UInt6 := 16#0#;
      --  Main operation modes
      MAIN          : MODE_MAIN_Field := Interfaces.NRF52.COMP.Se;
      --  unspecified
      Reserved_9_31 : Interfaces.NRF52.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      SP            at 0 range 0 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      MAIN          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Comparator hysteresis
   type HYST_HYST_Field is
     (
      --  Comparator hysteresis disabled
      Nohyst,
      --  Comparator hysteresis enabled
      Hyst50MV)
     with Size => 1;
   for HYST_HYST_Field use
     (Nohyst => 0,
      Hyst50MV => 1);

   --  Comparator hysteresis enable
   type HYST_Register is record
      --  Comparator hysteresis
      HYST          : HYST_HYST_Field := Interfaces.NRF52.COMP.Nohyst;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HYST_Register use record
      HYST          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Comparator
   type COMP_Peripheral is record
      --  Start comparator
      TASKS_START  : aliased Interfaces.NRF52.UInt32;
      --  Stop comparator
      TASKS_STOP   : aliased Interfaces.NRF52.UInt32;
      --  Sample comparator value
      TASKS_SAMPLE : aliased Interfaces.NRF52.UInt32;
      --  COMP is ready and output is valid
      EVENTS_READY : aliased Interfaces.NRF52.UInt32;
      --  Downward crossing
      EVENTS_DOWN  : aliased Interfaces.NRF52.UInt32;
      --  Upward crossing
      EVENTS_UP    : aliased Interfaces.NRF52.UInt32;
      --  Downward or upward crossing
      EVENTS_CROSS : aliased Interfaces.NRF52.UInt32;
      --  Shortcut register
      SHORTS       : aliased SHORTS_Register;
      --  Enable or disable interrupt
      INTEN        : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET     : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR     : aliased INTENCLR_Register;
      --  Compare result
      RESULT       : aliased RESULT_Register;
      --  COMP enable
      ENABLE       : aliased ENABLE_Register;
      --  Pin select
      PSEL         : aliased PSEL_Register;
      --  Reference source select for single-ended mode
      REFSEL       : aliased REFSEL_Register;
      --  External reference select
      EXTREFSEL    : aliased EXTREFSEL_Register;
      --  Threshold configuration for hysteresis unit
      TH           : aliased TH_Register;
      --  Mode configuration
      MODE         : aliased MODE_Register;
      --  Comparator hysteresis enable
      HYST         : aliased HYST_Register;
   end record
     with Volatile;

   for COMP_Peripheral use record
      TASKS_START  at 16#0# range 0 .. 31;
      TASKS_STOP   at 16#4# range 0 .. 31;
      TASKS_SAMPLE at 16#8# range 0 .. 31;
      EVENTS_READY at 16#100# range 0 .. 31;
      EVENTS_DOWN  at 16#104# range 0 .. 31;
      EVENTS_UP    at 16#108# range 0 .. 31;
      EVENTS_CROSS at 16#10C# range 0 .. 31;
      SHORTS       at 16#200# range 0 .. 31;
      INTEN        at 16#300# range 0 .. 31;
      INTENSET     at 16#304# range 0 .. 31;
      INTENCLR     at 16#308# range 0 .. 31;
      RESULT       at 16#400# range 0 .. 31;
      ENABLE       at 16#500# range 0 .. 31;
      PSEL         at 16#504# range 0 .. 31;
      REFSEL       at 16#508# range 0 .. 31;
      EXTREFSEL    at 16#50C# range 0 .. 31;
      TH           at 16#530# range 0 .. 31;
      MODE         at 16#534# range 0 .. 31;
      HYST         at 16#538# range 0 .. 31;
   end record;

   --  Comparator
   COMP_Periph : aliased COMP_Peripheral
     with Import, Address => System'To_Address (16#40013000#);

end Interfaces.NRF52.COMP;
