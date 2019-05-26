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

package Interfaces.NRF52.SPIS is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Shortcut between END event and ACQUIRE task
   type SHORTS_END_ACQUIRE_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_END_ACQUIRE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut register
   type SHORTS_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.NRF52.UInt2 := 16#0#;
      --  Shortcut between END event and ACQUIRE task
      END_ACQUIRE   : SHORTS_END_ACQUIRE_Field :=
                       Interfaces.NRF52.SPIS.Disabled;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      END_ACQUIRE   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

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

   --  Write '1' to Enable interrupt for ENDRX event
   type INTENSET_ENDRX_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDRX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for ENDRX event
   type INTENSET_ENDRX_Field_1 is
     (
      --  Reset value for the field
      Intenset_Endrx_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDRX_Field_1 use
     (Intenset_Endrx_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for ACQUIRED event
   type INTENSET_ACQUIRED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ACQUIRED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for ACQUIRED event
   type INTENSET_ACQUIRED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Acquired_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ACQUIRED_Field_1 use
     (Intenset_Acquired_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for END event
      END_k          : INTENSET_END_Field_1 := Intenset_End_Field_Reset;
      --  unspecified
      Reserved_2_3   : Interfaces.NRF52.UInt2 := 16#0#;
      --  Write '1' to Enable interrupt for ENDRX event
      ENDRX          : INTENSET_ENDRX_Field_1 := Intenset_Endrx_Field_Reset;
      --  unspecified
      Reserved_5_9   : Interfaces.NRF52.UInt5 := 16#0#;
      --  Write '1' to Enable interrupt for ACQUIRED event
      ACQUIRED       : INTENSET_ACQUIRED_Field_1 :=
                        Intenset_Acquired_Field_Reset;
      --  unspecified
      Reserved_11_31 : Interfaces.NRF52.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      END_k          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ENDRX          at 0 range 4 .. 4;
      Reserved_5_9   at 0 range 5 .. 9;
      ACQUIRED       at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

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

   --  Write '1' to Disable interrupt for ENDRX event
   type INTENCLR_ENDRX_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDRX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for ENDRX event
   type INTENCLR_ENDRX_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Endrx_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDRX_Field_1 use
     (Intenclr_Endrx_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for ACQUIRED event
   type INTENCLR_ACQUIRED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ACQUIRED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for ACQUIRED event
   type INTENCLR_ACQUIRED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Acquired_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ACQUIRED_Field_1 use
     (Intenclr_Acquired_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for END event
      END_k          : INTENCLR_END_Field_1 := Intenclr_End_Field_Reset;
      --  unspecified
      Reserved_2_3   : Interfaces.NRF52.UInt2 := 16#0#;
      --  Write '1' to Disable interrupt for ENDRX event
      ENDRX          : INTENCLR_ENDRX_Field_1 := Intenclr_Endrx_Field_Reset;
      --  unspecified
      Reserved_5_9   : Interfaces.NRF52.UInt5 := 16#0#;
      --  Write '1' to Disable interrupt for ACQUIRED event
      ACQUIRED       : INTENCLR_ACQUIRED_Field_1 :=
                        Intenclr_Acquired_Field_Reset;
      --  unspecified
      Reserved_11_31 : Interfaces.NRF52.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      END_k          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ENDRX          at 0 range 4 .. 4;
      Reserved_5_9   at 0 range 5 .. 9;
      ACQUIRED       at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Semaphore status
   type SEMSTAT_SEMSTAT_Field is
     (
      --  Semaphore is free
      Free,
      --  Semaphore is assigned to CPU
      Cpu,
      --  Semaphore is assigned to SPI slave
      Spis,
      --  Semaphore is assigned to SPI but a handover to the CPU is pending
      Cpupending)
     with Size => 2;
   for SEMSTAT_SEMSTAT_Field use
     (Free => 0,
      Cpu => 1,
      Spis => 2,
      Cpupending => 3);

   --  Semaphore status register
   type SEMSTAT_Register is record
      --  Read-only. Semaphore status
      SEMSTAT       : SEMSTAT_SEMSTAT_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEMSTAT_Register use record
      SEMSTAT       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  TX buffer over-read detected, and prevented
   type STATUS_OVERREAD_Field is
     (
      --  Read: error not present
      Notpresent,
      --  Read: error present
      Present)
     with Size => 1;
   for STATUS_OVERREAD_Field use
     (Notpresent => 0,
      Present => 1);

   --  TX buffer over-read detected, and prevented
   type STATUS_OVERREAD_Field_1 is
     (
      --  Reset value for the field
      Status_Overread_Field_Reset,
      --  Write: clear error on writing '1'
      Clear)
     with Size => 1;
   for STATUS_OVERREAD_Field_1 use
     (Status_Overread_Field_Reset => 0,
      Clear => 1);

   --  RX buffer overflow detected, and prevented
   type STATUS_OVERFLOW_Field is
     (
      --  Read: error not present
      Notpresent,
      --  Read: error present
      Present)
     with Size => 1;
   for STATUS_OVERFLOW_Field use
     (Notpresent => 0,
      Present => 1);

   --  RX buffer overflow detected, and prevented
   type STATUS_OVERFLOW_Field_1 is
     (
      --  Reset value for the field
      Status_Overflow_Field_Reset,
      --  Write: clear error on writing '1'
      Clear)
     with Size => 1;
   for STATUS_OVERFLOW_Field_1 use
     (Status_Overflow_Field_Reset => 0,
      Clear => 1);

   --  Status from last transaction
   type STATUS_Register is record
      --  TX buffer over-read detected, and prevented
      OVERREAD      : STATUS_OVERREAD_Field_1 := Status_Overread_Field_Reset;
      --  RX buffer overflow detected, and prevented
      OVERFLOW      : STATUS_OVERFLOW_Field_1 := Status_Overflow_Field_Reset;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      OVERREAD      at 0 range 0 .. 0;
      OVERFLOW      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Enable or disable SPI slave
   type ENABLE_ENABLE_Field is
     (
      --  Disable SPI slave
      Disabled,
      --  Enable SPI slave
      Enabled)
     with Size => 4;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 2);

   --  Enable SPI slave
   type ENABLE_Register is record
      --  Enable or disable SPI slave
      ENABLE        : ENABLE_ENABLE_Field := Interfaces.NRF52.SPIS.Disabled;
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
   -- SPIS_PSEL cluster's Registers --
   -----------------------------------

   subtype SCK_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype SCK_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type SCK_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for SCK_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for SCK
   type SCK_PSEL_Register is record
      --  Pin number
      PIN           : SCK_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : SCK_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : SCK_CONNECT_Field := Interfaces.NRF52.SPIS.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCK_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype MISO_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype MISO_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type MISO_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for MISO_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for MISO signal
   type MISO_PSEL_Register is record
      --  Pin number
      PIN           : MISO_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : MISO_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : MISO_CONNECT_Field :=
                       Interfaces.NRF52.SPIS.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISO_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype MOSI_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype MOSI_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type MOSI_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for MOSI_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for MOSI signal
   type MOSI_PSEL_Register is record
      --  Pin number
      PIN           : MOSI_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : MOSI_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : MOSI_CONNECT_Field :=
                       Interfaces.NRF52.SPIS.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOSI_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype CSN_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype CSN_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type CSN_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for CSN_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for CSN signal
   type CSN_PSEL_Register is record
      --  Pin number
      PIN           : CSN_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : CSN_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : CSN_CONNECT_Field := Interfaces.NRF52.SPIS.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSN_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type SPIS_PSEL_Cluster is record
      --  Pin select for SCK
      SCK  : aliased SCK_PSEL_Register;
      --  Pin select for MISO signal
      MISO : aliased MISO_PSEL_Register;
      --  Pin select for MOSI signal
      MOSI : aliased MOSI_PSEL_Register;
      --  Pin select for CSN signal
      CSN  : aliased CSN_PSEL_Register;
   end record
     with Volatile, Size => 128;

   for SPIS_PSEL_Cluster use record
      SCK  at 16#0# range 0 .. 31;
      MISO at 16#4# range 0 .. 31;
      MOSI at 16#8# range 0 .. 31;
      CSN  at 16#C# range 0 .. 31;
   end record;

   ----------------------------------
   -- SPIS_RXD cluster's Registers --
   ----------------------------------

   subtype MAXCNT_RXD_MAXCNT_Field is Interfaces.NRF52.UInt16;

   --  Maximum number of bytes in receive buffer
   type MAXCNT_RXD_Register is record
      --  Maximum number of bytes in receive buffer
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

   --  Number of bytes received in last granted transaction
   type AMOUNT_RXD_Register is record
      --  Read-only. Number of bytes received in the last granted transaction
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

   --  Unspecified
   type SPIS_RXD_Cluster is record
      --  RXD data pointer
      PTR    : aliased Interfaces.NRF52.UInt32;
      --  Maximum number of bytes in receive buffer
      MAXCNT : aliased MAXCNT_RXD_Register;
      --  Number of bytes received in last granted transaction
      AMOUNT : aliased AMOUNT_RXD_Register;
   end record
     with Volatile, Size => 96;

   for SPIS_RXD_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   ----------------------------------
   -- SPIS_TXD cluster's Registers --
   ----------------------------------

   subtype MAXCNT_TXD_MAXCNT_Field is Interfaces.NRF52.UInt16;

   --  Maximum number of bytes in transmit buffer
   type MAXCNT_TXD_Register is record
      --  Maximum number of bytes in transmit buffer
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

   --  Number of bytes transmitted in last granted transaction
   type AMOUNT_TXD_Register is record
      --  Read-only. Number of bytes transmitted in last granted transaction
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

   --  Unspecified
   type SPIS_TXD_Cluster is record
      --  TXD data pointer
      PTR    : aliased Interfaces.NRF52.UInt32;
      --  Maximum number of bytes in transmit buffer
      MAXCNT : aliased MAXCNT_TXD_Register;
      --  Number of bytes transmitted in last granted transaction
      AMOUNT : aliased AMOUNT_TXD_Register;
   end record
     with Volatile, Size => 96;

   for SPIS_TXD_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   --  Bit order
   type CONFIG_ORDER_Field is
     (
      --  Most significant bit shifted out first
      Msbfirst,
      --  Least significant bit shifted out first
      Lsbfirst)
     with Size => 1;
   for CONFIG_ORDER_Field use
     (Msbfirst => 0,
      Lsbfirst => 1);

   --  Serial clock (SCK) phase
   type CONFIG_CPHA_Field is
     (
      --  Sample on leading edge of clock, shift serial data on trailing edge
      Leading,
      --  Sample on trailing edge of clock, shift serial data on leading edge
      Trailing)
     with Size => 1;
   for CONFIG_CPHA_Field use
     (Leading => 0,
      Trailing => 1);

   --  Serial clock (SCK) polarity
   type CONFIG_CPOL_Field is
     (
      --  Active high
      Activehigh,
      --  Active low
      Activelow)
     with Size => 1;
   for CONFIG_CPOL_Field use
     (Activehigh => 0,
      Activelow => 1);

   --  Configuration register
   type CONFIG_Register is record
      --  Bit order
      ORDER         : CONFIG_ORDER_Field := Interfaces.NRF52.SPIS.Msbfirst;
      --  Serial clock (SCK) phase
      CPHA          : CONFIG_CPHA_Field := Interfaces.NRF52.SPIS.Leading;
      --  Serial clock (SCK) polarity
      CPOL          : CONFIG_CPOL_Field := Interfaces.NRF52.SPIS.Activehigh;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      ORDER         at 0 range 0 .. 0;
      CPHA          at 0 range 1 .. 1;
      CPOL          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DEF_DEF_Field is Interfaces.NRF52.Byte;

   --  Default character. Character clocked out in case of an ignored
   --  transaction.
   type DEF_Register is record
      --  Default character. Character clocked out in case of an ignored
      --  transaction.
      DEF           : DEF_DEF_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEF_Register use record
      DEF           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ORC_ORC_Field is Interfaces.NRF52.Byte;

   --  Over-read character
   type ORC_Register is record
      --  Over-read character. Character clocked out after an over-read of the
      --  transmit buffer.
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
   -- SPIS_PSEL cluster's Registers --
   -----------------------------------

   ----------------------------------
   -- SPIS_RXD cluster's Registers --
   ----------------------------------

   ----------------------------------
   -- SPIS_TXD cluster's Registers --
   ----------------------------------

   -----------------------------------
   -- SPIS_PSEL cluster's Registers --
   -----------------------------------

   ----------------------------------
   -- SPIS_RXD cluster's Registers --
   ----------------------------------

   ----------------------------------
   -- SPIS_TXD cluster's Registers --
   ----------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  SPI Slave 0
   type SPIS_Peripheral is record
      --  Acquire SPI semaphore
      TASKS_ACQUIRE   : aliased Interfaces.NRF52.UInt32;
      --  Release SPI semaphore, enabling the SPI slave to acquire it
      TASKS_RELEASE   : aliased Interfaces.NRF52.UInt32;
      --  Granted transaction completed
      EVENTS_END      : aliased Interfaces.NRF52.UInt32;
      --  End of RXD buffer reached
      EVENTS_ENDRX    : aliased Interfaces.NRF52.UInt32;
      --  Semaphore acquired
      EVENTS_ACQUIRED : aliased Interfaces.NRF52.UInt32;
      --  Shortcut register
      SHORTS          : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET        : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR        : aliased INTENCLR_Register;
      --  Semaphore status register
      SEMSTAT         : aliased SEMSTAT_Register;
      --  Status from last transaction
      STATUS          : aliased STATUS_Register;
      --  Enable SPI slave
      ENABLE          : aliased ENABLE_Register;
      --  Unspecified
      PSEL            : aliased SPIS_PSEL_Cluster;
      --  Unspecified
      RXD             : aliased SPIS_RXD_Cluster;
      --  Unspecified
      TXD             : aliased SPIS_TXD_Cluster;
      --  Configuration register
      CONFIG          : aliased CONFIG_Register;
      --  Default character. Character clocked out in case of an ignored
      --  transaction.
      DEF             : aliased DEF_Register;
      --  Over-read character
      ORC             : aliased ORC_Register;
   end record
     with Volatile;

   for SPIS_Peripheral use record
      TASKS_ACQUIRE   at 16#24# range 0 .. 31;
      TASKS_RELEASE   at 16#28# range 0 .. 31;
      EVENTS_END      at 16#104# range 0 .. 31;
      EVENTS_ENDRX    at 16#110# range 0 .. 31;
      EVENTS_ACQUIRED at 16#128# range 0 .. 31;
      SHORTS          at 16#200# range 0 .. 31;
      INTENSET        at 16#304# range 0 .. 31;
      INTENCLR        at 16#308# range 0 .. 31;
      SEMSTAT         at 16#400# range 0 .. 31;
      STATUS          at 16#440# range 0 .. 31;
      ENABLE          at 16#500# range 0 .. 31;
      PSEL            at 16#508# range 0 .. 127;
      RXD             at 16#534# range 0 .. 95;
      TXD             at 16#544# range 0 .. 95;
      CONFIG          at 16#554# range 0 .. 31;
      DEF             at 16#55C# range 0 .. 31;
      ORC             at 16#5C0# range 0 .. 31;
   end record;

   --  SPI Slave 0
   SPIS0_Periph : aliased SPIS_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

   --  SPI Slave 1
   SPIS1_Periph : aliased SPIS_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

   --  SPI Slave 2
   SPIS2_Periph : aliased SPIS_Peripheral
     with Import, Address => System'To_Address (16#40023000#);

end Interfaces.NRF52.SPIS;
