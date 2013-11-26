if !(isServer) exitWith {};
waitUntil {scriptDone ws_fnc_init};

private ["_center","_radius","_grps","_vehs","_typearray","_pos","_tmp","_group","_class"];

_spawn = (_this select 0) select 0;
_target = (_this select 0) select 1;
_radius = _this select 1;
_grps = round (_this select 2); if (_grps <= 0) then {_grps = 1};
_vehs = _this select 3;
_type = _this select 4;

for "_x" from 1 to _grps do {
_spos = [_spawn,50] call ws_fnc_getPos;
_tmp = [_spos,east,2+ (round (random 3)),[["Ins_Soldier_2","Ins_Soldier_1"],["Ins_Soldier_1","Ins_Worker2","Ins_Soldier_1","Ins_Soldier_2","Ins_Soldier_GL"]]] call ws_fnc_createGroup;
_group = _tmp select 0;
sleep 0.1;

_pos = [_target,_radius] call ws_fnc_getPos;
[_group,_pos,["patrol",100]] call ws_fnc_addWaypoint;
{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _group;

sleep 0.5;
};

_typearray = ["BRDM2_INS","Offroad_DSHKM_INS","UAZ_MG_INS","UAZ_AGS30_INS","UAZ_SPG9_Ins"];

for "_x" from 1 to _vehs do {
_pos = [_target,_radius,0,360,true] call ws_fnc_getPos;
waitUntil {!(isNil "_pos")};
_class = _typearray call ws_fnc_selectRandom;
//if (random 1 > 0.95) then {_class = "T34"};

	_tmp = [_pos,east,_class,["improved","clearcargo","lockturret"],[2 + (round (random 2)),["Ins_Soldier_1","Ins_Soldier_2","Ins_Worker2","Ins_Soldier_GL"],false]] call ws_fnc_createVehicle;
	_group = _tmp select 1;
	[_group,_pos,["hold",0],["aware","yellow","normal"]] call ws_fnc_addWaypoint;

{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _group;
};