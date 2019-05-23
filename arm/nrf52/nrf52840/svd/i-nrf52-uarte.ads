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

package Interfaces.NRF52.UARTE is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Shortcut between ENDRX event and STARTRX task
   type SHORTS_ENDRX_STARTRX_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_ENDRX_STARTRX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between ENDRX event and STOPRX task
   type SHORTS_ENDRX_STOPRX_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_ENDRX_STOPRX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut register
   type SHORTS_Register is record
      --  unspecified
      Reserved_0_4  : Interfaces.NRF52.UInt5 := 16#0#;
      --  Shortcut between ENDRX event and STARTRX task
      ENDRX_STARTRX : SHORTS_ENDRX_STARTRX_Field :=
                       Interfaces.NRF52.UARTE.Disabled;
      --  Shortcut between ENDRX event and STOPRX task
      ENDRX_STOPRX  : SHORTS_ENDRX_STOPRX_Field :=
                       Interfaces.NRF52.UARTE.Disabled;
      --  unspecified
      Reserved_7_31 : Interfaces.NRF52.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      Reserved_0_4  at 0 range 0 .. 4;
      ENDRX_STARTRX at 0 range 5 .. 5;
      ENDRX_STOPRX  at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Enable or disable interrupt for CTS event
   type INTEN_CTS_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CTS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for NCTS event
   type INTEN_NCTS_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_NCTS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for RXDRDY event
   type INTEN_RXDRDY_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_RXDRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for ENDRX event
   type INTEN_ENDRX_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_ENDRX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for TXDRDY event
   type INTEN_TXDRDY_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_TXDRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for ENDTX event
   type INTEN_ENDTX_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_ENDTX_Field use
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

   --  Enable or disable interrupt for RXTO event
   type INTEN_RXTO_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_RXTO_Field use
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

   --  Enable or disable interrupt for TXSTOPPED event
   type INTEN_TXSTOPPED_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_TXSTOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  Enable or disable interrupt for CTS event
      CTS            : INTEN_CTS_Field := Interfaces.NRF52.UARTE.Disabled;
      --  Enable or disable interrupt for NCTS event
      NCTS           : INTEN_NCTS_Field := Interfaces.NRF52.UARTE.Disabled;
      --  Enable or disable interrupt for RXDRDY event
      RXDRDY         : INTEN_RXDRDY_Field := Interfaces.NRF52.UARTE.Disabled;
      --  unspecified
      Reserved_3_3   : Interfaces.NRF52.Bit := 16#0#;
      --  Enable or disable interrupt for ENDRX event
      ENDRX          : INTEN_ENDRX_Field := Interfaces.NRF52.UARTE.Disabled;
      --  unspecified
      Reserved_5_6   : Interfaces.NRF52.UInt2 := 16#0#;
      --  Enable or disable interrupt for TXDRDY event
      TXDRDY         : INTEN_TXDRDY_Field := Interfaces.NRF52.UARTE.Disabled;
      --  Enable or disable interrupt for ENDTX event
      ENDTX          : INTEN_ENDTX_Field := Interfaces.NRF52.UARTE.Disabled;
      --  Enable or disable interrupt for ERROR event
      ERROR          : INTEN_ERROR_Field := Interfaces.NRF52.UARTE.Disabled;
      --  unspecified
      Reserved_10_16 : Interfaces.NRF52.UInt7 := 16#0#;
      --  Enable or disable interrupt for RXTO event
      RXTO           : INTEN_RXTO_Field := Interfaces.NRF52.UARTE.Disabled;
      --  unspecified
      Reserved_18_18 : Interfaces.NRF52.Bit := 16#0#;
      --  Enable or disable interrupt for RXSTARTED event
      RXSTARTED      : INTEN_RXSTARTED_Field :=
                        Interfaces.NRF52.UARTE.Disabled;
      --  Enable or disable interrupt for TXSTARTED event
      TXSTARTED      : INTEN_TXSTARTED_Field :=
                        Interfaces.NRF52.UARTE.Disabled;
      --  unspecified
      Reserved_21_21 : Interfaces.NRF52.Bit := 16#0#;
      --  Enable or disable interrupt for TXSTOPPED event
      TXSTOPPED      : INTEN_TXSTOPPED_Field :=
                        Interfaces.NRF52.UARTE.Disabled;
      --  unspecified
      Reserved_23_31 : Interfaces.NRF52.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      CTS            at 0 range 0 .. 0;
      NCTS           at 0 range 1 .. 1;
      RXDRDY         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      TXDRDY         at 0 range 7 .. 7;
      ENDTX          at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      RXTO           at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      RXSTARTED      at 0 range 19 .. 19;
      TXSTARTED      at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      TXSTOPPED      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Write '1' to Enable interrupt for CTS event
   type INTENSET_CTS_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CTS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for CTS event
   type INTENSET_CTS_Field_1 is
     (
      --  Reset value for the field
      Intenset_Cts_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CTS_Field_1 use
     (Intenset_Cts_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for NCTS event
   type INTENSET_NCTS_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_NCTS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for NCTS event
   type INTENSET_NCTS_Field_1 is
     (
      --  Reset value for the field
      Intenset_Ncts_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_NCTS_Field_1 use
     (Intenset_Ncts_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for RXDRDY event
   type INTENSET_RXDRDY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXDRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for RXDRDY event
   type INTENSET_RXDRDY_Field_1 is
     (
      --  Reset value for the field
      Intenset_Rxdrdy_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXDRDY_Field_1 use
     (Intenset_Rxdrdy_Field_Reset => 0,
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

   --  Write '1' to Enable interrupt for TXDRDY event
   type INTENSET_TXDRDY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TXDRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for TXDRDY event
   type INTENSET_TXDRDY_Field_1 is
     (
      --  Reset value for the field
      Intenset_Txdrdy_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TXDRDY_Field_1 use
     (Intenset_Txdrdy_Field_Reset => 0,
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

   --  Write '1' to Enable interrupt for RXTO event
   type INTENSET_RXTO_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXTO_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for RXTO event
   type INTENSET_RXTO_Field_1 is
     (
      --  Reset value for the field
      Intenset_Rxto_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXTO_Field_1 use
     (Intenset_Rxto_Field_Reset => 0,
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

   --  Write '1' to Enable interrupt for TXSTOPPED event
   type INTENSET_TXSTOPPED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TXSTOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for TXSTOPPED event
   type INTENSET_TXSTOPPED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Txstopped_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TXSTOPPED_Field_1 use
     (Intenset_Txstopped_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to Enable interrupt for CTS event
      CTS            : INTENSET_CTS_Field_1 := Intenset_Cts_Field_Reset;
      --  Write '1' to Enable interrupt for NCTS event
      NCTS           : INTENSET_NCTS_Field_1 := Intenset_Ncts_Field_Reset;
      --  Write '1' to Enable interrupt for RXDRDY event
      RXDRDY         : INTENSET_RXDRDY_Field_1 := Intenset_Rxdrdy_Field_Reset;
      --  unspecified
      Reserved_3_3   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for ENDRX event
      ENDRX          : INTENSET_ENDRX_Field_1 := Intenset_Endrx_Field_Reset;
      --  unspecified
      Reserved_5_6   : Interfaces.NRF52.UInt2 := 16#0#;
      --  Write '1' to Enable interrupt for TXDRDY event
      TXDRDY         : INTENSET_TXDRDY_Field_1 := Intenset_Txdrdy_Field_Reset;
      --  Write '1' to Enable interrupt for ENDTX event
      ENDTX          : INTENSET_ENDTX_Field_1 := Intenset_Endtx_Field_Reset;
      --  Write '1' to Enable interrupt for ERROR event
      ERROR          : INTENSET_ERROR_Field_1 := Intenset_Error_Field_Reset;
      --  unspecified
      Reserved_10_16 : Interfaces.NRF52.UInt7 := 16#0#;
      --  Write '1' to Enable interrupt for RXTO event
      RXTO           : INTENSET_RXTO_Field_1 := Intenset_Rxto_Field_Reset;
      --  unspecified
      Reserved_18_18 : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for RXSTARTED event
      RXSTARTED      : INTENSET_RXSTARTED_Field_1 :=
                        Intenset_Rxstarted_Field_Reset;
      --  Write '1' to Enable interrupt for TXSTARTED event
      TXSTARTED      : INTENSET_TXSTARTED_Field_1 :=
                        Intenset_Txstarted_Field_Reset;
      --  unspecified
      Reserved_21_21 : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for TXSTOPPED event
      TXSTOPPED      : INTENSET_TXSTOPPED_Field_1 :=
                        Intenset_Txstopped_Field_Reset;
      --  unspecified
      Reserved_23_31 : Interfaces.NRF52.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      CTS            at 0 range 0 .. 0;
      NCTS           at 0 range 1 .. 1;
      RXDRDY         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      TXDRDY         at 0 range 7 .. 7;
      ENDTX          at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      RXTO           at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      RXSTARTED      at 0 range 19 .. 19;
      TXSTARTED      at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      TXSTOPPED      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Write '1' to Disable interrupt for CTS event
   type INTENCLR_CTS_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CTS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for CTS event
   type INTENCLR_CTS_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Cts_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CTS_Field_1 use
     (Intenclr_Cts_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for NCTS event
   type INTENCLR_NCTS_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_NCTS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for NCTS event
   type INTENCLR_NCTS_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Ncts_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_NCTS_Field_1 use
     (Intenclr_Ncts_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for RXDRDY event
   type INTENCLR_RXDRDY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXDRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for RXDRDY event
   type INTENCLR_RXDRDY_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Rxdrdy_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXDRDY_Field_1 use
     (Intenclr_Rxdrdy_Field_Reset => 0,
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

   --  Write '1' to Disable interrupt for TXDRDY event
   type INTENCLR_TXDRDY_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TXDRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for TXDRDY event
   type INTENCLR_TXDRDY_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Txdrdy_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TXDRDY_Field_1 use
     (Intenclr_Txdrdy_Field_Reset => 0,
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

   --  Write '1' to Disable interrupt for RXTO event
   type INTENCLR_RXTO_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXTO_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for RXTO event
   type INTENCLR_RXTO_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Rxto_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXTO_Field_1 use
     (Intenclr_Rxto_Field_Reset => 0,
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

   --  Write '1' to Disable interrupt for TXSTOPPED event
   type INTENCLR_TXSTOPPED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TXSTOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for TXSTOPPED event
   type INTENCLR_TXSTOPPED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Txstopped_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TXSTOPPED_Field_1 use
     (Intenclr_Txstopped_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to Disable interrupt for CTS event
      CTS            : INTENCLR_CTS_Field_1 := Intenclr_Cts_Field_Reset;
      --  Write '1' to Disable interrupt for NCTS event
      NCTS           : INTENCLR_NCTS_Field_1 := Intenclr_Ncts_Field_Reset;
      --  Write '1' to Disable interrupt for RXDRDY event
      RXDRDY         : INTENCLR_RXDRDY_Field_1 := Intenclr_Rxdrdy_Field_Reset;
      --  unspecified
      Reserved_3_3   : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for ENDRX event
      ENDRX          : INTENCLR_ENDRX_Field_1 := Intenclr_Endrx_Field_Reset;
      --  unspecified
      Reserved_5_6   : Interfaces.NRF52.UInt2 := 16#0#;
      --  Write '1' to Disable interrupt for TXDRDY event
      TXDRDY         : INTENCLR_TXDRDY_Field_1 := Intenclr_Txdrdy_Field_Reset;
      --  Write '1' to Disable interrupt for ENDTX event
      ENDTX          : INTENCLR_ENDTX_Field_1 := Intenclr_Endtx_Field_Reset;
      --  Write '1' to Disable interrupt for ERROR event
      ERROR          : INTENCLR_ERROR_Field_1 := Intenclr_Error_Field_Reset;
      --  unspecified
      Reserved_10_16 : Interfaces.NRF52.UInt7 := 16#0#;
      --  Write '1' to Disable interrupt for RXTO event
      RXTO           : INTENCLR_RXTO_Field_1 := Intenclr_Rxto_Field_Reset;
      --  unspecified
      Reserved_18_18 : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for RXSTARTED event
      RXSTARTED      : INTENCLR_RXSTARTED_Field_1 :=
                        Intenclr_Rxstarted_Field_Reset;
      --  Write '1' to Disable interrupt for TXSTARTED event
      TXSTARTED      : INTENCLR_TXSTARTED_Field_1 :=
                        Intenclr_Txstarted_Field_Reset;
      --  unspecified
      Reserved_21_21 : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for TXSTOPPED event
      TXSTOPPED      : INTENCLR_TXSTOPPED_Field_1 :=
                        Intenclr_Txstopped_Field_Reset;
      --  unspecified
      Reserved_23_31 : Interfaces.NRF52.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      CTS            at 0 range 0 .. 0;
      NCTS           at 0 range 1 .. 1;
      RXDRDY         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      TXDRDY         at 0 range 7 .. 7;
      ENDTX          at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      RXTO           at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      RXSTARTED      at 0 range 19 .. 19;
      TXSTARTED      at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      TXSTOPPED      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Overrun error
   type ERRORSRC_OVERRUN_Field is
     (
      --  Read: error not present
      Notpresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_OVERRUN_Field use
     (Notpresent => 0,
      Present => 1);

   --  Parity error
   type ERRORSRC_PARITY_Field is
     (
      --  Read: error not present
      Notpresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_PARITY_Field use
     (Notpresent => 0,
      Present => 1);

   --  Framing error occurred
   type ERRORSRC_FRAMING_Field is
     (
      --  Read: error not present
      Notpresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_FRAMING_Field use
     (Notpresent => 0,
      Present => 1);

   --  Break condition
   type ERRORSRC_BREAK_Field is
     (
      --  Read: error not present
      Notpresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_BREAK_Field use
     (Notpresent => 0,
      Present => 1);

   --  Error source Note : this register is read / write one to clear.
   type ERRORSRC_Register is record
      --  Overrun error
      OVERRUN       : ERRORSRC_OVERRUN_Field :=
                       Interfaces.NRF52.UARTE.Notpresent;
      --  Parity error
      PARITY        : ERRORSRC_PARITY_Field :=
                       Interfaces.NRF52.UARTE.Notpresent;
      --  Framing error occurred
      FRAMING       : ERRORSRC_FRAMING_Field :=
                       Interfaces.NRF52.UARTE.Notpresent;
      --  Break condition
      BREAK         : ERRORSRC_BREAK_Field :=
                       Interfaces.NRF52.UARTE.Notpresent;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRORSRC_Register use record
      OVERRUN       at 0 range 0 .. 0;
      PARITY        at 0 range 1 .. 1;
      FRAMING       at 0 range 2 .. 2;
      BREAK         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Enable or disable UARTE
   type ENABLE_ENABLE_Field is
     (
      --  Disable UARTE
      Disabled,
      --  Enable UARTE
      Enabled)
     with Size => 4;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 8);

   --  Enable UART
   type ENABLE_Register is record
      --  Enable or disable UARTE
      ENABLE        : ENABLE_ENABLE_Field := Interfaces.NRF52.UARTE.Disabled;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   ------------------------------------
   -- UARTE_PSEL cluster's Registers --
   ------------------------------------

   subtype RTS_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype RTS_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type RTS_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for RTS_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for RTS signal
   type RTS_PSEL_Register is record
      --  Pin number
      PIN           : RTS_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : RTS_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : RTS_CONNECT_Field :=
                       Interfaces.NRF52.UARTE.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTS_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype TXD_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype TXD_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type TXD_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for TXD_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for TXD signal
   type TXD_PSEL_Register is record
      --  Pin number
      PIN           : TXD_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : TXD_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : TXD_CONNECT_Field :=
                       Interfaces.NRF52.UARTE.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXD_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype CTS_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype CTS_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type CTS_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for CTS_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for CTS signal
   type CTS_PSEL_Register is record
      --  Pin number
      PIN           : CTS_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : CTS_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : CTS_CONNECT_Field :=
                       Interfaces.NRF52.UARTE.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTS_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype RXD_PSEL_PIN_Field is Interfaces.NRF52.UInt5;
   subtype RXD_PSEL_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type RXD_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for RXD_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for RXD signal
   type RXD_PSEL_Register is record
      --  Pin number
      PIN           : RXD_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : RXD_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : RXD_CONNECT_Field :=
                       Interfaces.NRF52.UARTE.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXD_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type UARTE_PSEL_Cluster is record
      --  Pin select for RTS signal
      RTS : aliased RTS_PSEL_Register;
      --  Pin select for TXD signal
      TXD : aliased TXD_PSEL_Register;
      --  Pin select for CTS signal
      CTS : aliased CTS_PSEL_Register;
      --  Pin select for RXD signal
      RXD : aliased RXD_PSEL_Register;
   end record
     with Volatile, Size => 128;

   for UARTE_PSEL_Cluster use record
      RTS at 16#0# range 0 .. 31;
      TXD at 16#4# range 0 .. 31;
      CTS at 16#8# range 0 .. 31;
      RXD at 16#C# range 0 .. 31;
   end record;

   -----------------------------------
   -- UARTE_RXD cluster's Registers --
   -----------------------------------

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

   --  RXD EasyDMA channel
   type UARTE_RXD_Cluster is record
      --  Data pointer
      PTR    : aliased Interfaces.NRF52.UInt32;
      --  Maximum number of bytes in receive buffer
      MAXCNT : aliased MAXCNT_RXD_Register;
      --  Number of bytes transferred in the last transaction
      AMOUNT : aliased AMOUNT_RXD_Register;
   end record
     with Volatile, Size => 96;

   for UARTE_RXD_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   -----------------------------------
   -- UARTE_TXD cluster's Registers --
   -----------------------------------

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

   --  TXD EasyDMA channel
   type UARTE_TXD_Cluster is record
      --  Data pointer
      PTR    : aliased Interfaces.NRF52.UInt32;
      --  Maximum number of bytes in transmit buffer
      MAXCNT : aliased MAXCNT_TXD_Register;
      --  Number of bytes transferred in the last transaction
      AMOUNT : aliased AMOUNT_TXD_Register;
   end record
     with Volatile, Size => 96;

   for UARTE_TXD_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   --  Hardware flow control
   type CONFIG_HWFC_Field is
     (
      --  Disabled
      Disabled,
      --  Enabled
      Enabled)
     with Size => 1;
   for CONFIG_HWFC_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Parity
   type CONFIG_PARITY_Field is
     (
      --  Exclude parity bit
      Excluded,
      --  Include even parity bit
      Included)
     with Size => 3;
   for CONFIG_PARITY_Field use
     (Excluded => 0,
      Included => 7);

   --  Stop bits
   type CONFIG_STOP_Field is
     (
      --  One stop bit
      One,
      --  Two stop bits
      Two)
     with Size => 1;
   for CONFIG_STOP_Field use
     (One => 0,
      Two => 1);

   --  Configuration of parity and hardware flow control
   type CONFIG_Register is record
      --  Hardware flow control
      HWFC          : CONFIG_HWFC_Field := Interfaces.NRF52.UARTE.Disabled;
      --  Parity
      PARITY        : CONFIG_PARITY_Field := Interfaces.NRF52.UARTE.Excluded;
      --  Stop bits
      STOP          : CONFIG_STOP_Field := Interfaces.NRF52.UARTE.One;
      --  unspecified
      Reserved_5_31 : Interfaces.NRF52.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      HWFC          at 0 range 0 .. 0;
      PARITY        at 0 range 1 .. 3;
      STOP          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   ------------------------------------
   -- UARTE_PSEL cluster's Registers --
   ------------------------------------

   -----------------------------------
   -- UARTE_RXD cluster's Registers --
   -----------------------------------

   -----------------------------------
   -- UARTE_TXD cluster's Registers --
   -----------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  UART with EasyDMA 0
   type UARTE_Peripheral is record
      --  Start UART receiver
      TASKS_STARTRX    : aliased Interfaces.NRF52.UInt32;
      --  Stop UART receiver
      TASKS_STOPRX     : aliased Interfaces.NRF52.UInt32;
      --  Start UART transmitter
      TASKS_STARTTX    : aliased Interfaces.NRF52.UInt32;
      --  Stop UART transmitter
      TASKS_STOPTX     : aliased Interfaces.NRF52.UInt32;
      --  Flush RX FIFO into RX buffer
      TASKS_FLUSHRX    : aliased Interfaces.NRF52.UInt32;
      --  CTS is activated (set low). Clear To Send.
      EVENTS_CTS       : aliased Interfaces.NRF52.UInt32;
      --  CTS is deactivated (set high). Not Clear To Send.
      EVENTS_NCTS      : aliased Interfaces.NRF52.UInt32;
      --  Data received in RXD (but potentially not yet transferred to Data
      --  RAM)
      EVENTS_RXDRDY    : aliased Interfaces.NRF52.UInt32;
      --  Receive buffer is filled up
      EVENTS_ENDRX     : aliased Interfaces.NRF52.UInt32;
      --  Data sent from TXD
      EVENTS_TXDRDY    : aliased Interfaces.NRF52.UInt32;
      --  Last TX byte transmitted
      EVENTS_ENDTX     : aliased Interfaces.NRF52.UInt32;
      --  Error detected
      EVENTS_ERROR     : aliased Interfaces.NRF52.UInt32;
      --  Receiver timeout
      EVENTS_RXTO      : aliased Interfaces.NRF52.UInt32;
      --  UART receiver has started
      EVENTS_RXSTARTED : aliased Interfaces.NRF52.UInt32;
      --  UART transmitter has started
      EVENTS_TXSTARTED : aliased Interfaces.NRF52.UInt32;
      --  Transmitter stopped
      EVENTS_TXSTOPPED : aliased Interfaces.NRF52.UInt32;
      --  Shortcut register
      SHORTS           : aliased SHORTS_Register;
      --  Enable or disable interrupt
      INTEN            : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET         : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR         : aliased INTENCLR_Register;
      --  Error source Note : this register is read / write one to clear.
      ERRORSRC         : aliased ERRORSRC_Register;
      --  Enable UART
      ENABLE           : aliased ENABLE_Register;
      --  Unspecified
      PSEL             : aliased UARTE_PSEL_Cluster;
      --  Baud rate. Accuracy depends on the HFCLK source selected.
      BAUDRATE         : aliased Interfaces.NRF52.UInt32;
      --  RXD EasyDMA channel
      RXD              : aliased UARTE_RXD_Cluster;
      --  TXD EasyDMA channel
      TXD              : aliased UARTE_TXD_Cluster;
      --  Configuration of parity and hardware flow control
      CONFIG           : aliased CONFIG_Register;
   end record
     with Volatile;

   for UARTE_Peripheral use record
      TASKS_STARTRX    at 16#0# range 0 .. 31;
      TASKS_STOPRX     at 16#4# range 0 .. 31;
      TASKS_STARTTX    at 16#8# range 0 .. 31;
      TASKS_STOPTX     at 16#C# range 0 .. 31;
      TASKS_FLUSHRX    at 16#2C# range 0 .. 31;
      EVENTS_CTS       at 16#100# range 0 .. 31;
      EVENTS_NCTS      at 16#104# range 0 .. 31;
      EVENTS_RXDRDY    at 16#108# range 0 .. 31;
      EVENTS_ENDRX     at 16#110# range 0 .. 31;
      EVENTS_TXDRDY    at 16#11C# range 0 .. 31;
      EVENTS_ENDTX     at 16#120# range 0 .. 31;
      EVENTS_ERROR     at 16#124# range 0 .. 31;
      EVENTS_RXTO      at 16#144# range 0 .. 31;
      EVENTS_RXSTARTED at 16#14C# range 0 .. 31;
      EVENTS_TXSTARTED at 16#150# range 0 .. 31;
      EVENTS_TXSTOPPED at 16#158# range 0 .. 31;
      SHORTS           at 16#200# range 0 .. 31;
      INTEN            at 16#300# range 0 .. 31;
      INTENSET         at 16#304# range 0 .. 31;
      INTENCLR         at 16#308# range 0 .. 31;
      ERRORSRC         at 16#480# range 0 .. 31;
      ENABLE           at 16#500# range 0 .. 31;
      PSEL             at 16#508# range 0 .. 127;
      BAUDRATE         at 16#524# range 0 .. 31;
      RXD              at 16#534# range 0 .. 95;
      TXD              at 16#544# range 0 .. 95;
      CONFIG           at 16#56C# range 0 .. 31;
   end record;

   --  UART with EasyDMA 0
   UARTE0_Periph : aliased UARTE_Peripheral
     with Import, Address => System'To_Address (16#40002000#);

   --  UART with EasyDMA 1
   UARTE1_Periph : aliased UARTE_Peripheral
     with Import, Address => System'To_Address (16#40028000#);

end Interfaces.NRF52.UARTE;
