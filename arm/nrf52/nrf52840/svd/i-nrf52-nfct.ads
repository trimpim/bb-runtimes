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

package Interfaces.NRF52.NFCT is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Shortcut between FIELDDETECTED event and ACTIVATE task
   type SHORTS_FIELDDETECTED_ACTIVATE_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_FIELDDETECTED_ACTIVATE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between FIELDLOST event and SENSE task
   type SHORTS_FIELDLOST_SENSE_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_FIELDLOST_SENSE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between TXFRAMEEND event and ENABLERXDATA task
   type SHORTS_TXFRAMEEND_ENABLERXDATA_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_TXFRAMEEND_ENABLERXDATA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut register
   type SHORTS_Register is record
      --  Shortcut between FIELDDETECTED event and ACTIVATE task
      FIELDDETECTED_ACTIVATE  : SHORTS_FIELDDETECTED_ACTIVATE_Field :=
                                 Interfaces.NRF52.NFCT.Disabled;
      --  Shortcut between FIELDLOST event and SENSE task
      FIELDLOST_SENSE         : SHORTS_FIELDLOST_SENSE_Field :=
                                 Interfaces.NRF52.NFCT.Disabled;
      --  unspecified
      Reserved_2_4            : Interfaces.NRF52.UInt3 := 16#0#;
      --  Shortcut between TXFRAMEEND event and ENABLERXDATA task
      TXFRAMEEND_ENABLERXDATA : SHORTS_TXFRAMEEND_ENABLERXDATA_Field :=
                                 Interfaces.NRF52.NFCT.Disabled;
      --  unspecified
      Reserved_6_31           : Interfaces.NRF52.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      FIELDDETECTED_ACTIVATE  at 0 range 0 .. 0;
      FIELDLOST_SENSE         at 0 range 1 .. 1;
      Reserved_2_4            at 0 range 2 .. 4;
      TXFRAMEEND_ENABLERXDATA at 0 range 5 .. 5;
      Reserved_6_31           at 0 range 6 .. 31;
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

   --  Enable or disable interrupt for FIELDDETECTED event
   type INTEN_FIELDDETECTED_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_FIELDDETECTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for FIELDLOST event
   type INTEN_FIELDLOST_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_FIELDLOST_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for TXFRAMESTART event
   type INTEN_TXFRAMESTART_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_TXFRAMESTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for TXFRAMEEND event
   type INTEN_TXFRAMEEND_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_TXFRAMEEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for RXFRAMESTART event
   type INTEN_RXFRAMESTART_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_RXFRAMESTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for RXFRAMEEND event
   type INTEN_RXFRAMEEND_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_RXFRAMEEND_Field use
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

   --  Enable or disable interrupt for RXERROR event
   type INTEN_RXERROR_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_RXERROR_Field use
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

   --  Enable or disable interrupt for AUTOCOLRESSTARTED event
   type INTEN_AUTOCOLRESSTARTED_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_AUTOCOLRESSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for COLLISION event
   type INTEN_COLLISION_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_COLLISION_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for SELECTED event
   type INTEN_SELECTED_Field is
     (
      --  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_SELECTED_Field use
     (Disabled => 0,
      Enabled => 1);

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

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  Enable or disable interrupt for READY event
      READY             : INTEN_READY_Field := Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for FIELDDETECTED event
      FIELDDETECTED     : INTEN_FIELDDETECTED_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for FIELDLOST event
      FIELDLOST         : INTEN_FIELDLOST_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for TXFRAMESTART event
      TXFRAMESTART      : INTEN_TXFRAMESTART_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for TXFRAMEEND event
      TXFRAMEEND        : INTEN_TXFRAMEEND_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for RXFRAMESTART event
      RXFRAMESTART      : INTEN_RXFRAMESTART_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for RXFRAMEEND event
      RXFRAMEEND        : INTEN_RXFRAMEEND_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for ERROR event
      ERROR             : INTEN_ERROR_Field := Interfaces.NRF52.NFCT.Disabled;
      --  unspecified
      Reserved_8_9      : Interfaces.NRF52.UInt2 := 16#0#;
      --  Enable or disable interrupt for RXERROR event
      RXERROR           : INTEN_RXERROR_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for ENDRX event
      ENDRX             : INTEN_ENDRX_Field := Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for ENDTX event
      ENDTX             : INTEN_ENDTX_Field := Interfaces.NRF52.NFCT.Disabled;
      --  unspecified
      Reserved_13_13    : Interfaces.NRF52.Bit := 16#0#;
      --  Enable or disable interrupt for AUTOCOLRESSTARTED event
      AUTOCOLRESSTARTED : INTEN_AUTOCOLRESSTARTED_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  unspecified
      Reserved_15_17    : Interfaces.NRF52.UInt3 := 16#0#;
      --  Enable or disable interrupt for COLLISION event
      COLLISION         : INTEN_COLLISION_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for SELECTED event
      SELECTED          : INTEN_SELECTED_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  Enable or disable interrupt for STARTED event
      STARTED           : INTEN_STARTED_Field :=
                           Interfaces.NRF52.NFCT.Disabled;
      --  unspecified
      Reserved_21_31    : Interfaces.NRF52.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      READY             at 0 range 0 .. 0;
      FIELDDETECTED     at 0 range 1 .. 1;
      FIELDLOST         at 0 range 2 .. 2;
      TXFRAMESTART      at 0 range 3 .. 3;
      TXFRAMEEND        at 0 range 4 .. 4;
      RXFRAMESTART      at 0 range 5 .. 5;
      RXFRAMEEND        at 0 range 6 .. 6;
      ERROR             at 0 range 7 .. 7;
      Reserved_8_9      at 0 range 8 .. 9;
      RXERROR           at 0 range 10 .. 10;
      ENDRX             at 0 range 11 .. 11;
      ENDTX             at 0 range 12 .. 12;
      Reserved_13_13    at 0 range 13 .. 13;
      AUTOCOLRESSTARTED at 0 range 14 .. 14;
      Reserved_15_17    at 0 range 15 .. 17;
      COLLISION         at 0 range 18 .. 18;
      SELECTED          at 0 range 19 .. 19;
      STARTED           at 0 range 20 .. 20;
      Reserved_21_31    at 0 range 21 .. 31;
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

   --  Write '1' to Enable interrupt for FIELDDETECTED event
   type INTENSET_FIELDDETECTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_FIELDDETECTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for FIELDDETECTED event
   type INTENSET_FIELDDETECTED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Fielddetected_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_FIELDDETECTED_Field_1 use
     (Intenset_Fielddetected_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for FIELDLOST event
   type INTENSET_FIELDLOST_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_FIELDLOST_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for FIELDLOST event
   type INTENSET_FIELDLOST_Field_1 is
     (
      --  Reset value for the field
      Intenset_Fieldlost_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_FIELDLOST_Field_1 use
     (Intenset_Fieldlost_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for TXFRAMESTART event
   type INTENSET_TXFRAMESTART_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TXFRAMESTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for TXFRAMESTART event
   type INTENSET_TXFRAMESTART_Field_1 is
     (
      --  Reset value for the field
      Intenset_Txframestart_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TXFRAMESTART_Field_1 use
     (Intenset_Txframestart_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for TXFRAMEEND event
   type INTENSET_TXFRAMEEND_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TXFRAMEEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for TXFRAMEEND event
   type INTENSET_TXFRAMEEND_Field_1 is
     (
      --  Reset value for the field
      Intenset_Txframeend_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TXFRAMEEND_Field_1 use
     (Intenset_Txframeend_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for RXFRAMESTART event
   type INTENSET_RXFRAMESTART_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXFRAMESTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for RXFRAMESTART event
   type INTENSET_RXFRAMESTART_Field_1 is
     (
      --  Reset value for the field
      Intenset_Rxframestart_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXFRAMESTART_Field_1 use
     (Intenset_Rxframestart_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for RXFRAMEEND event
   type INTENSET_RXFRAMEEND_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXFRAMEEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for RXFRAMEEND event
   type INTENSET_RXFRAMEEND_Field_1 is
     (
      --  Reset value for the field
      Intenset_Rxframeend_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXFRAMEEND_Field_1 use
     (Intenset_Rxframeend_Field_Reset => 0,
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

   --  Write '1' to Enable interrupt for RXERROR event
   type INTENSET_RXERROR_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for RXERROR event
   type INTENSET_RXERROR_Field_1 is
     (
      --  Reset value for the field
      Intenset_Rxerror_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXERROR_Field_1 use
     (Intenset_Rxerror_Field_Reset => 0,
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

   --  Write '1' to Enable interrupt for AUTOCOLRESSTARTED event
   type INTENSET_AUTOCOLRESSTARTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_AUTOCOLRESSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for AUTOCOLRESSTARTED event
   type INTENSET_AUTOCOLRESSTARTED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Autocolresstarted_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_AUTOCOLRESSTARTED_Field_1 use
     (Intenset_Autocolresstarted_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for COLLISION event
   type INTENSET_COLLISION_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_COLLISION_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for COLLISION event
   type INTENSET_COLLISION_Field_1 is
     (
      --  Reset value for the field
      Intenset_Collision_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_COLLISION_Field_1 use
     (Intenset_Collision_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for SELECTED event
   type INTENSET_SELECTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SELECTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for SELECTED event
   type INTENSET_SELECTED_Field_1 is
     (
      --  Reset value for the field
      Intenset_Selected_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SELECTED_Field_1 use
     (Intenset_Selected_Field_Reset => 0,
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
      --  Write '1' to Enable interrupt for READY event
      READY             : INTENSET_READY_Field_1 :=
                           Intenset_Ready_Field_Reset;
      --  Write '1' to Enable interrupt for FIELDDETECTED event
      FIELDDETECTED     : INTENSET_FIELDDETECTED_Field_1 :=
                           Intenset_Fielddetected_Field_Reset;
      --  Write '1' to Enable interrupt for FIELDLOST event
      FIELDLOST         : INTENSET_FIELDLOST_Field_1 :=
                           Intenset_Fieldlost_Field_Reset;
      --  Write '1' to Enable interrupt for TXFRAMESTART event
      TXFRAMESTART      : INTENSET_TXFRAMESTART_Field_1 :=
                           Intenset_Txframestart_Field_Reset;
      --  Write '1' to Enable interrupt for TXFRAMEEND event
      TXFRAMEEND        : INTENSET_TXFRAMEEND_Field_1 :=
                           Intenset_Txframeend_Field_Reset;
      --  Write '1' to Enable interrupt for RXFRAMESTART event
      RXFRAMESTART      : INTENSET_RXFRAMESTART_Field_1 :=
                           Intenset_Rxframestart_Field_Reset;
      --  Write '1' to Enable interrupt for RXFRAMEEND event
      RXFRAMEEND        : INTENSET_RXFRAMEEND_Field_1 :=
                           Intenset_Rxframeend_Field_Reset;
      --  Write '1' to Enable interrupt for ERROR event
      ERROR             : INTENSET_ERROR_Field_1 :=
                           Intenset_Error_Field_Reset;
      --  unspecified
      Reserved_8_9      : Interfaces.NRF52.UInt2 := 16#0#;
      --  Write '1' to Enable interrupt for RXERROR event
      RXERROR           : INTENSET_RXERROR_Field_1 :=
                           Intenset_Rxerror_Field_Reset;
      --  Write '1' to Enable interrupt for ENDRX event
      ENDRX             : INTENSET_ENDRX_Field_1 :=
                           Intenset_Endrx_Field_Reset;
      --  Write '1' to Enable interrupt for ENDTX event
      ENDTX             : INTENSET_ENDTX_Field_1 :=
                           Intenset_Endtx_Field_Reset;
      --  unspecified
      Reserved_13_13    : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Enable interrupt for AUTOCOLRESSTARTED event
      AUTOCOLRESSTARTED : INTENSET_AUTOCOLRESSTARTED_Field_1 :=
                           Intenset_Autocolresstarted_Field_Reset;
      --  unspecified
      Reserved_15_17    : Interfaces.NRF52.UInt3 := 16#0#;
      --  Write '1' to Enable interrupt for COLLISION event
      COLLISION         : INTENSET_COLLISION_Field_1 :=
                           Intenset_Collision_Field_Reset;
      --  Write '1' to Enable interrupt for SELECTED event
      SELECTED          : INTENSET_SELECTED_Field_1 :=
                           Intenset_Selected_Field_Reset;
      --  Write '1' to Enable interrupt for STARTED event
      STARTED           : INTENSET_STARTED_Field_1 :=
                           Intenset_Started_Field_Reset;
      --  unspecified
      Reserved_21_31    : Interfaces.NRF52.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      READY             at 0 range 0 .. 0;
      FIELDDETECTED     at 0 range 1 .. 1;
      FIELDLOST         at 0 range 2 .. 2;
      TXFRAMESTART      at 0 range 3 .. 3;
      TXFRAMEEND        at 0 range 4 .. 4;
      RXFRAMESTART      at 0 range 5 .. 5;
      RXFRAMEEND        at 0 range 6 .. 6;
      ERROR             at 0 range 7 .. 7;
      Reserved_8_9      at 0 range 8 .. 9;
      RXERROR           at 0 range 10 .. 10;
      ENDRX             at 0 range 11 .. 11;
      ENDTX             at 0 range 12 .. 12;
      Reserved_13_13    at 0 range 13 .. 13;
      AUTOCOLRESSTARTED at 0 range 14 .. 14;
      Reserved_15_17    at 0 range 15 .. 17;
      COLLISION         at 0 range 18 .. 18;
      SELECTED          at 0 range 19 .. 19;
      STARTED           at 0 range 20 .. 20;
      Reserved_21_31    at 0 range 21 .. 31;
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

   --  Write '1' to Disable interrupt for FIELDDETECTED event
   type INTENCLR_FIELDDETECTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_FIELDDETECTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for FIELDDETECTED event
   type INTENCLR_FIELDDETECTED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Fielddetected_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_FIELDDETECTED_Field_1 use
     (Intenclr_Fielddetected_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for FIELDLOST event
   type INTENCLR_FIELDLOST_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_FIELDLOST_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for FIELDLOST event
   type INTENCLR_FIELDLOST_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Fieldlost_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_FIELDLOST_Field_1 use
     (Intenclr_Fieldlost_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for TXFRAMESTART event
   type INTENCLR_TXFRAMESTART_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TXFRAMESTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for TXFRAMESTART event
   type INTENCLR_TXFRAMESTART_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Txframestart_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TXFRAMESTART_Field_1 use
     (Intenclr_Txframestart_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for TXFRAMEEND event
   type INTENCLR_TXFRAMEEND_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TXFRAMEEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for TXFRAMEEND event
   type INTENCLR_TXFRAMEEND_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Txframeend_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TXFRAMEEND_Field_1 use
     (Intenclr_Txframeend_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for RXFRAMESTART event
   type INTENCLR_RXFRAMESTART_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXFRAMESTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for RXFRAMESTART event
   type INTENCLR_RXFRAMESTART_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Rxframestart_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXFRAMESTART_Field_1 use
     (Intenclr_Rxframestart_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for RXFRAMEEND event
   type INTENCLR_RXFRAMEEND_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXFRAMEEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for RXFRAMEEND event
   type INTENCLR_RXFRAMEEND_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Rxframeend_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXFRAMEEND_Field_1 use
     (Intenclr_Rxframeend_Field_Reset => 0,
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

   --  Write '1' to Disable interrupt for RXERROR event
   type INTENCLR_RXERROR_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for RXERROR event
   type INTENCLR_RXERROR_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Rxerror_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXERROR_Field_1 use
     (Intenclr_Rxerror_Field_Reset => 0,
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

   --  Write '1' to Disable interrupt for AUTOCOLRESSTARTED event
   type INTENCLR_AUTOCOLRESSTARTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_AUTOCOLRESSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for AUTOCOLRESSTARTED event
   type INTENCLR_AUTOCOLRESSTARTED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Autocolresstarted_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_AUTOCOLRESSTARTED_Field_1 use
     (Intenclr_Autocolresstarted_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for COLLISION event
   type INTENCLR_COLLISION_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_COLLISION_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for COLLISION event
   type INTENCLR_COLLISION_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Collision_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_COLLISION_Field_1 use
     (Intenclr_Collision_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for SELECTED event
   type INTENCLR_SELECTED_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SELECTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for SELECTED event
   type INTENCLR_SELECTED_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Selected_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SELECTED_Field_1 use
     (Intenclr_Selected_Field_Reset => 0,
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
      --  Write '1' to Disable interrupt for READY event
      READY             : INTENCLR_READY_Field_1 :=
                           Intenclr_Ready_Field_Reset;
      --  Write '1' to Disable interrupt for FIELDDETECTED event
      FIELDDETECTED     : INTENCLR_FIELDDETECTED_Field_1 :=
                           Intenclr_Fielddetected_Field_Reset;
      --  Write '1' to Disable interrupt for FIELDLOST event
      FIELDLOST         : INTENCLR_FIELDLOST_Field_1 :=
                           Intenclr_Fieldlost_Field_Reset;
      --  Write '1' to Disable interrupt for TXFRAMESTART event
      TXFRAMESTART      : INTENCLR_TXFRAMESTART_Field_1 :=
                           Intenclr_Txframestart_Field_Reset;
      --  Write '1' to Disable interrupt for TXFRAMEEND event
      TXFRAMEEND        : INTENCLR_TXFRAMEEND_Field_1 :=
                           Intenclr_Txframeend_Field_Reset;
      --  Write '1' to Disable interrupt for RXFRAMESTART event
      RXFRAMESTART      : INTENCLR_RXFRAMESTART_Field_1 :=
                           Intenclr_Rxframestart_Field_Reset;
      --  Write '1' to Disable interrupt for RXFRAMEEND event
      RXFRAMEEND        : INTENCLR_RXFRAMEEND_Field_1 :=
                           Intenclr_Rxframeend_Field_Reset;
      --  Write '1' to Disable interrupt for ERROR event
      ERROR             : INTENCLR_ERROR_Field_1 :=
                           Intenclr_Error_Field_Reset;
      --  unspecified
      Reserved_8_9      : Interfaces.NRF52.UInt2 := 16#0#;
      --  Write '1' to Disable interrupt for RXERROR event
      RXERROR           : INTENCLR_RXERROR_Field_1 :=
                           Intenclr_Rxerror_Field_Reset;
      --  Write '1' to Disable interrupt for ENDRX event
      ENDRX             : INTENCLR_ENDRX_Field_1 :=
                           Intenclr_Endrx_Field_Reset;
      --  Write '1' to Disable interrupt for ENDTX event
      ENDTX             : INTENCLR_ENDTX_Field_1 :=
                           Intenclr_Endtx_Field_Reset;
      --  unspecified
      Reserved_13_13    : Interfaces.NRF52.Bit := 16#0#;
      --  Write '1' to Disable interrupt for AUTOCOLRESSTARTED event
      AUTOCOLRESSTARTED : INTENCLR_AUTOCOLRESSTARTED_Field_1 :=
                           Intenclr_Autocolresstarted_Field_Reset;
      --  unspecified
      Reserved_15_17    : Interfaces.NRF52.UInt3 := 16#0#;
      --  Write '1' to Disable interrupt for COLLISION event
      COLLISION         : INTENCLR_COLLISION_Field_1 :=
                           Intenclr_Collision_Field_Reset;
      --  Write '1' to Disable interrupt for SELECTED event
      SELECTED          : INTENCLR_SELECTED_Field_1 :=
                           Intenclr_Selected_Field_Reset;
      --  Write '1' to Disable interrupt for STARTED event
      STARTED           : INTENCLR_STARTED_Field_1 :=
                           Intenclr_Started_Field_Reset;
      --  unspecified
      Reserved_21_31    : Interfaces.NRF52.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      READY             at 0 range 0 .. 0;
      FIELDDETECTED     at 0 range 1 .. 1;
      FIELDLOST         at 0 range 2 .. 2;
      TXFRAMESTART      at 0 range 3 .. 3;
      TXFRAMEEND        at 0 range 4 .. 4;
      RXFRAMESTART      at 0 range 5 .. 5;
      RXFRAMEEND        at 0 range 6 .. 6;
      ERROR             at 0 range 7 .. 7;
      Reserved_8_9      at 0 range 8 .. 9;
      RXERROR           at 0 range 10 .. 10;
      ENDRX             at 0 range 11 .. 11;
      ENDTX             at 0 range 12 .. 12;
      Reserved_13_13    at 0 range 13 .. 13;
      AUTOCOLRESSTARTED at 0 range 14 .. 14;
      Reserved_15_17    at 0 range 15 .. 17;
      COLLISION         at 0 range 18 .. 18;
      SELECTED          at 0 range 19 .. 19;
      STARTED           at 0 range 20 .. 20;
      Reserved_21_31    at 0 range 21 .. 31;
   end record;

   subtype ERRORSTATUS_FRAMEDELAYTIMEOUT_Field is Interfaces.NRF52.Bit;

   --  NFC Error Status register
   type ERRORSTATUS_Register is record
      --  No STARTTX task triggered before expiration of the time set in
      --  FRAMEDELAYMAX
      FRAMEDELAYTIMEOUT : ERRORSTATUS_FRAMEDELAYTIMEOUT_Field := 16#0#;
      --  unspecified
      Reserved_1_31     : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRORSTATUS_Register use record
      FRAMEDELAYTIMEOUT at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   -------------------------------------
   -- FRAMESTATUS cluster's Registers --
   -------------------------------------

   --  No valid end of frame (EoF) detected
   type RX_CRCERROR_Field is
     (
      --  Valid CRC detected
      Crccorrect,
      --  CRC received does not match local check
      Crcerror)
     with Size => 1;
   for RX_CRCERROR_Field use
     (Crccorrect => 0,
      Crcerror => 1);

   --  Parity status of received frame
   type RX_PARITYSTATUS_Field is
     (
      --  Frame received with parity OK
      Parityok,
      --  Frame received with parity error
      Parityerror)
     with Size => 1;
   for RX_PARITYSTATUS_Field use
     (Parityok => 0,
      Parityerror => 1);

   --  Overrun detected
   type RX_OVERRUN_Field is
     (
      --  No overrun detected
      Nooverrun,
      --  Overrun error
      Overrun)
     with Size => 1;
   for RX_OVERRUN_Field use
     (Nooverrun => 0,
      Overrun => 1);

   --  Result of last incoming frame
   type RX_FRAMESTATUS_Register is record
      --  No valid end of frame (EoF) detected
      CRCERROR      : RX_CRCERROR_Field := Interfaces.NRF52.NFCT.Crccorrect;
      --  unspecified
      Reserved_1_1  : Interfaces.NRF52.Bit := 16#0#;
      --  Parity status of received frame
      PARITYSTATUS  : RX_PARITYSTATUS_Field := Interfaces.NRF52.NFCT.Parityok;
      --  Overrun detected
      OVERRUN       : RX_OVERRUN_Field := Interfaces.NRF52.NFCT.Nooverrun;
      --  unspecified
      Reserved_4_31 : Interfaces.NRF52.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX_FRAMESTATUS_Register use record
      CRCERROR      at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      PARITYSTATUS  at 0 range 2 .. 2;
      OVERRUN       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Unspecified
   type FRAMESTATUS_Cluster is record
      --  Result of last incoming frame
      RX : aliased RX_FRAMESTATUS_Register;
   end record
     with Volatile, Size => 32;

   for FRAMESTATUS_Cluster use record
      RX at 0 range 0 .. 31;
   end record;

   --  NfcTag state
   type NFCTAGSTATE_NFCTAGSTATE_Field is
     (
      --  Disabled or sense
      Disabled,
      --  RampUp
      Rampup,
      --  Idle
      Idle,
      --  Receive
      Receive,
      --  FrameDelay
      Framedelay,
      --  Transmit
      Transmit)
     with Size => 3;
   for NFCTAGSTATE_NFCTAGSTATE_Field use
     (Disabled => 0,
      Rampup => 2,
      Idle => 3,
      Receive => 4,
      Framedelay => 5,
      Transmit => 6);

   --  NfcTag state register
   type NFCTAGSTATE_Register is record
      --  Read-only. NfcTag state
      NFCTAGSTATE   : NFCTAGSTATE_NFCTAGSTATE_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NFCTAGSTATE_Register use record
      NFCTAGSTATE   at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Indicates if a valid field is present. Available only in the activated
   --  state.
   type FIELDPRESENT_FIELDPRESENT_Field is
     (
      --  No valid field detected
      Nofield,
      --  Valid field detected
      Fieldpresent)
     with Size => 1;
   for FIELDPRESENT_FIELDPRESENT_Field use
     (Nofield => 0,
      Fieldpresent => 1);

   --  Indicates if the low level has locked to the field
   type FIELDPRESENT_LOCKDETECT_Field is
     (
      --  Not locked to field
      Notlocked,
      --  Locked to field
      Locked)
     with Size => 1;
   for FIELDPRESENT_LOCKDETECT_Field use
     (Notlocked => 0,
      Locked => 1);

   --  Indicates the presence or not of a valid field
   type FIELDPRESENT_Register is record
      --  Read-only. Indicates if a valid field is present. Available only in
      --  the activated state.
      FIELDPRESENT  : FIELDPRESENT_FIELDPRESENT_Field;
      --  Read-only. Indicates if the low level has locked to the field
      LOCKDETECT    : FIELDPRESENT_LOCKDETECT_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIELDPRESENT_Register use record
      FIELDPRESENT  at 0 range 0 .. 0;
      LOCKDETECT    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FRAMEDELAYMIN_FRAMEDELAYMIN_Field is Interfaces.NRF52.UInt16;

   --  Minimum frame delay
   type FRAMEDELAYMIN_Register is record
      --  Minimum frame delay in number of 13.56 MHz clocks
      FRAMEDELAYMIN  : FRAMEDELAYMIN_FRAMEDELAYMIN_Field := 16#480#;
      --  unspecified
      Reserved_16_31 : Interfaces.NRF52.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRAMEDELAYMIN_Register use record
      FRAMEDELAYMIN  at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FRAMEDELAYMAX_FRAMEDELAYMAX_Field is Interfaces.NRF52.UInt20;

   --  Maximum frame delay
   type FRAMEDELAYMAX_Register is record
      --  Maximum frame delay in number of 13.56 MHz clocks
      FRAMEDELAYMAX  : FRAMEDELAYMAX_FRAMEDELAYMAX_Field := 16#1000#;
      --  unspecified
      Reserved_20_31 : Interfaces.NRF52.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRAMEDELAYMAX_Register use record
      FRAMEDELAYMAX  at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Configuration register for the Frame Delay Timer
   type FRAMEDELAYMODE_FRAMEDELAYMODE_Field is
     (
      --  Transmission is independent of frame timer and will start when the
      --  STARTTX task is triggered. No timeout.
      Freerun,
      --  Frame is transmitted between FRAMEDELAYMIN and FRAMEDELAYMAX
      Window,
      --  Frame is transmitted exactly at FRAMEDELAYMAX
      Exactval,
      --  Frame is transmitted on a bit grid between FRAMEDELAYMIN and
      --  FRAMEDELAYMAX
      Windowgrid)
     with Size => 2;
   for FRAMEDELAYMODE_FRAMEDELAYMODE_Field use
     (Freerun => 0,
      Window => 1,
      Exactval => 2,
      Windowgrid => 3);

   --  Configuration register for the Frame Delay Timer
   type FRAMEDELAYMODE_Register is record
      --  Configuration register for the Frame Delay Timer
      FRAMEDELAYMODE : FRAMEDELAYMODE_FRAMEDELAYMODE_Field :=
                        Interfaces.NRF52.NFCT.Window;
      --  unspecified
      Reserved_2_31  : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRAMEDELAYMODE_Register use record
      FRAMEDELAYMODE at 0 range 0 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   subtype MAXLEN_MAXLEN_Field is Interfaces.NRF52.UInt9;

   --  Size of the RAM buffer allocated to TXD and RXD data storage each
   type MAXLEN_Register is record
      --  Size of the RAM buffer allocated to TXD and RXD data storage each
      MAXLEN        : MAXLEN_MAXLEN_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.NRF52.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXLEN_Register use record
      MAXLEN        at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------------------
   -- TXD cluster's Registers --
   -----------------------------

   --  Indicates if parity is added to the frame
   type FRAMECONFIG_PARITY_Field is
     (
      --  Parity is not added to TX frames
      Noparity,
      --  Parity is added to TX frames
      Parity)
     with Size => 1;
   for FRAMECONFIG_PARITY_Field use
     (Noparity => 0,
      Parity => 1);

   --  Discarding unused bits at start or end of a frame
   type FRAMECONFIG_DISCARDMODE_Field is
     (
      --  Unused bits are discarded at end of frame (EoF)
      Discardend,
      --  Unused bits are discarded at start of frame (SoF)
      Discardstart)
     with Size => 1;
   for FRAMECONFIG_DISCARDMODE_Field use
     (Discardend => 0,
      Discardstart => 1);

   --  Adding SoF or not in TX frames
   type FRAMECONFIG_SOF_Field is
     (
      --  SoF symbol not added
      Nosof,
      --  SoF symbol added
      Sof)
     with Size => 1;
   for FRAMECONFIG_SOF_Field use
     (Nosof => 0,
      Sof => 1);

   --  CRC mode for outgoing frames
   type FRAMECONFIG_CRCMODETX_Field is
     (
      --  CRC is not added to the frame
      Nocrctx,
      --  16 bit CRC added to the frame based on all the data read from RAM
      --  that is used in the frame
      Crc16Tx)
     with Size => 1;
   for FRAMECONFIG_CRCMODETX_Field use
     (Nocrctx => 0,
      Crc16Tx => 1);

   --  Configuration of outgoing frames
   type FRAMECONFIG_TXD_Register is record
      --  Indicates if parity is added to the frame
      PARITY        : FRAMECONFIG_PARITY_Field :=
                       Interfaces.NRF52.NFCT.Parity;
      --  Discarding unused bits at start or end of a frame
      DISCARDMODE   : FRAMECONFIG_DISCARDMODE_Field :=
                       Interfaces.NRF52.NFCT.Discardstart;
      --  Adding SoF or not in TX frames
      SOF           : FRAMECONFIG_SOF_Field := Interfaces.NRF52.NFCT.Sof;
      --  unspecified
      Reserved_3_3  : Interfaces.NRF52.Bit := 16#0#;
      --  CRC mode for outgoing frames
      CRCMODETX     : FRAMECONFIG_CRCMODETX_Field :=
                       Interfaces.NRF52.NFCT.Crc16Tx;
      --  unspecified
      Reserved_5_31 : Interfaces.NRF52.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRAMECONFIG_TXD_Register use record
      PARITY        at 0 range 0 .. 0;
      DISCARDMODE   at 0 range 1 .. 1;
      SOF           at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CRCMODETX     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype AMOUNT_TXD_TXDATABITS_Field is Interfaces.NRF52.UInt3;
   subtype AMOUNT_TXD_TXDATABYTES_Field is Interfaces.NRF52.UInt9;

   --  Size of outgoing frame
   type AMOUNT_TXD_Register is record
      --  Number of bits in the last or first byte read from RAM that shall be
      --  included in the frame (excluding parity bit).
      TXDATABITS     : AMOUNT_TXD_TXDATABITS_Field := 16#0#;
      --  Number of complete bytes that shall be included in the frame,
      --  excluding CRC, parity and framing
      TXDATABYTES    : AMOUNT_TXD_TXDATABYTES_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.NRF52.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_TXD_Register use record
      TXDATABITS     at 0 range 0 .. 2;
      TXDATABYTES    at 0 range 3 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Unspecified
   type TXD_Cluster is record
      --  Configuration of outgoing frames
      FRAMECONFIG : aliased FRAMECONFIG_TXD_Register;
      --  Size of outgoing frame
      AMOUNT      : aliased AMOUNT_TXD_Register;
   end record
     with Volatile, Size => 64;

   for TXD_Cluster use record
      FRAMECONFIG at 16#0# range 0 .. 31;
      AMOUNT      at 16#4# range 0 .. 31;
   end record;

   -----------------------------
   -- RXD cluster's Registers --
   -----------------------------

   --  CRC mode for incoming frames
   type FRAMECONFIG_CRCMODERX_Field is
     (
      --  CRC is not expected in RX frames
      Nocrcrx,
      --  Last 16 bits in RX frame is CRC, CRC is checked and CRCSTATUS updated
      Crc16Rx)
     with Size => 1;
   for FRAMECONFIG_CRCMODERX_Field use
     (Nocrcrx => 0,
      Crc16Rx => 1);

   --  Configuration of incoming frames
   type FRAMECONFIG_RXD_Register is record
      --  Indicates if parity expected in RX frame
      PARITY        : FRAMECONFIG_PARITY_Field :=
                       Interfaces.NRF52.NFCT.Parity;
      --  unspecified
      Reserved_1_1  : Interfaces.NRF52.Bit := 16#0#;
      --  SoF expected or not in RX frames
      SOF           : FRAMECONFIG_SOF_Field := Interfaces.NRF52.NFCT.Sof;
      --  unspecified
      Reserved_3_3  : Interfaces.NRF52.Bit := 16#0#;
      --  CRC mode for incoming frames
      CRCMODERX     : FRAMECONFIG_CRCMODERX_Field :=
                       Interfaces.NRF52.NFCT.Crc16Rx;
      --  unspecified
      Reserved_5_31 : Interfaces.NRF52.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRAMECONFIG_RXD_Register use record
      PARITY        at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      SOF           at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CRCMODERX     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype AMOUNT_RXD_RXDATABITS_Field is Interfaces.NRF52.UInt3;
   subtype AMOUNT_RXD_RXDATABYTES_Field is Interfaces.NRF52.UInt9;

   --  Size of last incoming frame
   type AMOUNT_RXD_Register is record
      --  Read-only. Number of bits in the last byte in the frame, if less than
      --  8 (including CRC, but excluding parity and SoF/EoF framing).
      RXDATABITS     : AMOUNT_RXD_RXDATABITS_Field;
      --  Read-only. Number of complete bytes received in the frame (including
      --  CRC, but excluding parity and SoF/EoF framing)
      RXDATABYTES    : AMOUNT_RXD_RXDATABYTES_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.NRF52.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_RXD_Register use record
      RXDATABITS     at 0 range 0 .. 2;
      RXDATABYTES    at 0 range 3 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Unspecified
   type RXD_Cluster is record
      --  Configuration of incoming frames
      FRAMECONFIG : aliased FRAMECONFIG_RXD_Register;
      --  Size of last incoming frame
      AMOUNT      : aliased AMOUNT_RXD_Register;
   end record
     with Volatile, Size => 64;

   for RXD_Cluster use record
      FRAMECONFIG at 16#0# range 0 .. 31;
      AMOUNT      at 16#4# range 0 .. 31;
   end record;

   subtype NFCID1_LAST_NFCID1_Z_Field is Interfaces.NRF52.Byte;
   subtype NFCID1_LAST_NFCID1_Y_Field is Interfaces.NRF52.Byte;
   subtype NFCID1_LAST_NFCID1_X_Field is Interfaces.NRF52.Byte;
   subtype NFCID1_LAST_NFCID1_W_Field is Interfaces.NRF52.Byte;

   --  Last NFCID1 part (4, 7 or 10 bytes ID)
   type NFCID1_LAST_Register is record
      --  NFCID1 byte Z (very last byte sent)
      NFCID1_Z : NFCID1_LAST_NFCID1_Z_Field := 16#63#;
      --  NFCID1 byte Y
      NFCID1_Y : NFCID1_LAST_NFCID1_Y_Field := 16#63#;
      --  NFCID1 byte X
      NFCID1_X : NFCID1_LAST_NFCID1_X_Field := 16#0#;
      --  NFCID1 byte W
      NFCID1_W : NFCID1_LAST_NFCID1_W_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NFCID1_LAST_Register use record
      NFCID1_Z at 0 range 0 .. 7;
      NFCID1_Y at 0 range 8 .. 15;
      NFCID1_X at 0 range 16 .. 23;
      NFCID1_W at 0 range 24 .. 31;
   end record;

   subtype NFCID1_2ND_LAST_NFCID1_V_Field is Interfaces.NRF52.Byte;
   subtype NFCID1_2ND_LAST_NFCID1_U_Field is Interfaces.NRF52.Byte;
   subtype NFCID1_2ND_LAST_NFCID1_T_Field is Interfaces.NRF52.Byte;

   --  Second last NFCID1 part (7 or 10 bytes ID)
   type NFCID1_2ND_LAST_Register is record
      --  NFCID1 byte V
      NFCID1_V       : NFCID1_2ND_LAST_NFCID1_V_Field := 16#0#;
      --  NFCID1 byte U
      NFCID1_U       : NFCID1_2ND_LAST_NFCID1_U_Field := 16#0#;
      --  NFCID1 byte T
      NFCID1_T       : NFCID1_2ND_LAST_NFCID1_T_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.NRF52.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NFCID1_2ND_LAST_Register use record
      NFCID1_V       at 0 range 0 .. 7;
      NFCID1_U       at 0 range 8 .. 15;
      NFCID1_T       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype NFCID1_3RD_LAST_NFCID1_S_Field is Interfaces.NRF52.Byte;
   subtype NFCID1_3RD_LAST_NFCID1_R_Field is Interfaces.NRF52.Byte;
   subtype NFCID1_3RD_LAST_NFCID1_Q_Field is Interfaces.NRF52.Byte;

   --  Third last NFCID1 part (10 bytes ID)
   type NFCID1_3RD_LAST_Register is record
      --  NFCID1 byte S
      NFCID1_S       : NFCID1_3RD_LAST_NFCID1_S_Field := 16#0#;
      --  NFCID1 byte R
      NFCID1_R       : NFCID1_3RD_LAST_NFCID1_R_Field := 16#0#;
      --  NFCID1 byte Q
      NFCID1_Q       : NFCID1_3RD_LAST_NFCID1_Q_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.NRF52.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NFCID1_3RD_LAST_Register use record
      NFCID1_S       at 0 range 0 .. 7;
      NFCID1_R       at 0 range 8 .. 15;
      NFCID1_Q       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Enables/disables auto collision resolution
   type AUTOCOLRESCONFIG_MODE_Field is
     (
      --  Auto collision resolution enabled
      Enabled,
      --  Auto collision resolution disabled
      Disabled)
     with Size => 1;
   for AUTOCOLRESCONFIG_MODE_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Controls the auto collision resolution function. This setting must be
   --  done before the NFCT peripheral is enabled.
   type AUTOCOLRESCONFIG_Register is record
      --  Enables/disables auto collision resolution
      MODE          : AUTOCOLRESCONFIG_MODE_Field :=
                       Interfaces.NRF52.NFCT.Enabled;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUTOCOLRESCONFIG_Register use record
      MODE          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Bit frame SDD as defined by the b5:b1 of byte 1 in SENS_RES response in
   --  the NFC Forum, NFC Digital Protocol Technical Specification
   type SENSRES_BITFRAMESDD_Field is
     (
      --  SDD pattern 00000
      Sdd00000,
      --  SDD pattern 00001
      Sdd00001,
      --  SDD pattern 00010
      Sdd00010,
      --  SDD pattern 00100
      Sdd00100,
      --  SDD pattern 01000
      Sdd01000,
      --  SDD pattern 10000
      Sdd10000)
     with Size => 5;
   for SENSRES_BITFRAMESDD_Field use
     (Sdd00000 => 0,
      Sdd00001 => 1,
      Sdd00010 => 2,
      Sdd00100 => 4,
      Sdd01000 => 8,
      Sdd10000 => 16);

   subtype SENSRES_RFU5_Field is Interfaces.NRF52.Bit;

   --  NFCID1 size. This value is used by the auto collision resolution engine.
   type SENSRES_NFCIDSIZE_Field is
     (
      --  NFCID1 size: single (4 bytes)
      Nfcid1Single,
      --  NFCID1 size: double (7 bytes)
      Nfcid1Double,
      --  NFCID1 size: triple (10 bytes)
      Nfcid1Triple)
     with Size => 2;
   for SENSRES_NFCIDSIZE_Field use
     (Nfcid1Single => 0,
      Nfcid1Double => 1,
      Nfcid1Triple => 2);

   subtype SENSRES_PLATFCONFIG_Field is Interfaces.NRF52.UInt4;
   subtype SENSRES_RFU74_Field is Interfaces.NRF52.UInt4;

   --  NFC-A SENS_RES auto-response settings
   type SENSRES_Register is record
      --  Bit frame SDD as defined by the b5:b1 of byte 1 in SENS_RES response
      --  in the NFC Forum, NFC Digital Protocol Technical Specification
      BITFRAMESDD    : SENSRES_BITFRAMESDD_Field :=
                        Interfaces.NRF52.NFCT.Sdd00001;
      --  Reserved for future use. Shall be 0.
      RFU5           : SENSRES_RFU5_Field := 16#0#;
      --  NFCID1 size. This value is used by the auto collision resolution
      --  engine.
      NFCIDSIZE      : SENSRES_NFCIDSIZE_Field :=
                        Interfaces.NRF52.NFCT.Nfcid1Single;
      --  Tag platform configuration as defined by the b4:b1 of byte 2 in
      --  SENS_RES response in the NFC Forum, NFC Digital Protocol Technical
      --  Specification
      PLATFCONFIG    : SENSRES_PLATFCONFIG_Field := 16#0#;
      --  Reserved for future use. Shall be 0.
      RFU74          : SENSRES_RFU74_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.NRF52.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SENSRES_Register use record
      BITFRAMESDD    at 0 range 0 .. 4;
      RFU5           at 0 range 5 .. 5;
      NFCIDSIZE      at 0 range 6 .. 7;
      PLATFCONFIG    at 0 range 8 .. 11;
      RFU74          at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SELRES_RFU10_Field is Interfaces.NRF52.UInt2;
   subtype SELRES_CASCADE_Field is Interfaces.NRF52.Bit;
   subtype SELRES_RFU43_Field is Interfaces.NRF52.UInt2;
   subtype SELRES_PROTOCOL_Field is Interfaces.NRF52.UInt2;
   subtype SELRES_RFU7_Field is Interfaces.NRF52.Bit;

   --  NFC-A SEL_RES auto-response settings
   type SELRES_Register is record
      --  Reserved for future use. Shall be 0.
      RFU10         : SELRES_RFU10_Field := 16#0#;
      --  Cascade as defined by the b3 of SEL_RES response in the NFC Forum,
      --  NFC Digital Protocol Technical Specification (controlled by hardware,
      --  shall be 0)
      CASCADE       : SELRES_CASCADE_Field := 16#0#;
      --  Reserved for future use. Shall be 0.
      RFU43         : SELRES_RFU43_Field := 16#0#;
      --  Protocol as defined by the b7:b6 of SEL_RES response in the NFC
      --  Forum, NFC Digital Protocol Technical Specification
      PROTOCOL      : SELRES_PROTOCOL_Field := 16#0#;
      --  Reserved for future use. Shall be 0.
      RFU7          : SELRES_RFU7_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SELRES_Register use record
      RFU10         at 0 range 0 .. 1;
      CASCADE       at 0 range 2 .. 2;
      RFU43         at 0 range 3 .. 4;
      PROTOCOL      at 0 range 5 .. 6;
      RFU7          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  NFC-A compatible radio
   type NFCT_Peripheral is record
      --  Activate NFCT peripheral for incoming and outgoing frames, change
      --  state to activated
      TASKS_ACTIVATE           : aliased Interfaces.NRF52.UInt32;
      --  Disable NFCT peripheral
      TASKS_DISABLE            : aliased Interfaces.NRF52.UInt32;
      --  Enable NFC sense field mode, change state to sense mode
      TASKS_SENSE              : aliased Interfaces.NRF52.UInt32;
      --  Start transmission of an outgoing frame, change state to transmit
      TASKS_STARTTX            : aliased Interfaces.NRF52.UInt32;
      --  Initializes the EasyDMA for receive.
      TASKS_ENABLERXDATA       : aliased Interfaces.NRF52.UInt32;
      --  Force state machine to IDLE state
      TASKS_GOIDLE             : aliased Interfaces.NRF52.UInt32;
      --  Force state machine to SLEEP_A state
      TASKS_GOSLEEP            : aliased Interfaces.NRF52.UInt32;
      --  The NFCT peripheral is ready to receive and send frames
      EVENTS_READY             : aliased Interfaces.NRF52.UInt32;
      --  Remote NFC field detected
      EVENTS_FIELDDETECTED     : aliased Interfaces.NRF52.UInt32;
      --  Remote NFC field lost
      EVENTS_FIELDLOST         : aliased Interfaces.NRF52.UInt32;
      --  Marks the start of the first symbol of a transmitted frame
      EVENTS_TXFRAMESTART      : aliased Interfaces.NRF52.UInt32;
      --  Marks the end of the last transmitted on-air symbol of a frame
      EVENTS_TXFRAMEEND        : aliased Interfaces.NRF52.UInt32;
      --  Marks the end of the first symbol of a received frame
      EVENTS_RXFRAMESTART      : aliased Interfaces.NRF52.UInt32;
      --  Received data has been checked (CRC, parity) and transferred to RAM,
      --  and EasyDMA has ended accessing the RX buffer
      EVENTS_RXFRAMEEND        : aliased Interfaces.NRF52.UInt32;
      --  NFC error reported. The ERRORSTATUS register contains details on the
      --  source of the error.
      EVENTS_ERROR             : aliased Interfaces.NRF52.UInt32;
      --  NFC RX frame error reported. The FRAMESTATUS.RX register contains
      --  details on the source of the error.
      EVENTS_RXERROR           : aliased Interfaces.NRF52.UInt32;
      --  RX buffer (as defined by PACKETPTR and MAXLEN) in Data RAM full.
      EVENTS_ENDRX             : aliased Interfaces.NRF52.UInt32;
      --  Transmission of data in RAM has ended, and EasyDMA has ended
      --  accessing the TX buffer
      EVENTS_ENDTX             : aliased Interfaces.NRF52.UInt32;
      --  Auto collision resolution process has started
      EVENTS_AUTOCOLRESSTARTED : aliased Interfaces.NRF52.UInt32;
      --  NFC auto collision resolution error reported.
      EVENTS_COLLISION         : aliased Interfaces.NRF52.UInt32;
      --  NFC auto collision resolution successfully completed
      EVENTS_SELECTED          : aliased Interfaces.NRF52.UInt32;
      --  EasyDMA is ready to receive or send frames.
      EVENTS_STARTED           : aliased Interfaces.NRF52.UInt32;
      --  Shortcut register
      SHORTS                   : aliased SHORTS_Register;
      --  Enable or disable interrupt
      INTEN                    : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET                 : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR                 : aliased INTENCLR_Register;
      --  NFC Error Status register
      ERRORSTATUS              : aliased ERRORSTATUS_Register;
      --  Unspecified
      FRAMESTATUS              : aliased FRAMESTATUS_Cluster;
      --  NfcTag state register
      NFCTAGSTATE              : aliased NFCTAGSTATE_Register;
      --  Indicates the presence or not of a valid field
      FIELDPRESENT             : aliased FIELDPRESENT_Register;
      --  Minimum frame delay
      FRAMEDELAYMIN            : aliased FRAMEDELAYMIN_Register;
      --  Maximum frame delay
      FRAMEDELAYMAX            : aliased FRAMEDELAYMAX_Register;
      --  Configuration register for the Frame Delay Timer
      FRAMEDELAYMODE           : aliased FRAMEDELAYMODE_Register;
      --  Packet pointer for TXD and RXD data storage in Data RAM
      PACKETPTR                : aliased Interfaces.NRF52.UInt32;
      --  Size of the RAM buffer allocated to TXD and RXD data storage each
      MAXLEN                   : aliased MAXLEN_Register;
      --  Unspecified
      TXD                      : aliased TXD_Cluster;
      --  Unspecified
      RXD                      : aliased RXD_Cluster;
      --  Last NFCID1 part (4, 7 or 10 bytes ID)
      NFCID1_LAST              : aliased NFCID1_LAST_Register;
      --  Second last NFCID1 part (7 or 10 bytes ID)
      NFCID1_2ND_LAST          : aliased NFCID1_2ND_LAST_Register;
      --  Third last NFCID1 part (10 bytes ID)
      NFCID1_3RD_LAST          : aliased NFCID1_3RD_LAST_Register;
      --  Controls the auto collision resolution function. This setting must be
      --  done before the NFCT peripheral is enabled.
      AUTOCOLRESCONFIG         : aliased AUTOCOLRESCONFIG_Register;
      --  NFC-A SENS_RES auto-response settings
      SENSRES                  : aliased SENSRES_Register;
      --  NFC-A SEL_RES auto-response settings
      SELRES                   : aliased SELRES_Register;
   end record
     with Volatile;

   for NFCT_Peripheral use record
      TASKS_ACTIVATE           at 16#0# range 0 .. 31;
      TASKS_DISABLE            at 16#4# range 0 .. 31;
      TASKS_SENSE              at 16#8# range 0 .. 31;
      TASKS_STARTTX            at 16#C# range 0 .. 31;
      TASKS_ENABLERXDATA       at 16#1C# range 0 .. 31;
      TASKS_GOIDLE             at 16#24# range 0 .. 31;
      TASKS_GOSLEEP            at 16#28# range 0 .. 31;
      EVENTS_READY             at 16#100# range 0 .. 31;
      EVENTS_FIELDDETECTED     at 16#104# range 0 .. 31;
      EVENTS_FIELDLOST         at 16#108# range 0 .. 31;
      EVENTS_TXFRAMESTART      at 16#10C# range 0 .. 31;
      EVENTS_TXFRAMEEND        at 16#110# range 0 .. 31;
      EVENTS_RXFRAMESTART      at 16#114# range 0 .. 31;
      EVENTS_RXFRAMEEND        at 16#118# range 0 .. 31;
      EVENTS_ERROR             at 16#11C# range 0 .. 31;
      EVENTS_RXERROR           at 16#128# range 0 .. 31;
      EVENTS_ENDRX             at 16#12C# range 0 .. 31;
      EVENTS_ENDTX             at 16#130# range 0 .. 31;
      EVENTS_AUTOCOLRESSTARTED at 16#138# range 0 .. 31;
      EVENTS_COLLISION         at 16#148# range 0 .. 31;
      EVENTS_SELECTED          at 16#14C# range 0 .. 31;
      EVENTS_STARTED           at 16#150# range 0 .. 31;
      SHORTS                   at 16#200# range 0 .. 31;
      INTEN                    at 16#300# range 0 .. 31;
      INTENSET                 at 16#304# range 0 .. 31;
      INTENCLR                 at 16#308# range 0 .. 31;
      ERRORSTATUS              at 16#404# range 0 .. 31;
      FRAMESTATUS              at 16#40C# range 0 .. 31;
      NFCTAGSTATE              at 16#410# range 0 .. 31;
      FIELDPRESENT             at 16#43C# range 0 .. 31;
      FRAMEDELAYMIN            at 16#504# range 0 .. 31;
      FRAMEDELAYMAX            at 16#508# range 0 .. 31;
      FRAMEDELAYMODE           at 16#50C# range 0 .. 31;
      PACKETPTR                at 16#510# range 0 .. 31;
      MAXLEN                   at 16#514# range 0 .. 31;
      TXD                      at 16#518# range 0 .. 63;
      RXD                      at 16#520# range 0 .. 63;
      NFCID1_LAST              at 16#590# range 0 .. 31;
      NFCID1_2ND_LAST          at 16#594# range 0 .. 31;
      NFCID1_3RD_LAST          at 16#598# range 0 .. 31;
      AUTOCOLRESCONFIG         at 16#59C# range 0 .. 31;
      SENSRES                  at 16#5A0# range 0 .. 31;
      SELRES                   at 16#5A4# range 0 .. 31;
   end record;

   --  NFC-A compatible radio
   NFCT_Periph : aliased NFCT_Peripheral
     with Import, Address => System'To_Address (16#40005000#);

end Interfaces.NRF52.NFCT;
