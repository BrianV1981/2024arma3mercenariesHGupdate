["WEST","TRANSPORT","Fennek (GMG)"] call ALiVE_fnc_combatSupportRemove;
sleep 1;
[
    "TRANSPORT",                                                      	 // CS type
    [
        [26465,24439,0],                                               	// position
        60,                                                             // direction
        "I_MRAP_03_gmg_F",                                         // class
        "Fennek (GMG)",                                              // callsign
        "(group this) setVariable ['Vcm_Disable',true]",    	   // code
        "0",                                                           // height
        true,                                                          // slingloading
        0                                                             // number of boxes to spawn for slingloading
    ]
] Call ALiVE_fnc_combatSupportAdd;
sleep 7200;
["WEST","TRANSPORT","Fennek (GMG)"] call ALiVE_fnc_combatSupportRemove;