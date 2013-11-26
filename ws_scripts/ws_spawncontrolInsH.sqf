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
[_group,_pos,["garrison",250]] call ws_fnc_addWaypoint;
{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _group;

sleep 0.5;
};