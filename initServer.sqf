execVM "SA_AdvancedSlingLoading\functions\fn_advancedSlingLoadingInit.sqf";
execVM "SA_AdvancedTowing\functions\fn_advancedTowingInit.sqf";
execVM "AR_AdvancedRappelling\functions\fn_advancedRappellingInit.sqf";
execVM "scripts\HG_initServer.sqf";

///temporarily disable alive reward systems (disable installation, complete task, and objective secured)
///execVM "scripts\aliveDisableReward.sqf";
///execVM "scripts\aliveTaskReward.sqf";
///execVM "scripts\aliveTaskRewardV2.sqf";

////http://alivemod.com/forum/4788-autosave-every-x-minutes/0 (directions say init.sqf but I think serverinit.sqf is better?)
10800 call ALiVE_fnc_AutoSave_PNS;

///https://github.com/gruppe-adler/grad-persistence/wiki/saveMission
[{[false, 0] call grad_persistence_fnc_saveMission}, 3660, []] call CBA_fnc_addPerFrameHandler;