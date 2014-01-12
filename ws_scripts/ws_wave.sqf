if !(isServer) exitWith {};

_difmod = round (({isPlayer _x} count playableUnits)/10);
if (ws_param_scaling == 0) then {
	_difmod = 4;
};

if (isNil "ws_eicnt") then {ws_eicnt = 0};

_mkrs = ["mkrSpawn"] call ws_fnc_collectMarkers;
_classes =[["Ins_Soldier_1"],["Ins_Soldier_1","Ins_Soldier_2","Ins_Woodlander1","Ins_Woodlander3"]];
_TKclasses =[["TK_Soldier_SL_EP1","TK_Soldier_AT_EP1"],["TK_Soldier_EP1","TK_Soldier_GL_EP1","TK_Soldier_AR_EP1"]];
_vmkrs = ["mkrVSpawn"] call ws_fnc_collectMarkers;
_vclasses = ["T34_TK_EP1","T55_TK_EP1"];
_side = east;

_spawnloop = {
	_cnt = _this select 0;
	_unts = _this select 1;
	for "_x" from 1 to _cnt do {
			_pos = [(_mkrs call ws_fnc_selectRandom),10] call ws_fnc_getPos;
			_grp = [_pos,_side,_unts,_classes] call ws_fnc_createGroup; _grp = _grp select 0;
			{_x removeWeapon "NVGoggles"} forEach (units _grp);
			[_grp,"mkrTown",["sad",100,100]] call ws_fnc_addWaypoint;
		};
};

_TKspawnloop = {
	_cnt = _this select 0;
	_unts = _this select 1;
	for "_x" from 1 to _cnt do {
			_pos = [(_mkrs call ws_fnc_selectRandom),10] call ws_fnc_getPos;
			_grp = [_pos,_side,_unts,_TKclasses] call ws_fnc_createGroup; _grp = _grp select 0;
			{_x removeWeapon "NVGoggles"} forEach (units _grp);
			[_grp,"mkrTown",["sad",100,100]] call ws_fnc_addWaypoint;
		};
};

_vspawnloop = {
	_cnt = _this select 0;
	for "_x" from 1 to _cnt do {
			_pos = [(_vmkrs call ws_fnc_selectRandom),10] call ws_fnc_getPos;
			_grp = [_pos,_side,(_vclasses call ws_fnc_selectRandom),["improved","lockall"]] call ws_fnc_createVehicle; _grp = _grp select 1;
			{_x addWeapon "NVGoggles"} forEach (units _grp);
			[_grp,"mkrTown",["sad",100,100]] call ws_fnc_addWaypoint;
	};
};

// First four waves to probe the defenses
// 360 - 480 seconds
for "_x" from 1 to 4 do {
	[3 * _difmod,3] call _spawnloop;
	sleep 60 + round random 60;
};

ws_eicnt = {side _x == east} count allUnits;
while {ws_eicnt > 9} do {
	ws_eicnt = {side _x == east} count allUnits;
	sleep 5;
};

// Followed by small combined arms waves
for "_x" from 1 to 6 do {
	[2 * _difmod,3] call _spawnloop;
	[2 + round (_difmod/2),5] call _TKspawnloop;
	[3 + round(_difmod/3)] call _vspawnloop;
	sleep 120 + round random 60;
};

ws_eicnt = {side _x == east} count allUnits;
while {ws_eicnt > 12} do {
	ws_eicnt = {side _x == east} count allUnits;
	sleep 5;
};

// Followed by big combined arms waves
for "_x" from 1 to 6 do {
	[5 + round (_difmod/2),5] call _TKspawnloop;
	[4 + round(_difmod/2)] call _vspawnloop;

	for "_i" from 1 to 2 do {
		_pos = [(_vmkrs call ws_fnc_selectRandom),10] call ws_fnc_getPos;
		_grp = [_pos,_side,2,[["TK_Soldier_AA_EP1"],["TK_Soldier_EP1"]]] call ws_fnc_createGroup;
		[_grp select 0,"mkrTown",["sad",100,100]] call ws_fnc_addWaypoint;
	};
	sleep 120 + round random 60;
};

ws_eicnt = {side _x == east} count allUnits;
while {ws_eicnt > 12} do {
	ws_eicnt = {side _x == east} count allUnits;
	sleep 5;
};

// Grand finale
ws_music2 = true; publicVariable "ws_music2";
[2 * _difmod,5] call _TKspawnloop;
[6 + _difmod] call _vspawnloop;
sleep 120;
catch_trigger = "ws_reinf"; publicVariable "catch_trigger";
sleep 60;
[3 * _difmod,5] call _TKspawnloop;
[8 + _difmod] call _vspawnloop;