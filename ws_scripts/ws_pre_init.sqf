//Processing functions we need later
call compile preprocessFile "ws_fnc\ws_fnc_init.sqf";
call compile preprocessfile "scripts\BM_XEH.sqf";

waituntil {!isNil "BM_EventsLogic"};

//Variables
if (isNil "ws_initdone") then {ws_initdone = false;publicvariable "ws_initdone";};