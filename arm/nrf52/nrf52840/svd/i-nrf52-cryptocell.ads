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

package Interfaces.NRF52.CRYPTOCELL is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Enable or disable the CRYPTOCELL subsystem
   type ENABLE_ENABLE_Field is
     (
      --  CRYPTOCELL subsystem disabled
      Disabled,
      --  CRYPTOCELL subsystem enabled
      Enabled)
     with Size => 1;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Control power and clock for CRYPTOCELL subsystem
   type ENABLE_Register is record
      --  Enable or disable the CRYPTOCELL subsystem
      ENABLE        : ENABLE_ENABLE_Field :=
                       Interfaces.NRF52.CRYPTOCELL.Disabled;
      --  unspecified
      Reserved_1_31 : Interfaces.NRF52.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ARM TrustZone CryptoCell register interface
   type CRYPTOCELL_Peripheral is record
      --  Control power and clock for CRYPTOCELL subsystem
      ENABLE : aliased ENABLE_Register;
   end record
     with Volatile;

   for CRYPTOCELL_Peripheral use record
      ENABLE at 16#500# range 0 .. 31;
   end record;

   --  ARM TrustZone CryptoCell register interface
   CRYPTOCELL_Periph : aliased CRYPTOCELL_Peripheral
     with Import, Address => System'To_Address (16#5002A000#);

end Interfaces.NRF52.CRYPTOCELL;
