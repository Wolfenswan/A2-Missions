if !(isServer) exitWith {};

_difmod = round (({isPlayer _x} count playableUnits)/10);
if (ws_param_scaling == 0) then {
	_difmod = 4;
};

_mkrs = ["mkrSpawn"] call ws_fnc_collectMarkers;
_classes =[["Ins_Soldier_1"],["Ins_Soldier_1","Ins_Soldier_2","Ins_Woodlander1","Ins_Woodlander3"]];
_TKclasses =[["TK_Soldier_SL_EP1","TK_Soldier_AT_EP1"],["TK_Soldier_EP1","TK_Soldier_GL_EP1","TK_Soldier_AR_EP1"]];
_vmkrs = ["mkrVSpawn"] call ws_fnc_collectMarkers;
_vclasses = ["T34_TK_EP1","T55_TK_EP1","BRDM2_TK_EP1"];
_side = east;

_spawnloop = {
	_cnt = _this select 0;
	_unts = _this select 1;
	for "_x" from 1 to _cnt do {
			_pos = [(_mkrs call ws_fnc_selectRandom),10] call ws_fnc_getPos;
			_grp = [_pos,_side,_unts,_classes] call ws_fnc_createGroup;
			{_x removeWeapon "NVGoggles"} forEach (units (_grp select 0));
			[_grp select 0,"mkrTown",["sad",100,100]] call ws_fnc_addWaypoint;
		};
};

_TKspawnloop = {
	_cnt = _this select 0;
	_unts = _this select 1;
	for "_x" from 1 to _cnt do {
			_pos = [(_mkrs call ws_fnc_selectRandom),10] call ws_fnc_getPos;
			_grp = [_pos,_side,_unts,_TKclasses] call ws_fnc_createGroup;
			{_x removeWeapon "NVGoggles"} forEach (units (_grp select 0));
			[_grp select 0,"mkrTown",["sad",100,100]] call ws_fnc_addWaypoint;
		};
};

_vspawnloop = {
	_cnt = _this select 0;
	for "_x" from 1 to _cnt do {
			_pos = [(_vmkrs call ws_fnc_selectRandom),10] call ws_fnc_getPos;
			_grp = [_pos,_side,(_vclasses call ws_fnc_selectRandom),["improved","lockall"]] call ws_fnc_createVehicle;
			{_x addWeapon "NVGoggles"} forEach (units (_grp select 1));
			[_grp select 1,"mkrTown",["sad",100,100]] call ws_fnc_addWaypoint;
	};
};

// Before 10 minute mark
while {time < 600} do {
	[2 + _difmod,3] call _spawnloop;
	sleep 60 + round random 30;
};

// Before 20 minute mark
while {time > 600 && time < 1200} do {
	[2 + _difmod,3] call _spawnloop;
	[1 + round (_difmod/2),5] call _TKspawnloop;
	[1] call _vspawnloop;
	sleep 90 + round random 60;
};

// Before 30 minute mark
while {time > 1200 && time < 1800} do {
	[4 + _difmod,3] call _spawnloop;
	[2 + round (_difmod/2),5] call _TKspawnloop;
	[2 + (round random 1)] call _vspawnloop;
	_grp = [_pos,_side,2,[["TK_Soldier_AA_EP1"],["TK_Soldier_EP1"]]] call ws_fnc_createGroup;
	[_grp select 0,"mkrTown",["sad",100,100]] call ws_fnc_addWaypoint;
	sleep 90 + round random 60;
};

// Grand finale
if (time > 1800) then {
	ws_music2 = true; publicVariable "ws_music2";
	[2 * _difmod,3] call _spawnloop;
	[2 + _difmod,5] call _TKspawnloop;
	[5] call _vspawnloop;
	sleep 30;
	catch_trigger = "ws_reinf"; publicVariable "catch_trigger";
	sleep 120;
	[3 * _difmod,3] call _spawnloop;
	[4 + _difmod,5] call _TKspawnloop;
	[8] call _vspawnloop;
};