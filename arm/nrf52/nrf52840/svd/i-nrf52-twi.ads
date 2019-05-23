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

package Interfaces.NRF52.TWI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Shortcut between BB event and SUSPEND task
   type SHORTS_BB_SUSPEND_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_BB_SUSPEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between BB event and STOP task
   type SHORTS_BB_STOP_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_BB_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut register
   type SHORTS_Register is record
      --  Shortcut between BB event and SUSPEND task
      BB_SUSPEND    : SHORTS_BB_SUSPEND_Field :=
                       Interfaces.NRF52.TWI.Disabled;
      --  Shortcut between BB event and STOP task
      BB_STOP       : SHORTS_BB_STOP_Field := Interfaces.NRF52.TWI.Disabled;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      BB_SUSPEND    at 0 range 0 .. 0;
      BB_STOP       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

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

   --  Write '1' to Enable interrupt for RXDREADY event
   type INTENSET_RXDREADY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXDREADY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for RXDREADY event
   type INTENSET_RXDREADY_Field_1 is
     (
      --  Reset value for the field
      Intenset_Rxdready_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXDREADY_Field_1 use
     (Intenset_Rxdready_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for TXDSENT event
   type INTENSET_TXDSENT_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TXDSENT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for TXDSENT event
   type INTENSET_TXDSENT_Field_1 is
     (
      --  Reset value for the field
      Intenset_Txdsent_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TXDSENT_Field_1 use
     (Intenset_Txdsent_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for ERROR event
   type INTENSET_ERROR_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for ERROR event
   type INTENSET_ERROR_Field_1 is
     (
      --  Reset value for the field
      Intenset_Error_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ERROR_Field_1 use
     (Intenset_Error_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for BB event
   type INTENSET_BB_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_BB_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for BB event
   type INTENSET_BB_Field_1 is
     (
      --  Reset value for the field
      Intenset_Bb_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_BB_Field_1 use
     (Intenset_Bb_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for SUSPENDED event
   type INTENSET_SUSPENDED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SUSPENDED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for SUSPENDED event
   type INTENSET_SUSPENDED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Suspended_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SUSPENDED_Field_1 use
     (Intenset_Suspended_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for STOPPED event
      STOPPED        : INTENSET_STOPPED_Field_1 :=
                        Intenset_Stopped_Field_Reset;
      --  Write '1' to Enable interrupt for RXDREADY event
      RXDREADY       : INTENSET_RXDREADY_Field_1 :=
                        Intenset_Rxdready_Field_Reset;
      --  unspecified
      Reserved_3_6   : Interfaces.NRF52.UInt4 := 16#0#;
      --  Write '1' to Enable interrupt for TXDSENT event
      TXDSENT        : INTENSET_TXDSENT_Field_1 :=
                        Intenset_Txdsent_Field_Reset;
      --  unspecified
      Reserved_8_8   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for ERROR event
      ERROR          : INTENSET_ERROR_Field_1 := Intenset_Error_Field_Reset;
      --  unspecified
      Reserved_10_13 : Interfaces.NRF52.UInt4 := 16#0#;
      --  Write '1' to Enable interrupt for BB event
      BB             : INTENSET_BB_Field_1 := Intenset_Bb_Field_Reset;
      --  unspecified
      Reserved_15_17 : Interfaces.NRF52.UInt3 := 16#0#;
      --  Write '1' to Enable interrupt for SUSPENDED event
      SUSPENDED      : INTENSET_SUSPENDED_Field_1 :=
                        Intenset_Suspended_Field_Reset;
      --  unspecified
      Reserved_19_31 : Interfaces.NRF52.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      RXDREADY       at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      TXDSENT        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      BB             at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      SUSPENDED      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

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

   --  Write '1' to Disable interrupt for RXDREADY event
   type INTENCLR_RXDREADY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXDREADY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for RXDREADY event
   type INTENCLR_RXDREADY_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Rxdready_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXDREADY_Field_1 use
     (Intenclr_Rxdready_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for TXDSENT event
   type INTENCLR_TXDSENT_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TXDSENT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for TXDSENT event
   type INTENCLR_TXDSENT_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Txdsent_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TXDSENT_Field_1 use
     (Intenclr_Txdsent_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for ERROR event
   type INTENCLR_ERROR_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for ERROR event
   type INTENCLR_ERROR_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Error_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ERROR_Field_1 use
     (Intenclr_Error_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for BB event
   type INTENCLR_BB_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_BB_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for BB event
   type INTENCLR_BB_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Bb_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_BB_Field_1 use
     (Intenclr_Bb_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for SUSPENDED event
   type INTENCLR_SUSPENDED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SUSPENDED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for SUSPENDED event
   type INTENCLR_SUSPENDED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Suspended_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SUSPENDED_Field_1 use
     (Intenclr_Suspended_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for STOPPED event
      STOPPED        : INTENCLR_STOPPED_Field_1 :=
                        Intenclr_Stopped_Field_Reset;
      --  Write '1' to Disable interrupt for RXDREADY event
      RXDREADY       : INTENCLR_RXDREADY_Field_1 :=
                        Intenclr_Rxdready_Field_Reset;
      --  unspecified
      Reserved_3_6   : Interfaces.NRF52.UInt4 := 16#0#;
      --  Write '1' to Disable interrupt for TXDSENT event
      TXDSENT        : INTENCLR_TXDSENT_Field_1 :=
                        Intenclr_Txdsent_Field_Reset;
      --  unspecified
      Reserved_8_8   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for ERROR event
      ERROR          : INTENCLR_ERROR_Field_1 := Intenclr_Error_Field_Reset;
      --  unspecified
      Reserved_10_13 : Interfaces.NRF52.UInt4 := 16#0#;
      --  Write '1' to Disable interrupt for BB event
      BB             : INTENCLR_BB_Field_1 := Intenclr_Bb_Field_Reset;
      --  unspecified
      Reserved_15_17 : Interfaces.NRF52.UInt3 := 16#0#;
      --  Write '1' to Disable interrupt for SUSPENDED event
      SUSPENDED      : INTENCLR_SUSPENDED_Field_1 :=
                        Intenclr_Suspended_Field_Reset;
      --  unspecified
      Reserved_19_31 : Interfaces.NRF52.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      RXDREADY       at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      TXDSENT        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      BB             at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      SUSPENDED      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Overrun error
   type ERRORSRC_OVERRUN_Field is
     (
      --  Read: no overrun occured
      Notpresent,
      --  Read: overrun occured
      Present)
     with Size => 1;
   for ERRORSRC_OVERRUN_Field use
     (Notpresent => 0,
      Present => 1);

   --  NACK received after sending the address (write '1' to clear)
   type ERRORSRC_ANACK_Field is
     (
      --  Read: error not present
      Notpresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_ANACK_Field use
     (Notpresent => 0,
      Present => 1);

   --  NACK received after sending a data byte (write '1' to clear)
   type ERRORSRC_DNACK_Field is
     (
      --  Read: error not present
      Notpresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_DNACK_Field use
     (Notpresent => 0,
      Present => 1);

   --  Error source
   type ERRORSRC_Register is record
      --  Overrun error
      OVERRUN       : ERRORSRC_OVERRUN_Field :=
                       Interfaces.NRF52.TWI.Notpresent;
      --  NACK received after sending the address (write '1' to clear)
      ANACK         : ERRORSRC_ANACK_Field := Interfaces.NRF52.TWI.Notpresent;
      --  NACK received after sending a data byte (write '1' to clear)
      DNACK         : ERRORSRC_DNACK_Field := Interfaces.NRF52.TWI.Notpresent;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRORSRC_Register use record
      OVERRUN       at 0 range 0 .. 0;
      ANACK         at 0 range 1 .. 1;
      DNACK         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Enable or disable TWI
   type ENABLE_ENABLE_Field is
     (
      --  Disable TWI
      Disabled,
      --  Enable TWI
      Enabled)
     with Size => 4;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 5);

   --  Enable TWI
   type ENABLE_Register is record
      --  Enable or disable TWI
      ENABLE        : ENABLE_ENABLE_Field := Interfaces.NRF52.TWI.Disabled;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   ----------------------------------
   -- TWI_PSEL cluster's Registers --
   ----------------------------------

   subtype SCL_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype SCL_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type SCL_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for SCL_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for SCL
   type SCL_PSEL_Register is record
      --  Pin number
      PIN           : SCL_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : SCL_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : SCL_CONNECT_Field := Interfaces.NRF52.TWI.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCL_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype SDA_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype SDA_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type SDA_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for SDA_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for SDA
   type SDA_PSEL_Register is record
      --  Pin number
      PIN           : SDA_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : SDA_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : SDA_CONNECT_Field := Interfaces.NRF52.TWI.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDA_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type TWI_PSEL_Cluster is record
      --  Pin select for SCL
      SCL : aliased SCL_PSEL_Register;
      --  Pin select for SDA
      SDA : aliased SDA_PSEL_Register;
   end record
     with Volatile, Size => 64;

   for TWI_PSEL_Cluster use record
      SCL at 16#0# range 0 .. 31;
      SDA at 16#4# range 0 .. 31;
   end record;

   subtype RXD_RXD_Field is Interfaces.NRF52.Byte;

   --  RXD register
   type RXD_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. RXD register
      RXD           : RXD_RXD_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXD_Register use record
      RXD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TXD_TXD_Field is Interfaces.NRF52.Byte;

   --  TXD register
   type TXD_Register is record
      --  TXD register
      TXD           : TXD_TXD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXD_Register use record
      TXD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ADDRESS_ADDRESS_Field is Interfaces.NRF52.UInt7;

   --  Address used in the TWI transfer
   type ADDRESS_Register is record
      --  Address used in the TWI transfer
      ADDRESS       : ADDRESS_ADDRESS_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.NRF52.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADDRESS_Register use record
      ADDRESS       at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   ----------------------------------
   -- TWI_PSEL cluster's Registers --
   ----------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  I2C compatible Two-Wire Interface 0
   type TWI_Peripheral is record
      --  Start TWI receive sequence
      TASKS_STARTRX    : aliased Interfaces.NRF52.UInt32;
      --  Start TWI transmit sequence
      TASKS_STARTTX    : aliased Interfaces.NRF52.UInt32;
      --  Stop TWI transaction
      TASKS_STOP       : aliased Interfaces.NRF52.UInt32;
      --  Suspend TWI transaction
      TASKS_SUSPEND    : aliased Interfaces.NRF52.UInt32;
      --  Resume TWI transaction
      TASKS_RESUME     : aliased Interfaces.NRF52.UInt32;
      --  TWI stopped
      EVENTS_STOPPED   : aliased Interfaces.NRF52.UInt32;
      --  TWI RXD byte received
      EVENTS_RXDREADY  : aliased Interfaces.NRF52.UInt32;
      --  TWI TXD byte sent
      EVENTS_TXDSENT   : aliased Interfaces.NRF52.UInt32;
      --  TWI error
      EVENTS_ERROR     : aliased Interfaces.NRF52.UInt32;
      --  TWI byte boundary, generated before each byte that is sent or
      --  received
      EVENTS_BB        : aliased Interfaces.NRF52.UInt32;
      --  TWI entered the suspended state
      EVENTS_SUSPENDED : aliased Interfaces.NRF52.UInt32;
      --  Shortcut register
      SHORTS           : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET         : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR         : aliased INTENCLR_Register;
      --  Error source
      ERRORSRC         : aliased ERRORSRC_Register;
      --  Enable TWI
      ENABLE           : aliased ENABLE_Register;
      --  Unspecified
      PSEL             : aliased TWI_PSEL_Cluster;
      --  RXD register
      RXD              : aliased RXD_Register;
      --  TXD register
      TXD              : aliased TXD_Register;
      --  TWI frequency. Accuracy depends on the HFCLK source selected.
      FREQUENCY        : aliased Interfaces.NRF52.UInt32;
      --  Address used in the TWI transfer
      ADDRESS          : aliased ADDRESS_Register;
   end record
     with Volatile;

   for TWI_Peripheral use record
      TASKS_STARTRX    at 16#0# range 0 .. 31;
      TASKS_STARTTX    at 16#8# range 0 .. 31;
      TASKS_STOP       at 16#14# range 0 .. 31;
      TASKS_SUSPEND    at 16#1C# range 0 .. 31;
      TASKS_RESUME     at 16#20# range 0 .. 31;
      EVENTS_STOPPED   at 16#104# range 0 .. 31;
      EVENTS_RXDREADY  at 16#108# range 0 .. 31;
      EVENTS_TXDSENT   at 16#11C# range 0 .. 31;
      EVENTS_ERROR     at 16#124# range 0 .. 31;
      EVENTS_BB        at 16#138# range 0 .. 31;
      EVENTS_SUSPENDED at 16#148# range 0 .. 31;
      SHORTS           at 16#200# range 0 .. 31;
      INTENSET         at 16#304# range 0 .. 31;
      INTENCLR         at 16#308# range 0 .. 31;
      ERRORSRC         at 16#4C4# range 0 .. 31;
      ENABLE           at 16#500# range 0 .. 31;
      PSEL             at 16#508# range 0 .. 63;
      RXD              at 16#518# range 0 .. 31;
      TXD              at 16#51C# range 0 .. 31;
      FREQUENCY        at 16#524# range 0 .. 31;
      ADDRESS          at 16#588# range 0 .. 31;
   end record;

   --  I2C compatible Two-Wire Interface 0
   TWI0_Periph : aliased TWI_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

   --  I2C compatible Two-Wire Interface 1
   TWI1_Periph : aliased TWI_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

end Interfaces.NRF52.TWI;
