///https://forums.bohemia.net/forums/topic/220528-help-disable-escape-options-when-killed/

if (serverCommandAvailable "#kick") then {
with uiNamespace do  
					{ 
						_ctrl = findDisplay 49 ctrlCreate ["RscButton", -1]; 
						_ctrl ctrlSetPosition [0.917656 * safezoneW + safezoneX,0.94 * safezoneH + safezoneY,0.0773437 * safezoneW,0.044 * safezoneH]; 
						_ctrl ctrlSetText "Disable abort for dead players"; 
						_ctrl ctrlCommit 0; 
						_ctrl ctrlAddEventHandler ["ButtonDown",  
						 { 
                        _status = missionNamespace getVariable ["TAG_abortIsAllowed",true];
                        if (_status) then {missionNamespace setVariable ["TAG_abortIsAllowed",false,true];systemChat "abort disabled"} else {missionNamespace setVariable ["TAG_abortIsAllowed",true,true]; systemchat "abort enabled"};
						 
						  
						 }]; 
					};
};

_status = missionNamespace getVariable ["TAG_abortIsAllowed",true];
if (_status) exitWith {};
disableSerialization;

if (!alive player) then  {((findDisplay 49) displayctrl 104) ctrlShow false;};