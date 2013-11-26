if (isNIl "ws_incoming") then {ws_incoming = false};

// Extra scripts
[LHD1] execVM "ws_scripts\ws_carrier.sqf";
[] execVM "ws_scripts\ws_burningbuilding.sqf";

//Eventhandler

//This stuff loads after the mission has started thanks to sleep 0.1;
sleep 0.1;

//Disable grass if desired
if (ws_param_grass > 0) then {
setTerrainGrid 50;
};

//Serverside
if (isServer) then {
//Initialize end trigger vars
ws_trgt1=false;ws_trgt2=false;ws_trgt3=false;ws_trgt4=false;

{_x removeWeapon "NVGoggles"} forEach allUnits;

//Switch off lights
["OFF","center",5000] call ws_fnc_switchLights;

//Wait until players and the carrier are properly initialized before spawning units
waitUntil {ws_LHD_done};

sleep 1;

ws_playableunits = count playableUnits;
ws_difmod = round (ws_playableunits/10); //A safe bet for FA sessions is to assume 50+ players. Thus from 55 on the difmod is 6.

//Difmod defaults to 1 in the spawnControl scripts if <0
[["mkrSpawn","mkrTarget_1"],160,(ws_difmod - 3),2] execVM "ws_scripts\ws_spawncontrolInsP.sqf";
[["mkrSpawn","mkrTarget"],125,(ws_difmod - 3),1] execVM "ws_scripts\ws_spawncontrolInsP.sqf";
[["mkrSpawn","mkrTarget_1"],160,(ws_difmod - 4),2] execVM "ws_scripts\ws_spawncontrolInsH.sqf";
[["mkrSpawn","mkrTarget"],125,(ws_difmod - 4),1] execVM "ws_scripts\ws_spawncontrolInsH.sqf";
[["mkrSpawn_1","mkrTarget_3"],350,(ws_difmod - 2),0] execVM "ws_scripts\ws_spawncontrolInsP.sqf";
[["mkrSpawn_2","mkrTarget_2"],250,(ws_difmod - 2),0] execVM "ws_scripts\ws_spawncontrolInsP.sqf";

waitUntil {scriptDone f_processParamsArray};

if (ws_param_caching > 0) then {
	waitUntil{typeName allGroups == "ARRAY"};
	{
	if ((side leader _x) == west) then {_x setVariable ["CEP_disableCache", true]; };
	if ((side leader _x) == civilian) then {_x setVariable ["CEP_disableCache", true]; };
	if ((count units _x) <= 2) then {_x setVariable ["CEP_disableCache", true];};
	}forEach allGroups;

	ws_caching = true;
	[750,5] execVM "modules\CEP_Caching\main.sqf";
	};

if (ws_param_mortars > 0) then {
	waitUntil {time > ws_param_mortars};
	if (isNil "ws_mtr_dead") then {ws_mtr_dead=false;};
		while {!ws_mtr_dead} do {
			_unit = playableUnits call ws_fnc_selectRandom;
			while {side _unit != west || !alive _unit || (_unit distance (getMarkerPos "mkrMtrs") < 250) || (group _unit != GrpUSMC_AH1)} do {_unit = playableUnits call ws_fnc_selectRandom;};
			ws_incoming = true;
			_mortarS = [[_unit],250,5,[1,3,0,1,0],[0,60]] execVM "ws_scripts\ws_mortars.sqf";
			waitUntil {scriptDone _mortarS};
			ws_incoming = false;
			sleep 300 + round (random 120);
		};
	};

[] spawn {
	_pos = getMarkerPos "center";
	while {true} do {
		sleep 15 + random 10;
	  createVehicle ["F_40mm_green", [_pos select 0,_pos select 1,150], [], 600, "NONE"];
	  createVehicle ["F_40mm_green", [_pos select 0,_pos select 1,150], [], 600, "NONE"];
	  createVehicle ["F_40mm_green", [_pos select 0,_pos select 1,150], [], 600, "NONE"];
  };
};

};
