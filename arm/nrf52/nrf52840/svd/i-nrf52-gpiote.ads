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

package Interfaces.NRF52.GPIOTE is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Description collection[0]: Task for writing to pin specified in CONFIG[0].PSEL. Action on pin is configured in CONFIG[0].POLARITY.

   --  Description collection[0]: Task for writing to pin specified in
   --  CONFIG[0].PSEL. Action on pin is configured in CONFIG[0].POLARITY.
   type TASKS_OUT_Registers is array (0 .. 7) of Interfaces.NRF52.UInt32
     with Volatile;

   --  Description collection[0]: Task for writing to pin specified in CONFIG[0].PSEL. Action on pin is to set it high.

   --  Description collection[0]: Task for writing to pin specified in
   --  CONFIG[0].PSEL. Action on pin is to set it high.
   type TASKS_SET_Registers is array (0 .. 7) of Interfaces.NRF52.UInt32
     with Volatile;

   --  Description collection[0]: Task for writing to pin specified in CONFIG[0].PSEL. Action on pin is to set it low.

   --  Description collection[0]: Task for writing to pin specified in
   --  CONFIG[0].PSEL. Action on pin is to set it low.
   type TASKS_CLR_Registers is array (0 .. 7) of Interfaces.NRF52.UInt32
     with Volatile;

   --  Description collection[0]: Event generated from pin specified in CONFIG[0].PSEL

   --  Description collection[0]: Event generated from pin specified in
   --  CONFIG[0].PSEL
   type EVENTS_IN_Registers is array (0 .. 7) of Interfaces.NRF52.UInt32
     with Volatile;

   --  Write '1' to Enable interrupt for IN[0] event
   type INTENSET_IN0_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_IN0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for IN[0] event
   type INTENSET_IN0_Field_1 is
     (
      --  Reset value for the field
      Intenset_In0_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_IN0_Field_1 use
     (Intenset_In0_Field_Reset => 0,
      Set => 1);

   --  INTENSET_IN array
   type INTENSET_IN_Field_Array is array (0 .. 7) of INTENSET_IN0_Field_1
     with Component_Size => 1, Size => 8;

   --  Type definition for INTENSET_IN
   type INTENSET_IN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IN as a value
            Val : Interfaces.NRF52.Byte;
         when True =>
            --  IN as an array
            Arr : INTENSET_IN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTENSET_IN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Write '1' to Enable interrupt for PORT event
   type INTENSET_PORT_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_PORT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for PORT event
   type INTENSET_PORT_Field_1 is
     (
      --  Reset value for the field
      Intenset_Port_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_PORT_Field_1 use
     (Intenset_Port_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to Enable interrupt for IN[0] event
      IN_k          : INTENSET_IN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_30 : Interfaces.NRF52.UInt23 := 16#0#;
      --  Write '1' to Enable interrupt for PORT event
      PORT          : INTENSET_PORT_Field_1 := Intenset_Port_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      IN_k          at 0 range 0 .. 7;
      Reserved_8_30 at 0 range 8 .. 30;
      PORT          at 0 range 31 .. 31;
   end record;

   --  Write '1' to Disable interrupt for IN[0] event
   type INTENCLR_IN0_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_IN0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for IN[0] event
   type INTENCLR_IN0_Field_1 is
     (
      --  Reset value for the field
      Intenclr_In0_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_IN0_Field_1 use
     (Intenclr_In0_Field_Reset => 0,
      Clear => 1);

   --  INTENCLR_IN array
   type INTENCLR_IN_Field_Array is array (0 .. 7) of INTENCLR_IN0_Field_1
     with Component_Size => 1, Size => 8;

   --  Type definition for INTENCLR_IN
   type INTENCLR_IN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IN as a value
            Val : Interfaces.NRF52.Byte;
         when True =>
            --  IN as an array
            Arr : INTENCLR_IN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTENCLR_IN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Write '1' to Disable interrupt for PORT event
   type INTENCLR_PORT_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_PORT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for PORT event
   type INTENCLR_PORT_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Port_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_PORT_Field_1 use
     (Intenclr_Port_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to Disable interrupt for IN[0] event
      IN_k          : INTENCLR_IN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_30 : Interfaces.NRF52.UInt23 := 16#0#;
      --  Write '1' to Disable interrupt for PORT event
      PORT          : INTENCLR_PORT_Field_1 := Intenclr_Port_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      IN_k          at 0 range 0 .. 7;
      Reserved_8_30 at 0 range 8 .. 30;
      PORT          at 0 range 31 .. 31;
   end record;

   --  Mode
   type CONFIG_MODE_Field is
     (
      --  Disabled. Pin specified by PSEL will not be acquired by the GPIOTE
      --  module.
      Disabled,
      --  Event mode
      Event,
      --  Task mode
      Task_k)
     with Size => 2;
   for CONFIG_MODE_Field use
     (Disabled => 0,
      Event => 1,
      Task_k => 3);

   subtype CONFIG_PSEL_Field is Interfaces.NRF52.UInt5;
   subtype CONFIG_PORT_Field is Interfaces.NRF52.Bit;

   --  When In task mode: Operation to be performed on output when OUT[n] task
   --  is triggered. When In event mode: Operation on input that shall trigger
   --  IN[n] event.
   type CONFIG_POLARITY_Field is
     (
      --  Task mode: No effect on pin from OUT[n] task. Event mode: no IN[n]
      --  event generated on pin activity.
      None,
      --  Task mode: Set pin from OUT[n] task. Event mode: Generate IN[n] event
      --  when rising edge on pin.
      Lotohi,
      --  Task mode: Clear pin from OUT[n] task. Event mode: Generate IN[n]
      --  event when falling edge on pin.
      Hitolo,
      --  Task mode: Toggle pin from OUT[n]. Event mode: Generate IN[n] when
      --  any change on pin.
      Toggle)
     with Size => 2;
   for CONFIG_POLARITY_Field use
     (None => 0,
      Lotohi => 1,
      Hitolo => 2,
      Toggle => 3);

   --  When in task mode: Initial value of the output when the GPIOTE channel
   --  is configured. When in event mode: No effect.
   type CONFIG_OUTINIT_Field is
     (
      --  Task mode: Initial value of pin before task triggering is low
      Low,
      --  Task mode: Initial value of pin before task triggering is high
      High)
     with Size => 1;
   for CONFIG_OUTINIT_Field use
     (Low => 0,
      High => 1);

   --  Description collection[0]: Configuration for OUT[n], SET[n] and CLR[n]
   --  tasks and IN[n] event
   type CONFIG_Register is record
      --  Mode
      MODE           : CONFIG_MODE_Field := Interfaces.NRF52.GPIOTE.Disabled;
      --  unspecified
      Reserved_2_7   : Interfaces.NRF52.UInt6 := 16#0#;
      --  GPIO number associated with SET[n], CLR[n] and OUT[n] tasks and IN[n]
      --  event
      PSEL           : CONFIG_PSEL_Field := 16#0#;
      --  Port number
      PORT           : CONFIG_PORT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.NRF52.UInt2 := 16#0#;
      --  When In task mode: Operation to be performed on output when OUT[n]
      --  task is triggered. When In event mode: Operation on input that shall
      --  trigger IN[n] event.
      POLARITY       : CONFIG_POLARITY_Field := Interfaces.NRF52.GPIOTE.None;
      --  unspecified
      Reserved_18_19 : Interfaces.NRF52.UInt2 := 16#0#;
      --  When in task mode: Initial value of the output when the GPIOTE
      --  channel is configured. When in event mode: No effect.
      OUTINIT        : CONFIG_OUTINIT_Field := Interfaces.NRF52.GPIOTE.Low;
      --  unspecified
      Reserved_21_31 : Interfaces.NRF52.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      MODE           at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      PSEL           at 0 range 8 .. 12;
      PORT           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      POLARITY       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      OUTINIT        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Description collection[0]: Configuration for OUT[n], SET[n] and CLR[n]
   --  tasks and IN[n] event
   type CONFIG_Registers is array (0 .. 7) of CONFIG_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  GPIO Tasks and Events
   type GPIOTE_Peripheral is record
      --  Description collection[0]: Task for writing to pin specified in
      --  CONFIG[0].PSEL. Action on pin is configured in CONFIG[0].POLARITY.
      TASKS_OUT   : aliased TASKS_OUT_Registers;
      --  Description collection[0]: Task for writing to pin specified in
      --  CONFIG[0].PSEL. Action on pin is to set it high.
      TASKS_SET   : aliased TASKS_SET_Registers;
      --  Description collection[0]: Task for writing to pin specified in
      --  CONFIG[0].PSEL. Action on pin is to set it low.
      TASKS_CLR   : aliased TASKS_CLR_Registers;
      --  Description collection[0]: Event generated from pin specified in
      --  CONFIG[0].PSEL
      EVENTS_IN   : aliased EVENTS_IN_Registers;
      --  Event generated from multiple input GPIO pins with SENSE mechanism
      --  enabled
      EVENTS_PORT : aliased Interfaces.NRF52.UInt32;
      --  Enable interrupt
      INTENSET    : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR    : aliased INTENCLR_Register;
      --  Description collection[0]: Configuration for OUT[n], SET[n] and
      --  CLR[n] tasks and IN[n] event
      CONFIG      : aliased CONFIG_Registers;
   end record
     with Volatile;

   for GPIOTE_Peripheral use record
      TASKS_OUT   at 16#0# range 0 .. 255;
      TASKS_SET   at 16#30# range 0 .. 255;
      TASKS_CLR   at 16#60# range 0 .. 255;
      EVENTS_IN   at 16#100# range 0 .. 255;
      EVENTS_PORT at 16#17C# range 0 .. 31;
      INTENSET    at 16#304# range 0 .. 31;
      INTENCLR    at 16#308# range 0 .. 31;
      CONFIG      at 16#510# range 0 .. 255;
   end record;

   --  GPIO Tasks and Events
   GPIOTE_Periph : aliased GPIOTE_Peripheral
     with Import, Address => System'To_Address (16#40006000#);

end Interfaces.NRF52.GPIOTE;
