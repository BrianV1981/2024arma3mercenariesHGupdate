params [["_waitTime","?"]];

_message = parseText format ["Mission will be saved in %1s.<br/><t color = '#ff3333'>Saving grad-persistence variables</t>",_waitTime];
[_message,0,0,4,0.3] spawn BIS_fnc_dynamicText;
