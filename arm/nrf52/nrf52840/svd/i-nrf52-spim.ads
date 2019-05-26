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

package Interfaces.NRF52.SPIM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Shortcut between END event and START task
   type SHORTS_END_START_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_END_START_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut register
   type SHORTS_Register is record
      --  unspecified
      Reserved_0_16  : Interfaces.NRF52.UInt17 := 16#0#;
      --  Shortcut between END event and START task
      END_START      : SHORTS_END_START_Field :=
                        Interfaces.NRF52.SPIM.Disabled;
      --  unspecified
      Reserved_18_31 : Interfaces.NRF52.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      Reserved_0_16  at 0 range 0 .. 16;
      END_START      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
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

   --  Write '1' to Enable interrupt for ENDTX event
   type INTENSET_ENDTX_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDTX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for ENDTX event
   type INTENSET_ENDTX_Field_1 is
     (
      --  Reset value for the field
      Intenset_Endtx_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDTX_Field_1 use
     (Intenset_Endtx_Field_Reset => 0,
      Set => 1);

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

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for STOPPED event
      STOPPED        : INTENSET_STOPPED_Field_1 :=
                        Intenset_Stopped_Field_Reset;
      --  unspecified
      Reserved_2_3   : Interfaces.NRF52.UInt2 := 16#0#;
      --  Write '1' to Enable interrupt for ENDRX event
      ENDRX          : INTENSET_ENDRX_Field_1 := Intenset_Endrx_Field_Reset;
      --  unspecified
      Reserved_5_5   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for END event
      END_k          : INTENSET_END_Field_1 := Intenset_End_Field_Reset;
      --  unspecified
      Reserved_7_7   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for ENDTX event
      ENDTX          : INTENSET_ENDTX_Field_1 := Intenset_Endtx_Field_Reset;
      --  unspecified
      Reserved_9_18  : Interfaces.NRF52.UInt10 := 16#0#;
      --  Write '1' to Enable interrupt for STARTED event
      STARTED        : INTENSET_STARTED_Field_1 :=
                        Intenset_Started_Field_Reset;
      --  unspecified
      Reserved_20_31 : Interfaces.NRF52.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ENDRX          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      END_k          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ENDTX          at 0 range 8 .. 8;
      Reserved_9_18  at 0 range 9 .. 18;
      STARTED        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
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

   --  Write '1' to Disable interrupt for ENDTX event
   type INTENCLR_ENDTX_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDTX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for ENDTX event
   type INTENCLR_ENDTX_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Endtx_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDTX_Field_1 use
     (Intenclr_Endtx_Field_Reset => 0,
      Clear => 1);

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

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for STOPPED event
      STOPPED        : INTENCLR_STOPPED_Field_1 :=
                        Intenclr_Stopped_Field_Reset;
      --  unspecified
      Reserved_2_3   : Interfaces.NRF52.UInt2 := 16#0#;
      --  Write '1' to Disable interrupt for ENDRX event
      ENDRX          : INTENCLR_ENDRX_Field_1 := Intenclr_Endrx_Field_Reset;
      --  unspecified
      Reserved_5_5   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for END event
      END_k          : INTENCLR_END_Field_1 := Intenclr_End_Field_Reset;
      --  unspecified
      Reserved_7_7   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for ENDTX event
      ENDTX          : INTENCLR_ENDTX_Field_1 := Intenclr_Endtx_Field_Reset;
      --  unspecified
      Reserved_9_18  : Interfaces.NRF52.UInt10 := 16#0#;
      --  Write '1' to Disable interrupt for STARTED event
      STARTED        : INTENCLR_STARTED_Field_1 :=
                        Intenclr_Started_Field_Reset;
      --  unspecified
      Reserved_20_31 : Interfaces.NRF52.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ENDRX          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      END_k          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ENDTX          at 0 range 8 .. 8;
      Reserved_9_18  at 0 range 9 .. 18;
      STARTED        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Stall status for EasyDMA RAM reads
   type STALLSTAT_TX_Field is
     (
      --  No stall
      Nostall,
      --  A stall has occurred
      Stall)
     with Size => 1;
   for STALLSTAT_TX_Field use
     (Nostall => 0,
      Stall => 1);

   --  Stall status for EasyDMA RAM writes
   type STALLSTAT_RX_Field is
     (
      --  No stall
      Nostall,
      --  A stall has occurred
      Stall)
     with Size => 1;
   for STALLSTAT_RX_Field use
     (Nostall => 0,
      Stall => 1);

   --  Stall status for EasyDMA RAM accesses. The fields in this register is
   --  set to STALL by hardware whenever a stall occurres and can be cleared
   --  (set to NOSTALL) by the CPU.
   type STALLSTAT_Register is record
      --  Stall status for EasyDMA RAM reads
      TX            : STALLSTAT_TX_Field := Interfaces.NRF52.SPIM.Nostall;
      --  Stall status for EasyDMA RAM writes
      RX            : STALLSTAT_RX_Field := Interfaces.NRF52.SPIM.Nostall;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STALLSTAT_Register use record
      TX            at 0 range 0 .. 0;
      RX            at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Enable or disable SPIM
   type ENABLE_ENABLE_Field is
     (
      --  Disable SPIM
      Disabled,
      --  Enable SPIM
      Enabled)
     with Size => 4;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 7);

   --  Enable SPIM
   type ENABLE_Register is record
      --  Enable or disable SPIM
      ENABLE        : ENABLE_ENABLE_Field := Interfaces.NRF52.SPIM.Disabled;
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
   -- SPIM_PSEL cluster's Registers --
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
      CONNECT       : SCK_CONNECT_Field := Interfaces.NRF52.SPIM.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCK_PSEL_Register use record
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
                       Interfaces.NRF52.SPIM.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOSI_PSEL_Register use record
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
                       Interfaces.NRF52.SPIM.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISO_PSEL_Register use record
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

   --  Pin select for CSN
   type CSN_PSEL_Register is record
      --  Pin number
      PIN           : CSN_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : CSN_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : CSN_CONNECT_Field := Interfaces.NRF52.SPIM.Disconnected;
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
   type SPIM_PSEL_Cluster is record
      --  Pin select for SCK
      SCK  : aliased SCK_PSEL_Register;
      --  Pin select for MOSI signal
      MOSI : aliased MOSI_PSEL_Register;
      --  Pin select for MISO signal
      MISO : aliased MISO_PSEL_Register;
      --  Pin select for CSN
      CSN  : aliased CSN_PSEL_Register;
   end record
     with Volatile, Size => 128;

   for SPIM_PSEL_Cluster use record
      SCK  at 16#0# range 0 .. 31;
      MOSI at 16#4# range 0 .. 31;
      MISO at 16#8# range 0 .. 31;
      CSN  at 16#C# range 0 .. 31;
   end record;

   ----------------------------------
   -- SPIM_RXD cluster's Registers --
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

   --  Number of bytes transferred in the last transaction
   type AMOUNT_RXD_Register is record
      --  Read-only. Number of bytes transferred in the last transaction
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

   --  List type
   type LIST_LIST_Field is
     (
      --  Disable EasyDMA list
      Disabled,
      --  Use array list
      Arraylist)
     with Size => 2;
   for LIST_LIST_Field use
     (Disabled => 0,
      Arraylist => 1);

   --  EasyDMA list type
   type LIST_RXD_Register is record
      --  List type
      LIST          : LIST_LIST_Field := Interfaces.NRF52.SPIM.Disabled;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIST_RXD_Register use record
      LIST          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RXD EasyDMA channel
   type SPIM_RXD_Cluster is record
      --  Data pointer
      PTR    : aliased Interfaces.NRF52.UInt32;
      --  Maximum number of bytes in receive buffer
      MAXCNT : aliased MAXCNT_RXD_Register;
      --  Number of bytes transferred in the last transaction
      AMOUNT : aliased AMOUNT_RXD_Register;
      --  EasyDMA list type
      LIST   : aliased LIST_RXD_Register;
   end record
     with Volatile, Size => 128;

   for SPIM_RXD_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
      LIST   at 16#C# range 0 .. 31;
   end record;

   ----------------------------------
   -- SPIM_TXD cluster's Registers --
   ----------------------------------

   subtype MAXCNT_TXD_MAXCNT_Field is Interfaces.NRF52.UInt16;

   --  Number of bytes in transmit buffer
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

   --  Number of bytes transferred in the last transaction
   type AMOUNT_TXD_Register is record
      --  Read-only. Number of bytes transferred in the last transaction
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

   --  EasyDMA list type
   type LIST_TXD_Register is record
      --  List type
      LIST          : LIST_LIST_Field := Interfaces.NRF52.SPIM.Disabled;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIST_TXD_Register use record
      LIST          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  TXD EasyDMA channel
   type SPIM_TXD_Cluster is record
      --  Data pointer
      PTR    : aliased Interfaces.NRF52.UInt32;
      --  Number of bytes in transmit buffer
      MAXCNT : aliased MAXCNT_TXD_Register;
      --  Number of bytes transferred in the last transaction
      AMOUNT : aliased AMOUNT_TXD_Register;
      --  EasyDMA list type
      LIST   : aliased LIST_TXD_Register;
   end record
     with Volatile, Size => 128;

   for SPIM_TXD_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
      LIST   at 16#C# range 0 .. 31;
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
      ORDER         : CONFIG_ORDER_Field := Interfaces.NRF52.SPIM.Msbfirst;
      --  Serial clock (SCK) phase
      CPHA          : CONFIG_CPHA_Field := Interfaces.NRF52.SPIM.Leading;
      --  Serial clock (SCK) polarity
      CPOL          : CONFIG_CPOL_Field := Interfaces.NRF52.SPIM.Activehigh;
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

   ---------------------------------------
   -- SPIM_IFTIMING cluster's Registers --
   ---------------------------------------

   subtype RXDELAY_IFTIMING_RXDELAY_Field is Interfaces.NRF52.UInt3;

   --  Sample delay for input serial data on MISO
   type RXDELAY_IFTIMING_Register is record
      --  Sample delay for input serial data on MISO. The value specifies the
      --  number of 64 MHz clock cycles (15.625 ns) delay from the the sampling
      --  edge of SCK (leading edge for CONFIG.CPHA = 0, trailing edge for
      --  CONFIG.CPHA = 1) until the input serial data is sampled. As en
      --  example, if RXDELAY = 0 and CONFIG.CPHA = 0, the input serial data is
      --  sampled on the rising edge of SCK.
      RXDELAY       : RXDELAY_IFTIMING_RXDELAY_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDELAY_IFTIMING_Register use record
      RXDELAY       at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CSNDUR_IFTIMING_CSNDUR_Field is Interfaces.NRF52.Byte;

   --  Minimum duration between edge of CSN and edge of SCK and minimum
   --  duration CSN must stay high between transactions
   type CSNDUR_IFTIMING_Register is record
      --  Minimum duration between edge of CSN and edge of SCK and minimum
      --  duration CSN must stay high between transactions. The value is
      --  specified in number of 64 MHz clock cycles (15.625 ns).
      CSNDUR        : CSNDUR_IFTIMING_CSNDUR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSNDUR_IFTIMING_Register use record
      CSNDUR        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Unspecified
   type SPIM_IFTIMING_Cluster is record
      --  Sample delay for input serial data on MISO
      RXDELAY : aliased RXDELAY_IFTIMING_Register;
      --  Minimum duration between edge of CSN and edge of SCK and minimum
      --  duration CSN must stay high between transactions
      CSNDUR  : aliased CSNDUR_IFTIMING_Register;
   end record
     with Volatile, Size => 64;

   for SPIM_IFTIMING_Cluster use record
      RXDELAY at 16#0# range 0 .. 31;
      CSNDUR  at 16#4# range 0 .. 31;
   end record;

   --  Polarity of CSN output
   type CSNPOL_CSNPOL_Field is
     (
      --  Active low (idle state high)
      Low,
      --  Active high (idle state low)
      High)
     with Size => 1;
   for CSNPOL_CSNPOL_Field use
     (Low => 0,
      High => 1);

   --  Polarity of CSN output
   type CSNPOL_Register is record
      --  Polarity of CSN output
      CSNPOL        : CSNPOL_CSNPOL_Field := Interfaces.NRF52.SPIM.Low;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSNPOL_Register use record
      CSNPOL        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PSELDCX_PIN_Field is Interfaces.NRF52.UInt5;
   subtype PSELDCX_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type PSELDCX_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for PSELDCX_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for DCX signal
   type PSELDCX_Register is record
      --  Pin number
      PIN           : PSELDCX_PIN_Field := 16#1F#;
      --  Port number
      PORT          : PSELDCX_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : PSELDCX_CONNECT_Field :=
                       Interfaces.NRF52.SPIM.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSELDCX_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype DCXCNT_DCXCNT_Field is Interfaces.NRF52.UInt4;

   --  DCX configuration
   type DCXCNT_Register is record
      --  This register specifies the number of command bytes preceding the
      --  data bytes. The PSEL.DCX line will be low during transmission of
      --  command bytes and high during transmission of data bytes. Value 0xF
      --  indicates that all bytes are command bytes.
      DCXCNT        : DCXCNT_DCXCNT_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCXCNT_Register use record
      DCXCNT        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ORC_ORC_Field is Interfaces.NRF52.Byte;

   --  Byte transmitted after TXD.MAXCNT bytes have been transmitted in the
   --  case when RXD.MAXCNT is greater than TXD.MAXCNT
   type ORC_Register is record
      --  Byte transmitted after TXD.MAXCNT bytes have been transmitted in the
      --  case when RXD.MAXCNT is greater than TXD.MAXCNT.
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
   -- SPIM_PSEL cluster's Registers --
   -----------------------------------

   ----------------------------------
   -- SPIM_RXD cluster's Registers --
   ----------------------------------

   ----------------------------------
   -- SPIM_TXD cluster's Registers --
   ----------------------------------

   ---------------------------------------
   -- SPIM_IFTIMING cluster's Registers --
   ---------------------------------------

   -----------------------------------
   -- SPIM_PSEL cluster's Registers --
   -----------------------------------

   ----------------------------------
   -- SPIM_RXD cluster's Registers --
   ----------------------------------

   ----------------------------------
   -- SPIM_TXD cluster's Registers --
   ----------------------------------

   ---------------------------------------
   -- SPIM_IFTIMING cluster's Registers --
   ---------------------------------------

   -----------------------------------
   -- SPIM_PSEL cluster's Registers --
   -----------------------------------

   ----------------------------------
   -- SPIM_RXD cluster's Registers --
   ----------------------------------

   ----------------------------------
   -- SPIM_TXD cluster's Registers --
   ----------------------------------

   ---------------------------------------
   -- SPIM_IFTIMING cluster's Registers --
   ---------------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface Master with EasyDMA 0
   type SPIM_Peripheral is record
      --  Start SPI transaction
      TASKS_START    : aliased Interfaces.NRF52.UInt32;
      --  Stop SPI transaction
      TASKS_STOP     : aliased Interfaces.NRF52.UInt32;
      --  Suspend SPI transaction
      TASKS_SUSPEND  : aliased Interfaces.NRF52.UInt32;
      --  Resume SPI transaction
      TASKS_RESUME   : aliased Interfaces.NRF52.UInt32;
      --  SPI transaction has stopped
      EVENTS_STOPPED : aliased Interfaces.NRF52.UInt32;
      --  End of RXD buffer reached
      EVENTS_ENDRX   : aliased Interfaces.NRF52.UInt32;
      --  End of RXD buffer and TXD buffer reached
      EVENTS_END     : aliased Interfaces.NRF52.UInt32;
      --  End of TXD buffer reached
      EVENTS_ENDTX   : aliased Interfaces.NRF52.UInt32;
      --  Transaction started
      EVENTS_STARTED : aliased Interfaces.NRF52.UInt32;
      --  Shortcut register
      SHORTS         : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET       : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR       : aliased INTENCLR_Register;
      --  Stall status for EasyDMA RAM accesses. The fields in this register is
      --  set to STALL by hardware whenever a stall occurres and can be cleared
      --  (set to NOSTALL) by the CPU.
      STALLSTAT      : aliased STALLSTAT_Register;
      --  Enable SPIM
      ENABLE         : aliased ENABLE_Register;
      --  Unspecified
      PSEL           : aliased SPIM_PSEL_Cluster;
      --  SPI frequency. Accuracy depends on the HFCLK source selected.
      FREQUENCY      : aliased Interfaces.NRF52.UInt32;
      --  RXD EasyDMA channel
      RXD            : aliased SPIM_RXD_Cluster;
      --  TXD EasyDMA channel
      TXD            : aliased SPIM_TXD_Cluster;
      --  Configuration register
      CONFIG         : aliased CONFIG_Register;
      --  Unspecified
      IFTIMING       : aliased SPIM_IFTIMING_Cluster;
      --  Polarity of CSN output
      CSNPOL         : aliased CSNPOL_Register;
      --  Pin select for DCX signal
      PSELDCX        : aliased PSELDCX_Register;
      --  DCX configuration
      DCXCNT         : aliased DCXCNT_Register;
      --  Byte transmitted after TXD.MAXCNT bytes have been transmitted in the
      --  case when RXD.MAXCNT is greater than TXD.MAXCNT
      ORC            : aliased ORC_Register;
   end record
     with Volatile;

   for SPIM_Peripheral use record
      TASKS_START    at 16#10# range 0 .. 31;
      TASKS_STOP     at 16#14# range 0 .. 31;
      TASKS_SUSPEND  at 16#1C# range 0 .. 31;
      TASKS_RESUME   at 16#20# range 0 .. 31;
      EVENTS_STOPPED at 16#104# range 0 .. 31;
      EVENTS_ENDRX   at 16#110# range 0 .. 31;
      EVENTS_END     at 16#118# range 0 .. 31;
      EVENTS_ENDTX   at 16#120# range 0 .. 31;
      EVENTS_STARTED at 16#14C# range 0 .. 31;
      SHORTS         at 16#200# range 0 .. 31;
      INTENSET       at 16#304# range 0 .. 31;
      INTENCLR       at 16#308# range 0 .. 31;
      STALLSTAT      at 16#400# range 0 .. 31;
      ENABLE         at 16#500# range 0 .. 31;
      PSEL           at 16#508# range 0 .. 127;
      FREQUENCY      at 16#524# range 0 .. 31;
      RXD            at 16#534# range 0 .. 127;
      TXD            at 16#544# range 0 .. 127;
      CONFIG         at 16#554# range 0 .. 31;
      IFTIMING       at 16#560# range 0 .. 63;
      CSNPOL         at 16#568# range 0 .. 31;
      PSELDCX        at 16#56C# range 0 .. 31;
      DCXCNT         at 16#570# range 0 .. 31;
      ORC            at 16#5C0# range 0 .. 31;
   end record;

   --  Serial Peripheral Interface Master with EasyDMA 0
   SPIM0_Periph : aliased SPIM_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

   --  Serial Peripheral Interface Master with EasyDMA 1
   SPIM1_Periph : aliased SPIM_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

   --  Serial Peripheral Interface Master with EasyDMA 2
   SPIM2_Periph : aliased SPIM_Peripheral
     with Import, Address => System'To_Address (16#40023000#);

   --  Serial Peripheral Interface Master with EasyDMA 3
   SPIM3_Periph : aliased SPIM_Peripheral
     with Import, Address => System'To_Address (16#4002F000#);

end Interfaces.NRF52.SPIM;
