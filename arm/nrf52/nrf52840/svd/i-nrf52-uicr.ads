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

package Interfaces.NRF52.UICR is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Description collection[0]: Reserved for Nordic firmware design

   --  Description collection[0]: Reserved for Nordic firmware design
   type NRFFW_Registers is array (0 .. 14) of Interfaces.NRF52.UInt32
     with Volatile;

   --  Description collection[0]: Reserved for Nordic hardware design

   --  Description collection[0]: Reserved for Nordic hardware design
   type NRFHW_Registers is array (0 .. 11) of Interfaces.NRF52.UInt32
     with Volatile;

   --  Description collection[0]: Reserved for customer

   --  Description collection[0]: Reserved for customer
   type CUSTOMER_Registers is array (0 .. 31) of Interfaces.NRF52.UInt32
     with Volatile;

   subtype PSELRESET_PIN_Field is Interfaces.NRF52.UInt5;
   subtype PSELRESET_PORT_Field is Interfaces.NRF52.Bit;

   --  Connection
   type PSELRESET_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for PSELRESET_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Description collection[0]: Mapping of the nRESET function
   type PSELRESET_Register is record
      --  Pin number of PORT onto which nRESET is exposed
      PIN           : PSELRESET_PIN_Field := 16#1F#;
      --  Port number onto which nRESET is exposed
      PORT          : PSELRESET_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : Interfaces.NRF52.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : PSELRESET_CONNECT_Field :=
                       Interfaces.NRF52.UICR.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSELRESET_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Description collection[0]: Mapping of the nRESET function
   type PSELRESET_Registers is array (0 .. 1) of PSELRESET_Register
     with Volatile;

   --  Enable or disable access port protection.
   type APPROTECT_PALL_Field is
     (
      --  Enable
      Enabled,
      --  Disable
      Disabled)
     with Size => 8;
   for APPROTECT_PALL_Field use
     (Enabled => 0,
      Disabled => 255);

   --  Access port protection
   type APPROTECT_Register is record
      --  Enable or disable access port protection.
      PALL          : APPROTECT_PALL_Field := Interfaces.NRF52.UICR.Disabled;
      --  unspecified
      Reserved_8_31 : Interfaces.NRF52.UInt24 := 16#FFFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APPROTECT_Register use record
      PALL          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Setting of pins dedicated to NFC functionality
   type NFCPINS_PROTECT_Field is
     (
      --  Operation as GPIO pins. Same protection as normal GPIO pins
      Disabled,
      --  Operation as NFC antenna pins. Configures the protection for NFC
      --  operation
      Nfc)
     with Size => 1;
   for NFCPINS_PROTECT_Field use
     (Disabled => 0,
      Nfc => 1);

   --  Setting of pins dedicated to NFC functionality: NFC antenna or GPIO
   type NFCPINS_Register is record
      --  Setting of pins dedicated to NFC functionality
      PROTECT       : NFCPINS_PROTECT_Field := Interfaces.NRF52.UICR.Nfc;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#7FFFFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NFCPINS_Register use record
      PROTECT       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Configure CPU non-intrusive debug features
   type DEBUGCTRL_CPUNIDEN_Field is
     (
      --  Disable CPU ITM and ETM functionality
      Disabled,
      --  Enable CPU ITM and ETM functionality (default behavior)
      Enabled)
     with Size => 8;
   for DEBUGCTRL_CPUNIDEN_Field use
     (Disabled => 0,
      Enabled => 255);

   --  Configure CPU flash patch and breakpoint (FPB) unit behavior
   type DEBUGCTRL_CPUFPBEN_Field is
     (
      --  Disable CPU FPB unit. Writes into the FPB registers will be ignored.
      Disabled,
      --  Enable CPU FPB unit (default behavior)
      Enabled)
     with Size => 8;
   for DEBUGCTRL_CPUFPBEN_Field use
     (Disabled => 0,
      Enabled => 255);

   --  Processor debug control
   type DEBUGCTRL_Register is record
      --  Configure CPU non-intrusive debug features
      CPUNIDEN       : DEBUGCTRL_CPUNIDEN_Field :=
                        Interfaces.NRF52.UICR.Enabled;
      --  Configure CPU flash patch and breakpoint (FPB) unit behavior
      CPUFPBEN       : DEBUGCTRL_CPUFPBEN_Field :=
                        Interfaces.NRF52.UICR.Enabled;
      --  unspecified
      Reserved_16_31 : Interfaces.NRF52.UInt16 := 16#FFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGCTRL_Register use record
      CPUNIDEN       at 0 range 0 .. 7;
      CPUFPBEN       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Set drive level for REG0 DCDC mode.
   type DCDCDRIVE0_DCDCDRIVE0_Field is
     (
      --  Low drive
      Low,
      --  High drive
      High)
     with Size => 1;
   for DCDCDRIVE0_DCDCDRIVE0_Field use
     (Low => 0,
      High => 1);

   --  Set drive level for REG0 DCDC mode. Using high drive will slightly
   --  reduce DCDC efficiency.
   type DCDCDRIVE0_Register is record
      --  Set drive level for REG0 DCDC mode.
      DCDCDRIVE0    : DCDCDRIVE0_DCDCDRIVE0_Field :=
                       Interfaces.NRF52.UICR.High;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#7FFFFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCDRIVE0_Register use record
      DCDCDRIVE0    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Output voltage from of REG0 regulator stage. The maximum output voltage
   --  from this stage is given as VDDH - VEXDIF.
   type REGOUT0_VOUT_Field is
     (
      --  1.8 V
      Val_1V8,
      --  2.1 V
      Val_2V1,
      --  2.4 V
      Val_2V4,
      --  2.7 V
      Val_2V7,
      --  3.0 V
      Val_3V0,
      --  3.3 V
      Val_3V3,
      --  Default voltage: 1.8 V
      Default)
     with Size => 3;
   for REGOUT0_VOUT_Field use
     (Val_1V8 => 0,
      Val_2V1 => 1,
      Val_2V4 => 2,
      Val_2V7 => 3,
      Val_3V0 => 4,
      Val_3V3 => 5,
      Default => 7);

   --  GPIO reference voltage / external output supply voltage in high voltage
   --  mode
   type REGOUT0_Register is record
      --  Output voltage from of REG0 regulator stage. The maximum output
      --  voltage from this stage is given as VDDH - VEXDIF.
      VOUT          : REGOUT0_VOUT_Field := Interfaces.NRF52.UICR.Default;
      --  unspecified
      Reserved_3_31 : Interfaces.NRF52.UInt29 := 16#1FFFFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGOUT0_Register use record
      VOUT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  User information configuration registers
   type UICR_Peripheral is record
      --  Unspecified
      UNUSED0    : aliased Interfaces.NRF52.UInt32;
      --  Unspecified
      UNUSED1    : aliased Interfaces.NRF52.UInt32;
      --  Unspecified
      UNUSED2    : aliased Interfaces.NRF52.UInt32;
      --  Unspecified
      UNUSED3    : aliased Interfaces.NRF52.UInt32;
      --  Description collection[0]: Reserved for Nordic firmware design
      NRFFW      : aliased NRFFW_Registers;
      --  Description collection[0]: Reserved for Nordic hardware design
      NRFHW      : aliased NRFHW_Registers;
      --  Description collection[0]: Reserved for customer
      CUSTOMER   : aliased CUSTOMER_Registers;
      --  Description collection[0]: Mapping of the nRESET function
      PSELRESET  : aliased PSELRESET_Registers;
      --  Access port protection
      APPROTECT  : aliased APPROTECT_Register;
      --  Setting of pins dedicated to NFC functionality: NFC antenna or GPIO
      NFCPINS    : aliased NFCPINS_Register;
      --  Processor debug control
      DEBUGCTRL  : aliased DEBUGCTRL_Register;
      --  Set drive level for REG0 DCDC mode. Using high drive will slightly
      --  reduce DCDC efficiency.
      DCDCDRIVE0 : aliased DCDCDRIVE0_Register;
      --  GPIO reference voltage / external output supply voltage in high
      --  voltage mode
      REGOUT0    : aliased REGOUT0_Register;
   end record
     with Volatile;

   for UICR_Peripheral use record
      UNUSED0    at 16#0# range 0 .. 31;
      UNUSED1    at 16#4# range 0 .. 31;
      UNUSED2    at 16#8# range 0 .. 31;
      UNUSED3    at 16#10# range 0 .. 31;
      NRFFW      at 16#14# range 0 .. 479;
      NRFHW      at 16#50# range 0 .. 383;
      CUSTOMER   at 16#80# range 0 .. 1023;
      PSELRESET  at 16#200# range 0 .. 63;
      APPROTECT  at 16#208# range 0 .. 31;
      NFCPINS    at 16#20C# range 0 .. 31;
      DEBUGCTRL  at 16#210# range 0 .. 31;
      DCDCDRIVE0 at 16#300# range 0 .. 31;
      REGOUT0    at 16#304# range 0 .. 31;
   end record;

   --  User information configuration registers
   UICR_Periph : aliased UICR_Peripheral
     with Import, Address => System'To_Address (16#10001000#);

end Interfaces.NRF52.UICR;
