_nuketrigger1 = createTrigger ["EmptyDetector", [0,0,0]];
_nuketrigger1 setTriggerArea [0, 0, 0, false];
_nuketrigger1 setTriggerActivation ["BRAVO", "", false];
_nuketrigger1 setTriggerText "Activate 5kT Special Weapon Typhoon";
_nuketrigger1 setTriggerStatements [
									"this",
									"null = [getPos nuke_2, 5, false, true, 0] execVM 'freestyleNuke\iniNuke.sqf';
									hint '5kT nuke detonated. A CBRN suit, air purifying respirator, and combination unit respirator or any combination of the three items are recommended before entering the nuclear blastzone.'",
									""
								];