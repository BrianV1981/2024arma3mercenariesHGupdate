/*  Spawns vehicle
*
*/

params ["_buyer","_account","_price","_code","_baseConfigName","_categoryConfigName","_itemConfigName","_vehiclespawn"];

_spawnEmpty = [(missionConfigFile >> "CfgGradBuymenu" >> _baseConfigName >> _categoryConfigName >> _itemConfigName >> "spawnEmpty"), "number", -1] call CBA_fnc_getConfigEntry;
if (_spawnEmpty == -1) then {
    _spawnEmpty = [(missionConfigFile >> "CfgGradBuymenu" >> _baseConfigName >> _categoryConfigName >> "spawnEmpty"), "number", 0] call CBA_fnc_getConfigEntry;
};

_minDistance = 0;
if (_vehiclespawn isEqualType objNull) then {
    _minDistance = 15;
    _vehiclespawn = getPos _vehiclespawn;
};

//find spawn position
_spawnPosition = [];
for "_i" from 1 to 50 do {
    _spawnPosition = _vehiclespawn findEmptyPosition [_minDistance, 15 + 5*_i, _itemConfigName];
    if (str _spawnPosition != "[]") exitWith {};
};
if (str _spawnPosition == "[]") exitWith {[_buyer,_account,_price,"No vehicle spawn position found. You got your money back."] remoteExec ["grad_lbm_fnc_reimburse",0,false];};

//spawn vehicle
_vehicle = _itemConfigName createVehicle _spawnPosition;
/////////////added HG vehicle ownership////
if (isServer || isDedicated) then
	{
		[_vehicle,_buyer] remoteExecCall ["HG_fnc_setOwner",_buyer,false];
	};
////////////added HG vehicle lock/////////
[_vehicle,2] call HG_fnc_lock;
 /////////////////////////////////////////
//bis vehicle init
private _init = [(missionConfigFile >> "CfgGradBuymenu" >> _baseConfigName >> _categoryConfigName >> _itemConfigName >> "vehicleInit"), "text", "[[],[]]"] call CBA_fnc_getConfigEntry;
private _compiledInit = call compile _init;
_compiledInit params ["_initTexture", "_initAnimationsource"];

[_vehicle, _initTexture, _initAnimationsource] call BIS_fnc_initVehicle;

// spawn empty
if (_spawnEmpty == 1) then {
    clearBackpackCargoGlobal _vehicle;
    clearItemCargoGlobal _vehicle;
    clearMagazineCargoGlobal _vehicle;
    clearWeaponCargoGlobal _vehicle;
};

[_buyer,_itemConfigName,_vehicle,_spawnPosition] call _code;
[[_buyer,_itemConfigName,_vehicle,_spawnPosition],_code] remoteExec ["grad_lbm_fnc_callCodeClient",0,false];

//vehicle marker
_c1 = [(missionConfigFile >> "CfgGradBuymenu" >> _baseConfigName >> "vehicleMarkers"), "number", 2] call CBA_fnc_getConfigEntry;
_c2 = [(missionConfigFile >> "CfgGradBuymenu" >> "vehicleMarkers"), "number", 1] call CBA_fnc_getConfigEntry;
switch (true) do {
    case (_c1 == 1): {
        [_buyer, _vehicle, _baseConfigName, _categoryConfigName, _itemConfigName] remoteExec ["grad_lbm_fnc_vehicleMarker", 0, false];
    };
    case (_c1 == 0): {false};
    case (_c2 == 1): {
        [_buyer, _vehicle, _baseConfigName, _categoryConfigName, _itemConfigName] remoteExec ["grad_lbm_fnc_vehicleMarker", 0, false];
    };
    default {false};
};