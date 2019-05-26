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

package Interfaces.NRF52.PDM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Enable or disable interrupt for STARTED event
   type INTEN_STARTED_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_STARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for STOPPED event
   type INTEN_STOPPED_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_STOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for END event
   type INTEN_END_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_END_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  Enable or disable interrupt for STARTED event
      STARTED       : INTEN_STARTED_Field := Interfaces.NRF52.PDM.Disabled;
      --  Enable or disable interrupt for STOPPED event
      STOPPED       : INTEN_STOPPED_Field := Interfaces.NRF52.PDM.Disabled;
      --  Enable or disable interrupt for END event
      END_k         : INTEN_END_Field := Interfaces.NRF52.PDM.Disabled;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      STARTED       at 0 range 0 .. 0;
      STOPPED       at 0 range 1 .. 1;
      END_k         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Write '1' to Enable interrupt for STARTED event
   type INTENSET_STARTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_STARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for STARTED event
   type INTENSET_STARTED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Started_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_STARTED_Field_1 use
     (Intenset_Started_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for STOPPED event
   type INTENSET_STOPPED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_STOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for STOPPED event
   type INTENSET_STOPPED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Stopped_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_STOPPED_Field_1 use
     (Intenset_Stopped_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for END event
   type INTENSET_END_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_END_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for END event
   type INTENSET_END_Field_1 is
     (
      --  Reset value for the field
      Intenset_End_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_END_Field_1 use
     (Intenset_End_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to Enable interrupt for STARTED event
      STARTED       : INTENSET_STARTED_Field_1 :=
                       Intenset_Started_Field_Reset;
      --  Write '1' to Enable interrupt for STOPPED event
      STOPPED       : INTENSET_STOPPED_Field_1 :=
                       Intenset_Stopped_Field_Reset;
      --  Write '1' to Enable interrupt for END event
      END_k         : INTENSET_END_Field_1 := Intenset_End_Field_Reset;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      STARTED       at 0 range 0 .. 0;
      STOPPED       at 0 range 1 .. 1;
      END_k         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Write '1' to Disable interrupt for STARTED event
   type INTENCLR_STARTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_STARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for STARTED event
   type INTENCLR_STARTED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Started_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_STARTED_Field_1 use
     (Intenclr_Started_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for STOPPED event
   type INTENCLR_STOPPED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_STOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for STOPPED event
   type INTENCLR_STOPPED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Stopped_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_STOPPED_Field_1 use
     (Intenclr_Stopped_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for END event
   type INTENCLR_END_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_END_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for END event
   type INTENCLR_END_Field_1 is
     (
      --  Reset value for the field
      Intenclr_End_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_END_Field_1 use
     (Intenclr_End_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to Disable interrupt for STARTED event
      STARTED       : INTENCLR_STARTED_Field_1 :=
                       Intenclr_Started_Field_Reset;
      --  Write '1' to Disable interrupt for STOPPED event
      STOPPED       : INTENCLR_STOPPED_Field_1 :=
                       Intenclr_Stopped_Field_Reset;
      --  Write '1' to Disable interrupt for END event
      END_k         : INTENCLR_END_Field_1 := Intenclr_End_Field_Reset;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      STARTED       at 0 range 0 .. 0;
      STOPPED       at 0 range 1 .. 1;
      END_k         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Enable or disable PDM module
   type ENABLE_ENABLE_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  PDM module enable register
   type ENABLE_Register is record
      --  Enable or disable PDM module
      ENABLE        : ENABLE_ENABLE_Field := Interfaces.NRF52.PDM.Disabled;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Mono or stereo operation
   type MODE_OPERATION_Field is
     (
      --  Sample and store one pair (Left + Right) of 16bit samples per RAM
      --  word R=[31:16]; L=[15:0]
      Stereo,
      --  Sample and store two successive Left samples (16 bit each) per RAM
      --  word L1=[31:16]; L0=[15:0]
      Mono)
     with Size => 1;
   for MODE_OPERATION_Field use
     (Stereo => 0,
      Mono => 1);

   --  Defines on which PDM_CLK edge Left (or mono) is sampled
   type MODE_EDGE_Field is
     (
      --  Left (or mono) is sampled on falling edge of PDM_CLK
      Leftfalling,
      --  Left (or mono) is sampled on rising edge of PDM_CLK
      Leftrising)
     with Size => 1;
   for MODE_EDGE_Field use
     (Leftfalling => 0,
      Leftrising => 1);

   --  Defines the routing of the connected PDM microphones' signals
   type MODE_Register is record
      --  Mono or stereo operation
      OPERATION     : MODE_OPERATION_Field := Interfaces.NRF52.PDM.Stereo;
      --  Defines on which PDM_CLK edge Left (or mono) is sampled
      EDGE          : MODE_EDGE_Field := Interfaces.NRF52.PDM.Leftfalling;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      OPERATION     at 0 range 0 .. 0;
      EDGE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Left output gain adjustment, in 0.5 dB steps, around the default module
   --  gain (see electrical parameters) 0x00 -20 dB gain adjust 0x01 -19.5 dB
   --  gain adjust (...) 0x27 -0.5 dB gain adjust 0x28 0 dB gain adjust 0x29
   --  +0.5 dB gain adjust (...) 0x4F +19.5 dB gain adjust 0x50 +20 dB gain
   --  adjust
   type GAINL_GAINL_Field is
     (
      --  -20dB gain adjustment (minimum)
      Mingain,
      --  0dB gain adjustment ('2500 RMS' requirement)
      Defaultgain,
      --  +20dB gain adjustment (maximum)
      Maxgain)
     with Size => 7;
   for GAINL_GAINL_Field use
     (Mingain => 0,
      Defaultgain => 40,
      Maxgain => 80);

   --  Left output gain adjustment
   type GAINL_Register is record
      --  Left output gain adjustment, in 0.5 dB steps, around the default
      --  module gain (see electrical parameters) 0x00 -20 dB gain adjust 0x01
      --  -19.5 dB gain adjust (...) 0x27 -0.5 dB gain adjust 0x28 0 dB gain
      --  adjust 0x29 +0.5 dB gain adjust (...) 0x4F +19.5 dB gain adjust 0x50
      --  +20 dB gain adjust
      GAINL         : GAINL_GAINL_Field := Interfaces.NRF52.PDM.Defaultgain;
      --  unspecified
      Reserved_7_31 : Interfaces.NRF52.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GAINL_Register use record
      GAINL         at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Right output gain adjustment, in 0.5 dB steps, around the default module
   --  gain (see electrical parameters)
   type GAINR_GAINR_Field is
     (
      --  -20dB gain adjustment (minimum)
      Mingain,
      --  0dB gain adjustment ('2500 RMS' requirement)
      Defaultgain,
      --  +20dB gain adjustment (maximum)
      Maxgain)
     with Size => 8;
   for GAINR_GAINR_Field use
     (Mingain => 0,
      Defaultgain => 40,
      Maxgain => 80);

   --  Right output gain adjustment
   type GAINR_Register is record
      --  Right output gain adjustment, in 0.5 dB steps, around the default
      --  module gain (see electrical parameters)
      GAINR         : GAINR_GAINR_Field := Interfaces.NRF52.PDM.Defaultgain;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GAINR_Register use record
      GAINR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Selects the ratio between PDM_CLK and output sample rate
   type RATIO_RATIO_Field is
     (
      --  Ratio of 64
      Ratio64,
      --  Ratio of 80
      Ratio80)
     with Size => 1;
   for RATIO_RATIO_Field use
     (Ratio64 => 0,
      Ratio80 => 1);

   --  Selects the ratio between PDM_CLK and output sample rate. Change
   --  PDMCLKCTRL accordingly.
   type RATIO_Register is record
      --  Selects the ratio between PDM_CLK and output sample rate
      RATIO         : RATIO_RATIO_Field := Interfaces.NRF52.PDM.Ratio64;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RATIO_Register use record
      RATIO         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------------
   -- PSEL cluster's Registers --
   ------------------------------

   subtype CLK_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype CLK_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type CLK_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for CLK_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin number configuration for PDM CLK signal
   type CLK_PSEL_Register is record
      --  Pin number
      PIN           : CLK_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : CLK_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : CLK_CONNECT_Field := Interfaces.NRF52.PDM.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype DIN_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype DIN_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type DIN_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for DIN_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin number configuration for PDM DIN signal
   type DIN_PSEL_Register is record
      --  Pin number
      PIN           : DIN_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : DIN_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : DIN_CONNECT_Field := Interfaces.NRF52.PDM.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIN_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type PSEL_Cluster is record
      --  Pin number configuration for PDM CLK signal
      CLK : aliased CLK_PSEL_Register;
      --  Pin number configuration for PDM DIN signal
      DIN : aliased DIN_PSEL_Register;
   end record
     with Volatile, Size => 64;

   for PSEL_Cluster use record
      CLK at 16#0# range 0 .. 31;
      DIN at 16#4# range 0 .. 31;
   end record;

   --------------------------------
   -- SAMPLE cluster's Registers --
   --------------------------------

   subtype MAXCNT_SAMPLE_BUFFSIZE_Field is Interfaces.NRF52.UInt15;

   --  Number of samples to allocate memory for in EasyDMA mode
   type MAXCNT_SAMPLE_Register is record
      --  Length of DMA RAM allocation in number of samples
      BUFFSIZE       : MAXCNT_SAMPLE_BUFFSIZE_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.NRF52.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_SAMPLE_Register use record
      BUFFSIZE       at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Unspecified
   type SAMPLE_Cluster is record
      --  RAM address pointer to write samples to with EasyDMA
      PTR    : aliased Interfaces.NRF52.UInt32;
      --  Number of samples to allocate memory for in EasyDMA mode
      MAXCNT : aliased MAXCNT_SAMPLE_Register;
   end record
     with Volatile, Size => 64;

   for SAMPLE_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pulse Density Modulation (Digital Microphone) Interface
   type PDM_Peripheral is record
      --  Starts continuous PDM transfer
      TASKS_START    : aliased Interfaces.NRF52.UInt32;
      --  Stops PDM transfer
      TASKS_STOP     : aliased Interfaces.NRF52.UInt32;
      --  PDM transfer has started
      EVENTS_STARTED : aliased Interfaces.NRF52.UInt32;
      --  PDM transfer has finished
      EVENTS_STOPPED : aliased Interfaces.NRF52.UInt32;
      --  The PDM has written the last sample specified by SAMPLE.MAXCNT (or
      --  the last sample after a STOP task has been received) to Data RAM
      EVENTS_END     : aliased Interfaces.NRF52.UInt32;
      --  Enable or disable interrupt
      INTEN          : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET       : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR       : aliased INTENCLR_Register;
      --  PDM module enable register
      ENABLE         : aliased ENABLE_Register;
      --  PDM clock generator control
      PDMCLKCTRL     : aliased Interfaces.NRF52.UInt32;
      --  Defines the routing of the connected PDM microphones' signals
      MODE           : aliased MODE_Register;
      --  Left output gain adjustment
      GAINL          : aliased GAINL_Register;
      --  Right output gain adjustment
      GAINR          : aliased GAINR_Register;
      --  Selects the ratio between PDM_CLK and output sample rate. Change
      --  PDMCLKCTRL accordingly.
      RATIO          : aliased RATIO_Register;
      --  Unspecified
      PSEL           : aliased PSEL_Cluster;
      --  Unspecified
      SAMPLE         : aliased SAMPLE_Cluster;
   end record
     with Volatile;

   for PDM_Peripheral use record
      TASKS_START    at 16#0# range 0 .. 31;
      TASKS_STOP     at 16#4# range 0 .. 31;
      EVENTS_STARTED at 16#100# range 0 .. 31;
      EVENTS_STOPPED at 16#104# range 0 .. 31;
      EVENTS_END     at 16#108# range 0 .. 31;
      INTEN          at 16#300# range 0 .. 31;
      INTENSET       at 16#304# range 0 .. 31;
      INTENCLR       at 16#308# range 0 .. 31;
      ENABLE         at 16#500# range 0 .. 31;
      PDMCLKCTRL     at 16#504# range 0 .. 31;
      MODE           at 16#508# range 0 .. 31;
      GAINL          at 16#518# range 0 .. 31;
      GAINR          at 16#51C# range 0 .. 31;
      RATIO          at 16#520# range 0 .. 31;
      PSEL           at 16#540# range 0 .. 63;
      SAMPLE         at 16#560# range 0 .. 63;
   end record;

   --  Pulse Density Modulation (Digital Microphone) Interface
   PDM_Periph : aliased PDM_Peripheral
     with Import, Address => System'To_Address (16#4001D000#);

end Interfaces.NRF52.PDM;
