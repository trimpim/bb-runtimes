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

package Interfaces.NRF52.CCM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Shortcut between ENDKSGEN event and CRYPT task
   type SHORTS_ENDKSGEN_CRYPT_Field is
     (
      --  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_ENDKSGEN_CRYPT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut register
   type SHORTS_Register is record
      --  Shortcut between ENDKSGEN event and CRYPT task
      ENDKSGEN_CRYPT : SHORTS_ENDKSGEN_CRYPT_Field :=
                        Interfaces.NRF52.CCM.Disabled;
      --  unspecified
      Reserved_1_31  : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      ENDKSGEN_CRYPT at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Write '1' to Enable interrupt for ENDKSGEN event
   type INTENSET_ENDKSGEN_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDKSGEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for ENDKSGEN event
   type INTENSET_ENDKSGEN_Field_1 is
     (
      --  Reset value for the field
      Intenset_Endksgen_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDKSGEN_Field_1 use
     (Intenset_Endksgen_Field_Reset => 0,
      Set => 1);

   --  Write '1' to Enable interrupt for ENDCRYPT event
   type INTENSET_ENDCRYPT_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDCRYPT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Enable interrupt for ENDCRYPT event
   type INTENSET_ENDCRYPT_Field_1 is
     (
      --  Reset value for the field
      Intenset_Endcrypt_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDCRYPT_Field_1 use
     (Intenset_Endcrypt_Field_Reset => 0,
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

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to Enable interrupt for ENDKSGEN event
      ENDKSGEN      : INTENSET_ENDKSGEN_Field_1 :=
                       Intenset_Endksgen_Field_Reset;
      --  Write '1' to Enable interrupt for ENDCRYPT event
      ENDCRYPT      : INTENSET_ENDCRYPT_Field_1 :=
                       Intenset_Endcrypt_Field_Reset;
      --  Write '1' to Enable interrupt for ERROR event
      ERROR         : INTENSET_ERROR_Field_1 := Intenset_Error_Field_Reset;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      ENDKSGEN      at 0 range 0 .. 0;
      ENDCRYPT      at 0 range 1 .. 1;
      ERROR         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Write '1' to Disable interrupt for ENDKSGEN event
   type INTENCLR_ENDKSGEN_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDKSGEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for ENDKSGEN event
   type INTENCLR_ENDKSGEN_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Endksgen_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDKSGEN_Field_1 use
     (Intenclr_Endksgen_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to Disable interrupt for ENDCRYPT event
   type INTENCLR_ENDCRYPT_Field is
     (
      --  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDCRYPT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to Disable interrupt for ENDCRYPT event
   type INTENCLR_ENDCRYPT_Field_1 is
     (
      --  Reset value for the field
      Intenclr_Endcrypt_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDCRYPT_Field_1 use
     (Intenclr_Endcrypt_Field_Reset => 0,
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

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to Disable interrupt for ENDKSGEN event
      ENDKSGEN      : INTENCLR_ENDKSGEN_Field_1 :=
                       Intenclr_Endksgen_Field_Reset;
      --  Write '1' to Disable interrupt for ENDCRYPT event
      ENDCRYPT      : INTENCLR_ENDCRYPT_Field_1 :=
                       Intenclr_Endcrypt_Field_Reset;
      --  Write '1' to Disable interrupt for ERROR event
      ERROR         : INTENCLR_ERROR_Field_1 := Intenclr_Error_Field_Reset;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      ENDKSGEN      at 0 range 0 .. 0;
      ENDCRYPT      at 0 range 1 .. 1;
      ERROR         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  The result of the MIC check performed during the previous decryption
   --  operation
   type MICSTATUS_MICSTATUS_Field is
     (
      --  MIC check failed
      Checkfailed,
      --  MIC check passed
      Checkpassed)
     with Size => 1;
   for MICSTATUS_MICSTATUS_Field use
     (Checkfailed => 0,
      Checkpassed => 1);

   --  MIC check result
   type MICSTATUS_Register is record
      --  Read-only. The result of the MIC check performed during the previous
      --  decryption operation
      MICSTATUS     : MICSTATUS_MICSTATUS_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MICSTATUS_Register use record
      MICSTATUS     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Enable or disable CCM
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

   --  Enable
   type ENABLE_Register is record
      --  Enable or disable CCM
      ENABLE        : ENABLE_ENABLE_Field := Interfaces.NRF52.CCM.Disabled;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  The mode of operation to be used. The settings in this register apply
   --  whenever either the KSGEN or CRYPT tasks are triggered.
   type MODE_MODE_Field is
     (
      --  AES CCM packet encryption mode
      Encryption,
      --  AES CCM packet decryption mode
      Decryption)
     with Size => 1;
   for MODE_MODE_Field use
     (Encryption => 0,
      Decryption => 1);

   --  Radio data rate that the CCM shall run synchronous with
   type MODE_DATARATE_Field is
     (
      --  1 Mbps
      Val_1Mbit,
      --  2 Mbps
      Val_2Mbit,
      --  125 Kbps
      Val_125Kbps,
      --  500 Kbps
      Val_500Kbps)
     with Size => 2;
   for MODE_DATARATE_Field use
     (Val_1Mbit => 0,
      Val_2Mbit => 1,
      Val_125Kbps => 2,
      Val_500Kbps => 3);

   --  Packet length configuration
   type MODE_LENGTH_Field is
     (
      --  Default length. Effective length of LENGTH field in
      --  encrypted/decrypted packet is 5 bits. A key-stream for packet
      --  payloads up to 27 bytes will be generated.
      Default,
      --  Extended length. Effective length of LENGTH field in
      --  encrypted/decrypted packet is 8 bits. A key-stream for packet
      --  payloads up to MAXPACKETSIZE bytes will be generated.
      Extended)
     with Size => 1;
   for MODE_LENGTH_Field use
     (Default => 0,
      Extended => 1);

   --  Operation mode
   type MODE_Register is record
      --  The mode of operation to be used. The settings in this register apply
      --  whenever either the KSGEN or CRYPT tasks are triggered.
      MODE           : MODE_MODE_Field := Interfaces.NRF52.CCM.Decryption;
      --  unspecified
      Reserved_1_15  : Interfaces.NRF52.UInt15 := 16#0#;
      --  Radio data rate that the CCM shall run synchronous with
      DATARATE       : MODE_DATARATE_Field := Interfaces.NRF52.CCM.Val_1Mbit;
      --  unspecified
      Reserved_18_23 : Interfaces.NRF52.UInt6 := 16#0#;
      --  Packet length configuration
      LENGTH         : MODE_LENGTH_Field := Interfaces.NRF52.CCM.Default;
      --  unspecified
      Reserved_25_31 : Interfaces.NRF52.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      MODE           at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      DATARATE       at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      LENGTH         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype MAXPACKETSIZE_MAXPACKETSIZE_Field is Interfaces.NRF52.Byte;

   --  Length of key-stream generated when MODE.LENGTH = Extended.
   type MAXPACKETSIZE_Register is record
      --  Length of key-stream generated when MODE.LENGTH = Extended. This
      --  value must be greater or equal to the subsequent packet payload to be
      --  encrypted/decrypted.
      MAXPACKETSIZE : MAXPACKETSIZE_MAXPACKETSIZE_Field := 16#FB#;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXPACKETSIZE_Register use record
      MAXPACKETSIZE at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data rate override setting.
   type RATEOVERRIDE_RATEOVERRIDE_Field is
     (
      --  1 Mbps
      Val_1Mbit,
      --  2 Mbps
      Val_2Mbit,
      --  125 Kbps
      Val_125Kbps,
      --  500 Kbps
      Val_500Kbps)
     with Size => 2;
   for RATEOVERRIDE_RATEOVERRIDE_Field use
     (Val_1Mbit => 0,
      Val_2Mbit => 1,
      Val_125Kbps => 2,
      Val_500Kbps => 3);

   --  Data rate override setting.
   type RATEOVERRIDE_Register is record
      --  Data rate override setting.
      RATEOVERRIDE  : RATEOVERRIDE_RATEOVERRIDE_Field :=
                       Interfaces.NRF52.CCM.Val_1Mbit;
      --  unspecified
      Reserved_2_31 : Interfaces.NRF52.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RATEOVERRIDE_Register use record
      RATEOVERRIDE  at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AES CCM Mode Encryption
   type CCM_Peripheral is record
      --  Start generation of key-stream. This operation will stop by itself
      --  when completed.
      TASKS_KSGEN        : aliased Interfaces.NRF52.UInt32;
      --  Start encryption/decryption. This operation will stop by itself when
      --  completed.
      TASKS_CRYPT        : aliased Interfaces.NRF52.UInt32;
      --  Stop encryption/decryption
      TASKS_STOP         : aliased Interfaces.NRF52.UInt32;
      --  Override DATARATE setting in MODE register with the contents of the
      --  RATEOVERRIDE register for any ongoing encryption/decryption
      TASKS_RATEOVERRIDE : aliased Interfaces.NRF52.UInt32;
      --  Key-stream generation complete
      EVENTS_ENDKSGEN    : aliased Interfaces.NRF52.UInt32;
      --  Encrypt/decrypt complete
      EVENTS_ENDCRYPT    : aliased Interfaces.NRF52.UInt32;
      --  Deprecated register - CCM error event
      EVENTS_ERROR       : aliased Interfaces.NRF52.UInt32;
      --  Shortcut register
      SHORTS             : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET           : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR           : aliased INTENCLR_Register;
      --  MIC check result
      MICSTATUS          : aliased MICSTATUS_Register;
      --  Enable
      ENABLE             : aliased ENABLE_Register;
      --  Operation mode
      MODE               : aliased MODE_Register;
      --  Pointer to data structure holding AES key and NONCE vector
      CNFPTR             : aliased Interfaces.NRF52.UInt32;
      --  Input pointer
      INPTR              : aliased Interfaces.NRF52.UInt32;
      --  Output pointer
      OUTPTR             : aliased Interfaces.NRF52.UInt32;
      --  Pointer to data area used for temporary storage
      SCRATCHPTR         : aliased Interfaces.NRF52.UInt32;
      --  Length of key-stream generated when MODE.LENGTH = Extended.
      MAXPACKETSIZE      : aliased MAXPACKETSIZE_Register;
      --  Data rate override setting.
      RATEOVERRIDE       : aliased RATEOVERRIDE_Register;
   end record
     with Volatile;

   for CCM_Peripheral use record
      TASKS_KSGEN        at 16#0# range 0 .. 31;
      TASKS_CRYPT        at 16#4# range 0 .. 31;
      TASKS_STOP         at 16#8# range 0 .. 31;
      TASKS_RATEOVERRIDE at 16#C# range 0 .. 31;
      EVENTS_ENDKSGEN    at 16#100# range 0 .. 31;
      EVENTS_ENDCRYPT    at 16#104# range 0 .. 31;
      EVENTS_ERROR       at 16#108# range 0 .. 31;
      SHORTS             at 16#200# range 0 .. 31;
      INTENSET           at 16#304# range 0 .. 31;
      INTENCLR           at 16#308# range 0 .. 31;
      MICSTATUS          at 16#400# range 0 .. 31;
      ENABLE             at 16#500# range 0 .. 31;
      MODE               at 16#504# range 0 .. 31;
      CNFPTR             at 16#508# range 0 .. 31;
      INPTR              at 16#50C# range 0 .. 31;
      OUTPTR             at 16#510# range 0 .. 31;
      SCRATCHPTR         at 16#514# range 0 .. 31;
      MAXPACKETSIZE      at 16#518# range 0 .. 31;
      RATEOVERRIDE       at 16#51C# range 0 .. 31;
   end record;

   --  AES CCM Mode Encryption
   CCM_Periph : aliased CCM_Peripheral
     with Import, Address => System'To_Address (16#4000F000#);

end Interfaces.NRF52.CCM;
