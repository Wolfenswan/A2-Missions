//using the artillery module to have AI artillery firing at a marker location

if !(isServer) exitWith {};
if (isNil "ws_mortars_dead") then {ws_mortars_dead = false;};
if (ws_mortars_dead) exitWith{};
private ["_hetemplate","_minsleep","_arty","_targetpos","_ransleep"];

_hetemplate = ["IMMEDIATE", "HE", 0,3];
_minsleep = 15;
_ransleep = 15;

_arty = _this select 0;
_barrages = _this select 2;

//waitUntil {_arty getVariable "BIS_ARTY_LOADED"};

for "_x" from 1 to _barrages do {
	_targetpos = [(_this select 1),100] call ws_fnc_getpos;
	[_arty, _targetpos, _hetemplate] call BIS_ARTY_F_ExecuteTemplateMission;
	waitUntil {_arty getVariable "ARTY_COMPLETE"};
	sleep _minsleep + round random _ransleep;
 };