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

package Interfaces.NRF52.FPU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  FPU
   type FPU_Peripheral is record
      --  Unused.
      UNUSED : aliased Interfaces.NRF52.UInt32;
   end record
     with Volatile;

   for FPU_Peripheral use record
      UNUSED at 0 range 0 .. 31;
   end record;

   --  FPU
   FPU_Periph : aliased FPU_Peripheral
     with Import, Address => System'To_Address (16#40026000#);

end Interfaces.NRF52.FPU;
