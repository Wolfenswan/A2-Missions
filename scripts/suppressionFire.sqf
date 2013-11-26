//_supper = [this,[d1,d2,d3]] execVM "scripts\suppressionFire.sqf"
if !(isserver) exitWith{};
private ["_mg","_targets","_gunner","_target","_mags","_area","_xgunner"];

ws_fire = true;
_mg = _this select 0;
_targets = [target_1,target_2];
_gunner = gunner _mg;
_gunner setskill 0;
_mg disableAI "move";
_i = 0;

sleep 2 + (random 5);


	while {ws_fire}do {
		{
		_target = _targets call BIS_fnc_selectRandom;
		_x doWatch _target;
		_x doTarget _target;
		sleep 5 + random 5;

			for "_i" from 1 to (20 + random 20) do {
		 		_x fireAtTarget [_target];
		 		sleep 0.1;
		  };
	 	(vehicle _x) setVehicleAmmo 1;
	 	} forEach units group _mg;
	};
