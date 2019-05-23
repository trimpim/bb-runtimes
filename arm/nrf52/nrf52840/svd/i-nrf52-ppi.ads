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

package Interfaces.NRF52.PPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------------------------
   -- TASKS_CHG cluster's Registers --
   -----------------------------------

   --  Channel group tasks
   type TASKS_CHG_Cluster is record
      --  Description cluster[0]: Enable channel group 0
      EN  : aliased Interfaces.NRF52.UInt32;
      --  Description cluster[0]: Disable channel group 0
      DIS : aliased Interfaces.NRF52.UInt32;
   end record
     with Volatile, Size => 64;

   for TASKS_CHG_Cluster use record
      EN  at 16#0# range 0 .. 31;
      DIS at 16#4# range 0 .. 31;
   end record;

   --  Channel group tasks
   type TASKS_CHG_Clusters is array (0 .. 5) of TASKS_CHG_Cluster;

   --  Enable or disable channel 0
   type CHEN_CH0_Field is
     (
      --  Disable channel
      Disabled,
      --  Enable channel
      Enabled)
     with Size => 1;
   for CHEN_CH0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  CHEN_CH array
   type CHEN_CH_Field_Array is array (0 .. 31) of CHEN_CH0_Field
     with Component_Size => 1, Size => 32;

   --  Channel enable register
   type CHEN_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.NRF52.UInt32;
         when True =>
            --  CH as an array
            Arr : CHEN_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CHEN_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Channel 0 enable set register. Writing '0' has no effect
   type CHENSET_CH0_Field is
     (
      --  Read: channel disabled
      Disabled,
      --  Read: channel enabled
      Enabled)
     with Size => 1;
   for CHENSET_CH0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Channel 0 enable set register. Writing '0' has no effect
   type CHENSET_CH0_Field_1 is
     (
      --  Reset value for the field
      Chenset_Ch0_Field_Reset,
      --  Write: Enable channel
      Set)
     with Size => 1;
   for CHENSET_CH0_Field_1 use
     (Chenset_Ch0_Field_Reset => 0,
      Set => 1);

   --  CHENSET_CH array
   type CHENSET_CH_Field_Array is array (0 .. 31) of CHENSET_CH0_Field_1
     with Component_Size => 1, Size => 32;

   --  Channel enable set register
   type CHENSET_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.NRF52.UInt32;
         when True =>
            --  CH as an array
            Arr : CHENSET_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CHENSET_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Channel 0 enable clear register. Writing '0' has no effect
   type CHENCLR_CH0_Field is
     (
      --  Read: channel disabled
      Disabled,
      --  Read: channel enabled
      Enabled)
     with Size => 1;
   for CHENCLR_CH0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Channel 0 enable clear register. Writing '0' has no effect
   type CHENCLR_CH0_Field_1 is
     (
      --  Reset value for the field
      Chenclr_Ch0_Field_Reset,
      --  Write: disable channel
      Clear)
     with Size => 1;
   for CHENCLR_CH0_Field_1 use
     (Chenclr_Ch0_Field_Reset => 0,
      Clear => 1);

   --  CHENCLR_CH array
   type CHENCLR_CH_Field_Array is array (0 .. 31) of CHENCLR_CH0_Field_1
     with Component_Size => 1, Size => 32;

   --  Channel enable clear register
   type CHENCLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.NRF52.UInt32;
         when True =>
            --  CH as an array
            Arr : CHENCLR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CHENCLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ----------------------------
   -- CH cluster's Registers --
   ----------------------------

   --  PPI Channel
   type CH_Cluster is record
      --  Description cluster[0]: Channel 0 event end-point
      EEP : aliased Interfaces.NRF52.UInt32;
      --  Description cluster[0]: Channel 0 task end-point
      TEP : aliased Interfaces.NRF52.UInt32;
   end record
     with Volatile, Size => 64;

   for CH_Cluster use record
      EEP at 16#0# range 0 .. 31;
      TEP at 16#4# range 0 .. 31;
   end record;

   --  PPI Channel
   type CH_Clusters is array (0 .. 19) of CH_Cluster;

   --  Include or exclude channel 0
   type CHG_CH0_Field is
     (
      --  Exclude
      Excluded,
      --  Include
      Included)
     with Size => 1;
   for CHG_CH0_Field use
     (Excluded => 0,
      Included => 1);

   --  CHG_CH array
   type CHG_CH_Field_Array is array (0 .. 31) of CHG_CH0_Field
     with Component_Size => 1, Size => 32;

   --  Description collection[0]: Channel group 0
   type CHG_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.NRF52.UInt32;
         when True =>
            --  CH as an array
            Arr : CHG_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CHG_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Description collection[0]: Channel group 0
   type CHG_Registers is array (0 .. 5) of CHG_Register
     with Volatile;

   ------------------------------
   -- FORK cluster's Registers --
   ------------------------------

   --  Fork
   type FORK_Cluster is record
      --  Description cluster[0]: Channel 0 task end-point
      TEP : aliased Interfaces.NRF52.UInt32;
   end record
     with Volatile, Size => 32;

   for FORK_Cluster use record
      TEP at 0 range 0 .. 31;
   end record;

   --  Fork
   type FORK_Clusters is array (0 .. 31) of FORK_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  Programmable Peripheral Interconnect
   type PPI_Peripheral is record
      --  Channel group tasks
      TASKS_CHG : aliased TASKS_CHG_Clusters;
      --  Channel enable register
      CHEN      : aliased CHEN_Register;
      --  Channel enable set register
      CHENSET   : aliased CHENSET_Register;
      --  Channel enable clear register
      CHENCLR   : aliased CHENCLR_Register;
      --  PPI Channel
      CH        : aliased CH_Clusters;
      --  Description collection[0]: Channel group 0
      CHG       : aliased CHG_Registers;
      --  Fork
      FORK      : aliased FORK_Clusters;
   end record
     with Volatile;

   for PPI_Peripheral use record
      TASKS_CHG at 16#0# range 0 .. 383;
      CHEN      at 16#500# range 0 .. 31;
      CHENSET   at 16#504# range 0 .. 31;
      CHENCLR   at 16#508# range 0 .. 31;
      CH        at 16#510# range 0 .. 1279;
      CHG       at 16#800# range 0 .. 191;
      FORK      at 16#910# range 0 .. 1023;
   end record;

   --  Programmable Peripheral Interconnect
   PPI_Periph : aliased PPI_Peripheral
     with Import, Address => System'To_Address (16#4001F000#);

end Interfaces.NRF52.PPI;
