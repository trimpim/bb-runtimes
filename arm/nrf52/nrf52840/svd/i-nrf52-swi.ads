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

package Interfaces.NRF52.SWI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Software interrupt 0
   type SWI_Peripheral is record
      --  Unused.
      UNUSED : aliased Interfaces.NRF52.UInt32;
   end record
     with Volatile;

   for SWI_Peripheral use record
      UNUSED at 0 range 0 .. 31;
   end record;

   --  Software interrupt 0
   SWI0_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40014000#);

   --  Software interrupt 1
   SWI1_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40015000#);

   --  Software interrupt 2
   SWI2_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40016000#);

   --  Software interrupt 3
   SWI3_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40017000#);

   --  Software interrupt 4
   SWI4_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40018000#);

   --  Software interrupt 5
   SWI5_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40019000#);

end Interfaces.NRF52.SWI;
