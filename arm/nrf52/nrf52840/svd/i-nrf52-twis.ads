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

package Interfaces.NRF52.TWIS is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Shortcut between WRITE event and SUSPEND task
   type SHORTS_WRITE_SUSPEND_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_WRITE_SUSPEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between READ event and SUSPEND task
   type SHORTS_READ_SUSPEND_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_READ_SUSPEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut register
   type SHORTS_Register is record
      --  unspecified
      Reserved_0_12  : Interfaces.NRF52.UInt13 := 16#0#;
      --  Shortcut between WRITE event and SUSPEND task
      WRITE_SUSPEND  : SHORTS_WRITE_SUSPEND_Field :=
                        Interfaces.NRF52.TWIS.Disabled;
      --  Shortcut between READ event and SUSPEND task
      READ_SUSPEND   : SHORTS_READ_SUSPEND_Field :=
                        Interfaces.NRF52.TWIS.Disabled;
      --  unspecified
      Reserved_15_31 : Interfaces.NRF52.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      WRITE_SUSPEND  at 0 range 13 .. 13;
      READ_SUSPEND   at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

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

   --  Enable or disable interrupt for ERROR event
   type INTEN_ERROR_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_ERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for RXSTARTED event
   type INTEN_RXSTARTED_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_RXSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for TXSTARTED event
   type INTEN_TXSTARTED_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_TXSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for WRITE event
   type INTEN_WRITE_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_WRITE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for READ event
   type INTEN_READ_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_READ_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.NRF52.Bit := 16#0#;
      --  Enable or disable interrupt for STOPPED event
      STOPPED        : INTEN_STOPPED_Field := Interfaces.NRF52.TWIS.Disabled;
      --  unspecified
      Reserved_2_8   : Interfaces.NRF52.UInt7 := 16#0#;
      --  Enable or disable interrupt for ERROR event
      ERROR          : INTEN_ERROR_Field := Interfaces.NRF52.TWIS.Disabled;
      --  unspecified
      Reserved_10_18 : Interfaces.NRF52.UInt9 := 16#0#;
      --  Enable or disable interrupt for RXSTARTED event
      RXSTARTED      : INTEN_RXSTARTED_Field :=
                        Interfaces.NRF52.TWIS.Disabled;
      --  Enable or disable interrupt for TXSTARTED event
      TXSTARTED      : INTEN_TXSTARTED_Field :=
                        Interfaces.NRF52.TWIS.Disabled;
      --  unspecified
      Reserved_21_24 : Interfaces.NRF52.UInt4 := 16#0#;
      --  Enable or disable interrupt for WRITE event
      WRITE          : INTEN_WRITE_Field := Interfaces.NRF52.TWIS.Disabled;
      --  Enable or disable interrupt for READ event
      READ           : INTEN_READ_Field := Interfaces.NRF52.TWIS.Disabled;
      --  unspecified
      Reserved_27_31 : Interfaces.NRF52.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      RXSTARTED      at 0 range 19 .. 19;
      TXSTARTED      at 0 range 20 .. 20;
      Reserved_21_24 at 0 range 21 .. 24;
      WRITE          at 0 range 25 .. 25;
      READ           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
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

   --  Write '1' to Enable interrupt for RXSTARTED event
   type INTENSET_RXSTARTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for RXSTARTED event
   type INTENSET_RXSTARTED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Rxstarted_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXSTARTED_Field_1 use
     (Intenset_Rxstarted_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for TXSTARTED event
   type INTENSET_TXSTARTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TXSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for TXSTARTED event
   type INTENSET_TXSTARTED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Txstarted_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TXSTARTED_Field_1 use
     (Intenset_Txstarted_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for WRITE event
   type INTENSET_WRITE_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_WRITE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for WRITE event
   type INTENSET_WRITE_Field_1 is
     (
      --  Reset value for the field
      Intenset_Write_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_WRITE_Field_1 use
     (Intenset_Write_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for READ event
   type INTENSET_READ_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_READ_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for READ event
   type INTENSET_READ_Field_1 is
     (
      --  Reset value for the field
      Intenset_Read_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_READ_Field_1 use
     (Intenset_Read_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for STOPPED event
      STOPPED        : INTENSET_STOPPED_Field_1 :=
                        Intenset_Stopped_Field_Reset;
      --  unspecified
      Reserved_2_8   : Interfaces.NRF52.UInt7 := 16#0#;
      --  Write '1' to Enable interrupt for ERROR event
      ERROR          : INTENSET_ERROR_Field_1 := Intenset_Error_Field_Reset;
      --  unspecified
      Reserved_10_18 : Interfaces.NRF52.UInt9 := 16#0#;
      --  Write '1' to Enable interrupt for RXSTARTED event
      RXSTARTED      : INTENSET_RXSTARTED_Field_1 :=
                        Intenset_Rxstarted_Field_Reset;
      --  Write '1' to Enable interrupt for TXSTARTED event
      TXSTARTED      : INTENSET_TXSTARTED_Field_1 :=
                        Intenset_Txstarted_Field_Reset;
      --  unspecified
      Reserved_21_24 : Interfaces.NRF52.UInt4 := 16#0#;
      --  Write '1' to Enable interrupt for WRITE event
      WRITE          : INTENSET_WRITE_Field_1 := Intenset_Write_Field_Reset;
      --  Write '1' to Enable interrupt for READ event
      READ           : INTENSET_READ_Field_1 := Intenset_Read_Field_Reset;
      --  unspecified
      Reserved_27_31 : Interfaces.NRF52.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      RXSTARTED      at 0 range 19 .. 19;
      TXSTARTED      at 0 range 20 .. 20;
      Reserved_21_24 at 0 range 21 .. 24;
      WRITE          at 0 range 25 .. 25;
      READ           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
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

   --  Write '1' to Disable interrupt for RXSTARTED event
   type INTENCLR_RXSTARTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for RXSTARTED event
   type INTENCLR_RXSTARTED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Rxstarted_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXSTARTED_Field_1 use
     (Intenclr_Rxstarted_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for TXSTARTED event
   type INTENCLR_TXSTARTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TXSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for TXSTARTED event
   type INTENCLR_TXSTARTED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Txstarted_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TXSTARTED_Field_1 use
     (Intenclr_Txstarted_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for WRITE event
   type INTENCLR_WRITE_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_WRITE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for WRITE event
   type INTENCLR_WRITE_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Write_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_WRITE_Field_1 use
     (Intenclr_Write_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for READ event
   type INTENCLR_READ_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_READ_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for READ event
   type INTENCLR_READ_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Read_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_READ_Field_1 use
     (Intenclr_Read_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for STOPPED event
      STOPPED        : INTENCLR_STOPPED_Field_1 :=
                        Intenclr_Stopped_Field_Reset;
      --  unspecified
      Reserved_2_8   : Interfaces.NRF52.UInt7 := 16#0#;
      --  Write '1' to Disable interrupt for ERROR event
      ERROR          : INTENCLR_ERROR_Field_1 := Intenclr_Error_Field_Reset;
      --  unspecified
      Reserved_10_18 : Interfaces.NRF52.UInt9 := 16#0#;
      --  Write '1' to Disable interrupt for RXSTARTED event
      RXSTARTED      : INTENCLR_RXSTARTED_Field_1 :=
                        Intenclr_Rxstarted_Field_Reset;
      --  Write '1' to Disable interrupt for TXSTARTED event
      TXSTARTED      : INTENCLR_TXSTARTED_Field_1 :=
                        Intenclr_Txstarted_Field_Reset;
      --  unspecified
      Reserved_21_24 : Interfaces.NRF52.UInt4 := 16#0#;
      --  Write '1' to Disable interrupt for WRITE event
      WRITE          : INTENCLR_WRITE_Field_1 := Intenclr_Write_Field_Reset;
      --  Write '1' to Disable interrupt for READ event
      READ           : INTENCLR_READ_Field_1 := Intenclr_Read_Field_Reset;
      --  unspecified
      Reserved_27_31 : Interfaces.NRF52.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      Reserved_2_8   at 0 range 2 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      RXSTARTED      at 0 range 19 .. 19;
      TXSTARTED      at 0 range 20 .. 20;
      Reserved_21_24 at 0 range 21 .. 24;
      WRITE          at 0 range 25 .. 25;
      READ           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  RX buffer overflow detected, and prevented
   type ERRORSRC_OVERFLOW_Field is
     (
      --  Error did not occur
      Notdetected,
      --  Error occurred
      Detected)
     with Size => 1;
   for ERRORSRC_OVERFLOW_Field use
     (Notdetected => 0,
      Detected => 1);

   --  NACK sent after receiving a data byte
   type ERRORSRC_DNACK_Field is
     (
      --  Error did not occur
      Notreceived,
      --  Error occurred
      Received)
     with Size => 1;
   for ERRORSRC_DNACK_Field use
     (Notreceived => 0,
      Received => 1);

   --  TX buffer over-read detected, and prevented
   type ERRORSRC_OVERREAD_Field is
     (
      --  Error did not occur
      Notdetected,
      --  Error occurred
      Detected)
     with Size => 1;
   for ERRORSRC_OVERREAD_Field use
     (Notdetected => 0,
      Detected => 1);

   --  Error source
   type ERRORSRC_Register is record
      --  RX buffer overflow detected, and prevented
      OVERFLOW      : ERRORSRC_OVERFLOW_Field :=
                       Interfaces.NRF52.TWIS.Notdetected;
      --  unspecified
      Reserved_1_1  : Interfaces.NRF52.Bit := 16#0#;
      --  NACK sent after receiving a data byte
      DNACK         : ERRORSRC_DNACK_Field :=
                       Interfaces.NRF52.TWIS.Notreceived;
      --  TX buffer over-read detected, and prevented
      OVERREAD      : ERRORSRC_OVERREAD_Field :=
                       Interfaces.NRF52.TWIS.Notdetected;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRORSRC_Register use record
      OVERFLOW      at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DNACK         at 0 range 2 .. 2;
      OVERREAD      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype MATCH_MATCH_Field is Interfaces.NRF52.Bit;

   --  Status register indicating which address had a match
   type MATCH_Register is record
      --  Read-only. Which of the addresses in {ADDRESS} matched the incoming
      --  address
      MATCH         : MATCH_MATCH_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATCH_Register use record
      MATCH         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Enable or disable TWIS
   type ENABLE_ENABLE_Field is
     (
      --  Disable TWIS
      Disabled,
      --  Enable TWIS
      Enabled)
     with Size => 4;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 9);

   --  Enable TWIS
   type ENABLE_Register is record
      --  Enable or disable TWIS
      ENABLE        : ENABLE_ENABLE_Field := Interfaces.NRF52.TWIS.Disabled;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------------------------
   -- TWIS_PSEL cluster's Registers --
   -----------------------------------

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

   --  Pin select for SCL signal
   type SCL_PSEL_Register is record
      --  Pin number
      PIN           : SCL_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : SCL_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : SCL_CONNECT_Field := Interfaces.NRF52.TWIS.Disconnected;
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

   --  Pin select for SDA signal
   type SDA_PSEL_Register is record
      --  Pin number
      PIN           : SDA_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : SDA_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : SDA_CONNECT_Field := Interfaces.NRF52.TWIS.Disconnected;
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
   type TWIS_PSEL_Cluster is record
      --  Pin select for SCL signal
      SCL : aliased SCL_PSEL_Register;
      --  Pin select for SDA signal
      SDA : aliased SDA_PSEL_Register;
   end record
     with Volatile, Size => 64;

   for TWIS_PSEL_Cluster use record
      SCL at 16#0# range 0 .. 31;
      SDA at 16#4# range 0 .. 31;
   end record;

   ----------------------------------
   -- TWIS_RXD cluster's Registers --
   ----------------------------------

   subtype MAXCNT_RXD_MAXCNT_Field is Interfaces.NRF52.UInt16;

   --  Maximum number of bytes in RXD buffer
   type MAXCNT_RXD_Register is record
      --  Maximum number of bytes in RXD buffer
      MAXCNT         : MAXCNT_RXD_MAXCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.NRF52.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_RXD_Register use record
      MAXCNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AMOUNT_RXD_AMOUNT_Field is Interfaces.NRF52.UInt16;

   --  Number of bytes transferred in the last RXD transaction
   type AMOUNT_RXD_Register is record
      --  Read-only. Number of bytes transferred in the last RXD transaction
      AMOUNT         : AMOUNT_RXD_AMOUNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.NRF52.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_RXD_Register use record
      AMOUNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RXD EasyDMA channel
   type TWIS_RXD_Cluster is record
      --  RXD Data pointer
      PTR    : aliased Interfaces.NRF52.UInt32;
      --  Maximum number of bytes in RXD buffer
      MAXCNT : aliased MAXCNT_RXD_Register;
      --  Number of bytes transferred in the last RXD transaction
      AMOUNT : aliased AMOUNT_RXD_Register;
   end record
     with Volatile, Size => 96;

   for TWIS_RXD_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   ----------------------------------
   -- TWIS_TXD cluster's Registers --
   ----------------------------------

   subtype MAXCNT_TXD_MAXCNT_Field is Interfaces.NRF52.UInt16;

   --  Maximum number of bytes in TXD buffer
   type MAXCNT_TXD_Register is record
      --  Maximum number of bytes in TXD buffer
      MAXCNT         : MAXCNT_TXD_MAXCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.NRF52.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_TXD_Register use record
      MAXCNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AMOUNT_TXD_AMOUNT_Field is Interfaces.NRF52.UInt16;

   --  Number of bytes transferred in the last TXD transaction
   type AMOUNT_TXD_Register is record
      --  Read-only. Number of bytes transferred in the last TXD transaction
      AMOUNT         : AMOUNT_TXD_AMOUNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.NRF52.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_TXD_Register use record
      AMOUNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  TXD EasyDMA channel
   type TWIS_TXD_Cluster is record
      --  TXD Data pointer
      PTR    : aliased Interfaces.NRF52.UInt32;
      --  Maximum number of bytes in TXD buffer
      MAXCNT : aliased MAXCNT_TXD_Register;
      --  Number of bytes transferred in the last TXD transaction
      AMOUNT : aliased AMOUNT_TXD_Register;
   end record
     with Volatile, Size => 96;

   for TWIS_TXD_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   subtype ADDRESS_ADDRESS_Field is Interfaces.NRF52.UInt7;

   --  Description collection[0]: TWI slave address 0
   type ADDRESS_Register is record
      --  TWI slave address
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

   --  Description collection[0]: TWI slave address 0
   type ADDRESS_Registers is array (0 .. 1) of ADDRESS_Register
     with Volatile;

   --  Enable or disable address matching on ADDRESS[0]
   type CONFIG_ADDRESS0_Field is
     (
      --  Disabled
      Disabled,
      --  Enabled
      Enabled)
     with Size => 1;
   for CONFIG_ADDRESS0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  CONFIG_ADDRESS array
   type CONFIG_ADDRESS_Field_Array is array (0 .. 1) of CONFIG_ADDRESS0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for CONFIG_ADDRESS
   type CONFIG_ADDRESS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADDRESS as a value
            Val : Interfaces.NRF52.UInt2;
         when True =>
            --  ADDRESS as an array
            Arr : CONFIG_ADDRESS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CONFIG_ADDRESS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Configuration register for the address match mechanism
   type CONFIG_Register is record
      --  Enable or disable address matching on ADDRESS[0]
      ADDRESS       : CONFIG_ADDRESS_Field :=
                       (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      ADDRESS       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype ORC_ORC_Field is Interfaces.NRF52.Byte;

   --  Over-read character. Character sent out in case of an over-read of the
   --  transmit buffer.
   type ORC_Register is record
      --  Over-read character. Character sent out in case of an over-read of
      --  the transmit buffer.
      ORC           : ORC_ORC_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ORC_Register use record
      ORC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------------------------
   -- TWIS_PSEL cluster's Registers --
   -----------------------------------

   ----------------------------------
   -- TWIS_RXD cluster's Registers --
   ----------------------------------

   ----------------------------------
   -- TWIS_TXD cluster's Registers --
   ----------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  I2C compatible Two-Wire Slave Interface with EasyDMA 0
   type TWIS_Peripheral is record
      --  Stop TWI transaction
      TASKS_STOP       : aliased Interfaces.NRF52.UInt32;
      --  Suspend TWI transaction
      TASKS_SUSPEND    : aliased Interfaces.NRF52.UInt32;
      --  Resume TWI transaction
      TASKS_RESUME     : aliased Interfaces.NRF52.UInt32;
      --  Prepare the TWI slave to respond to a write command
      TASKS_PREPARERX  : aliased Interfaces.NRF52.UInt32;
      --  Prepare the TWI slave to respond to a read command
      TASKS_PREPARETX  : aliased Interfaces.NRF52.UInt32;
      --  TWI stopped
      EVENTS_STOPPED   : aliased Interfaces.NRF52.UInt32;
      --  TWI error
      EVENTS_ERROR     : aliased Interfaces.NRF52.UInt32;
      --  Receive sequence started
      EVENTS_RXSTARTED : aliased Interfaces.NRF52.UInt32;
      --  Transmit sequence started
      EVENTS_TXSTARTED : aliased Interfaces.NRF52.UInt32;
      --  Write command received
      EVENTS_WRITE     : aliased Interfaces.NRF52.UInt32;
      --  Read command received
      EVENTS_READ      : aliased Interfaces.NRF52.UInt32;
      --  Shortcut register
      SHORTS           : aliased SHORTS_Register;
      --  Enable or disable interrupt
      INTEN            : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET         : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR         : aliased INTENCLR_Register;
      --  Error source
      ERRORSRC         : aliased ERRORSRC_Register;
      --  Status register indicating which address had a match
      MATCH            : aliased MATCH_Register;
      --  Enable TWIS
      ENABLE           : aliased ENABLE_Register;
      --  Unspecified
      PSEL             : aliased TWIS_PSEL_Cluster;
      --  RXD EasyDMA channel
      RXD              : aliased TWIS_RXD_Cluster;
      --  TXD EasyDMA channel
      TXD              : aliased TWIS_TXD_Cluster;
      --  Description collection[0]: TWI slave address 0
      ADDRESS          : aliased ADDRESS_Registers;
      --  Configuration register for the address match mechanism
      CONFIG           : aliased CONFIG_Register;
      --  Over-read character. Character sent out in case of an over-read of
      --  the transmit buffer.
      ORC              : aliased ORC_Register;
   end record
     with Volatile;

   for TWIS_Peripheral use record
      TASKS_STOP       at 16#14# range 0 .. 31;
      TASKS_SUSPEND    at 16#1C# range 0 .. 31;
      TASKS_RESUME     at 16#20# range 0 .. 31;
      TASKS_PREPARERX  at 16#30# range 0 .. 31;
      TASKS_PREPARETX  at 16#34# range 0 .. 31;
      EVENTS_STOPPED   at 16#104# range 0 .. 31;
      EVENTS_ERROR     at 16#124# range 0 .. 31;
      EVENTS_RXSTARTED at 16#14C# range 0 .. 31;
      EVENTS_TXSTARTED at 16#150# range 0 .. 31;
      EVENTS_WRITE     at 16#164# range 0 .. 31;
      EVENTS_READ      at 16#168# range 0 .. 31;
      SHORTS           at 16#200# range 0 .. 31;
      INTEN            at 16#300# range 0 .. 31;
      INTENSET         at 16#304# range 0 .. 31;
      INTENCLR         at 16#308# range 0 .. 31;
      ERRORSRC         at 16#4D0# range 0 .. 31;
      MATCH            at 16#4D4# range 0 .. 31;
      ENABLE           at 16#500# range 0 .. 31;
      PSEL             at 16#508# range 0 .. 63;
      RXD              at 16#534# range 0 .. 95;
      TXD              at 16#544# range 0 .. 95;
      ADDRESS          at 16#588# range 0 .. 63;
      CONFIG           at 16#594# range 0 .. 31;
      ORC              at 16#5C0# range 0 .. 31;
   end record;

   --  I2C compatible Two-Wire Slave Interface with EasyDMA 0
   TWIS0_Periph : aliased TWIS_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

   --  I2C compatible Two-Wire Slave Interface with EasyDMA 1
   TWIS1_Periph : aliased TWIS_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

end Interfaces.NRF52.TWIS;
