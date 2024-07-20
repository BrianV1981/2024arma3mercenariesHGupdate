class Extended_Init_EventHandlers {
 class Car {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\claimCar.sqf')";
 };
 class Truck {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\claimTruck.sqf')";
 };
 class Tank {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\claimTank.sqf')";
 };
 class Ship {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\claimShip.sqf')";
 };
 class Submarine {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\claimVehicle.sqf')";
 };
 class Air {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\claimVehicle.sqf')";
 };
 
 //////repair vehicles//////
 class gm_ge_army_fuchsa0_engineer {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRepairVehicle.sqf');";
 };
 class gm_dk_army_m113a1dk_engineer {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRepairVehicle.sqf')";
 };
 class gm_gc_army_ural4320_repair {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRepairVehicle.sqf')";
 };
 class gm_gc_bgs_ural4320_repair {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRepairVehicle.sqf')";
 };
 class gm_pl_army_ural4320_repair {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRepairVehicle.sqf')";
 };
 class gm_ge_army_u1300l_repair {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRepairVehicle.sqf')";
 };
 
 ////////rearm vehicles////////
 class gm_gc_army_ural4320_reammo {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetAmmoVehicle.sqf')";
 };
 class gm_gc_bgs_ural4320_reammo {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetAmmoVehicle.sqf')";
 };
 class gm_pl_army_ural4320_reammo {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetAmmoVehicle.sqf')";
 };
 class gm_ge_army_kat1_451_reammo {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetAmmoVehicle.sqf')";
 };
 
 //////refuel vehicles///////////
  class gm_gc_army_ural375d_refuel {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRefuelVehicle.sqf')";
 };
 class gm_gc_bgs_ural375d_refuel {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRefuelVehicle.sqf')";
 };
 class gm_pl_army_ural375d_refuel {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRefuelVehicle.sqf')";
 };
 class gm_ge_army_kat1_451_refuel {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRefuelVehicle.sqf')";
 };
 
 //////repair, rearm, refuel vehicles///////////
  class gm_dk_army_bpz2a0 {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRefuelVehicle.sqf');_this call (compile preprocessFileLineNumbers 'scripts\ACEsetAmmoVehicle.sqf');_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRepairVehicle.sqf')";
 };
 class gm_ge_army_bpz2a0 {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRefuelVehicle.sqf');_this call (compile preprocessFileLineNumbers 'scripts\ACEsetAmmoVehicle.sqf');_this call (compile preprocessFileLineNumbers 'scripts\ACEsetRepairVehicle.sqf')";
 };
 
 /////add 2x toolkits to vanilla repair vehicles
 class B_G_Offroad_01_repair_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class O_Heli_Transport_04_repair_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class O_Heli_Transport_04_repair_black_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class I_G_Offroad_01_repair_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class I_Truck_02_box_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class B_Truck_01_Repair_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class O_G_Offroad_01_repair_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class O_Truck_02_box_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class B_T_Truck_01_Repair_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class O_Truck_03_repair_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class B_APC_Tracked_01_CRV_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class B_T_APC_Tracked_01_CRV_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
 class O_T_Truck_03_repair_ghex_F {
  init = "_this call (compile preprocessFileLineNumbers 'scripts\addToolKits.sqf')";
 };
};