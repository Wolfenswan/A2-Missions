//Wolfenswan - global variables
if (isNil "ws_initdone") then {ws_initdone = false;};
if (isNil "ws_markersdone") then {ws_markersdone = false;};
if (isNil "ws_mapclicked") then {ws_mapclicked = false;};
if (isNil "ws_upload_started") then {ws_upload_started = false;};
if (isNil "ws_data_pickedup") then {ws_data_pickedup = false;};

if (isServer) then {
publicvariable "ws_initdone";
publicvariable "ws_markersdone";
publicvariable "ws_mapclicked";
};

//Processing functions we need later
call compile preprocessfile "ws_fnc\ws_fnc_init.sqf";
call compile preprocessfile "SHK_pos\shk_pos_init.sqf";
call compile preprocessfile "scripts\BM_XEH.sqf";

//Wolfenswan - scripts serverside
ws_spawncontrol = [] execVM "ws_scripts\ws_spawncontrol.sqf";

//Wait for clients to synch
[] spawn {
sleep 0.1;
waitUntil {!(isNull player)};
waitUntil {(player == player)};
waitUntil { time > 0 };
player allowDamage false;
player enableSimulation false;
while {!(ws_initdone)} do {
_dots = "";
for "_i" from 0 to 3 do {
titleText [format["Preparing mission%1",_dots], "BLACK FADED", 0];
_dots = _dots + ".";
sleep 0.3;};};
player allowDamage true;
player enableSimulation true;
titleFadeout 1;};

waitUntil {scriptDone f_processParamsArray};

//Set Wreck on fire
if (f_param_fire == 1) then {
if (isNil "BIS_Effects_Burn") then {BIS_Effects_Burn = compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";};
_fire = [Wreck,5,time,false,false] spawn BIS_Effects_Burn;};

//Eventhandlers
["ws_uploadstarted", {
	private ["_runtime","_tick","_dots","_pos"];
	(_this select 0) removeAction (_this select 2);
	
	//Start waves
	ws_upload_started = true; publicvariable "ws_upload_started";

	_pos = getPos (_this select 1);
	ws_laptop setPos _pos;

	cutText [format ["%1 has begun the transfer",name (_this select 1)],"PLAIN",1];

	_mkr = createMarker ["LP", _pos];
	_mkr setMarkerShape "ICON";
	_mkr setMarkerType "Dot";
	_mkr setMarkerColor "ColorGreen";
	_mkr setMarkerText "Data";

	[] spawn {
	_runtime = f_param_uploadtime;
	_tick = 0;
	
	sleep 2;

		while {_tick != _runtime} do {
				_dots = "";
				for "_i" from 0 to 5 do {
					hintsilent format ["Transfering%1",_dots];
					_dots = _dots + ".";
					sleep 0.1;};
					sleep 5;
				_dots = "";
				for "_i" from 0 to 5 do {
				hintsilent format ["Transfering%1",_dots];
				_dots = _dots + ".";
				sleep 0.1;};
			sleep 5;
			_tick = _tick + 10;
		};
	hintsilent "Transfer finished!";
	
	cutText [format ["Transfer finished, data has been transfered."],"PLAIN",1];
	
	//Final wave
	ws_data_pickedup = true;  publicvariable "ws_data_pickedup";

	ws_laptop addAction ["<t color='#dddd00'>"+"Pickup data"+"</t>",
	"scripts\bm_addAction.sqf",
	{["ws_pickuplaptop", [(_this select 0),(_this select 1),(_this select 2)]] call BM_globalEvent;},1,false,true,"",
	"((_target distance _this) < 4)"];
	};
}
] call BM_addEventHandler;

["ws_pickuplaptop", {
	private ["_pos","_check","_carrier"];
	_pos = getPos (_this select 0);
	(_this select 0) removeAction (_this select 2);

	deleteVehicle ws_laptop;
	deleteMarker "LP";
	(_this select 1) addWeapon "EvMoscow";
	cutText [format ["%1 has collected the data.",name (_this select 1)],"PLAIN",1];
}
] call BM_addEventHandler;

//Actions
[] execVM "custom\groupTeleport.sqf"; //HALO for Spetsnatz

//Ugly code alert
if !(isNil "grpRU_Grnd") then {
Wreck addAction ["<t color='#dddd00'>"+"Begin transfer"+"</t>",
 "scripts\bm_addAction.sqf",
  {["ws_uploadstarted", [(_this select 0),(_this select 1),(_this select 2)]] call BM_globalEvent;},1,false,true,"",
 "(((_target distance _this) < 8) && (group _this != grpRU_Grnd))"]; 
	if (f_param_broadcastaction == 1) then {
		ws_broadcastlocation = UnitRU_Grnd_P addAction ["<t color='#dddd00'>"+"Estimate location"+"</t>",
														"ws_scripts\ws_mapclickaction.sqf",
														nil,1,false,true,"",
														"(driver _target == _this)&&((Wreck distance _this)<250)"];
	} else {
	ws_broadcastlocation = UnitRU_Grnd_P addAction ["<t color='#dddd00'>"+"Estimate location"+"</t>",
													"ws_scripts\ws_mapclickaction.sqf",
													nil,1,false,true,"",
													"(driver _target == _this)"];};
 } else {
Wreck addAction ["<t color='#dddd00'>"+"Begin transfer"+"</t>",
  "scripts\bm_addAction.sqf",
  {["ws_uploadstarted", [(_this select 0),(_this select 1),(_this select 2)]] call BM_globalEvent;},1,false,true,"",
  "((_target distance _this) < 8)"];

};