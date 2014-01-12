//Variables
if (isNil "ws_playableunits") then {ws_playableunits = count playableUnits;publicvariable "ws_playableunits";};
if (isNil "ws_reachedconvoy") then {ws_reachedconvoy = false;publicvariable "ws_intelcollected";};

[LHD1] execVM "ws_scripts\ws_carrier.sqf";
waitUntil {ws_pre_init_done};
 
if (faction player =="USMC") then {
{_x setMarkerAlphaLocal 1} forEach ["a1","a2","a3","a4"];
};

// Mamba's mortars

if (!isDedicated) then {
	[] execVM "scripts\mortar.sqf";
};
 
//Executing the folk markers later
[] execVM "f\common\folk_setLocalGroupMarkers.sqf";