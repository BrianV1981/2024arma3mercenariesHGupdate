private _randomSpawnPos = player getPos [(random 20) + 1,random 359];
_mercenary = "O_R_recon_JTAC_F" createUnit [_randomSpawnPos, (group player), "chute = 'Steerable_Parachute_F' createVehicle [0,0,0]; chute setPos [getPos this select 0, getPos this select 1, 150]; this moveIndriver chute;", 0.5, "PRIVATE"];(group player) setVariable ["Vcm_Disable",true];