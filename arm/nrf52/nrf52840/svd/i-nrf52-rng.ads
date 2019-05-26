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

package Interfaces.NRF52.RNG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Shortcut between VALRDY event and STOP task
   type SHORTS_VALRDY_STOP_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_VALRDY_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut register
   type SHORTS_Register is record
      --  Shortcut between VALRDY event and STOP task
      VALRDY_STOP   : SHORTS_VALRDY_STOP_Field :=
                       Interfaces.NRF52.RNG.Disabled;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      VALRDY_STOP   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Write '1' to Enable interrupt for VALRDY event
   type INTENSET_VALRDY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_VALRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for VALRDY event
   type INTENSET_VALRDY_Field_1 is
     (
      --  Reset value for the field
      Intenset_Valrdy_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_VALRDY_Field_1 use
     (Intenset_Valrdy_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to Enable interrupt for VALRDY event
      VALRDY        : INTENSET_VALRDY_Field_1 := Intenset_Valrdy_Field_Reset;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      VALRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Write '1' to Disable interrupt for VALRDY event
   type INTENCLR_VALRDY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_VALRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for VALRDY event
   type INTENCLR_VALRDY_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Valrdy_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_VALRDY_Field_1 use
     (Intenclr_Valrdy_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to Disable interrupt for VALRDY event
      VALRDY        : INTENCLR_VALRDY_Field_1 := Intenclr_Valrdy_Field_Reset;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      VALRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Bias correction
   type CONFIG_DERCEN_Field is
     (
      --  Disabled
      Disabled,
      --  Enabled
      Enabled)
     with Size => 1;
   for CONFIG_DERCEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Configuration register
   type CONFIG_Register is record
      --  Bias correction
      DERCEN        : CONFIG_DERCEN_Field := Interfaces.NRF52.RNG.Disabled;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      DERCEN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype VALUE_VALUE_Field is Interfaces.NRF52.Byte;

   --  Output random number
   type VALUE_Register is record
      --  Read-only. Generated random number
      VALUE         : VALUE_VALUE_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VALUE_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Random Number Generator
   type RNG_Peripheral is record
      --  Task starting the random number generator
      TASKS_START   : aliased Interfaces.NRF52.UInt32;
      --  Task stopping the random number generator
      TASKS_STOP    : aliased Interfaces.NRF52.UInt32;
      --  Event being generated for every new random number written to the
      --  VALUE register
      EVENTS_VALRDY : aliased Interfaces.NRF52.UInt32;
      --  Shortcut register
      SHORTS        : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET      : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR      : aliased INTENCLR_Register;
      --  Configuration register
      CONFIG        : aliased CONFIG_Register;
      --  Output random number
      VALUE         : aliased VALUE_Register;
   end record
     with Volatile;

   for RNG_Peripheral use record
      TASKS_START   at 16#0# range 0 .. 31;
      TASKS_STOP    at 16#4# range 0 .. 31;
      EVENTS_VALRDY at 16#100# range 0 .. 31;
      SHORTS        at 16#200# range 0 .. 31;
      INTENSET      at 16#304# range 0 .. 31;
      INTENCLR      at 16#308# range 0 .. 31;
      CONFIG        at 16#504# range 0 .. 31;
      VALUE         at 16#508# range 0 .. 31;
   end record;

   --  Random Number Generator
   RNG_Periph : aliased RNG_Peripheral
     with Import, Address => System'To_Address (16#4000D000#);

end Interfaces.NRF52.RNG;
