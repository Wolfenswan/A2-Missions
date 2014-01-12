enableEngineArtillery false;
_vehicles = ["2b14_82mm", "2b14_82mm_CDF", "2b14_82mm_CZ_EP1", "2b14_82mm_GUE", "2b14_82mm_INS", "2b14_82mm_TK_EP1", "2b14_82mm_TK_GUE_EP1", "2b14_82mm_TK_INS_EP1", "M1129_MC_EP1", "M252", "M252_US_EP1"];
while {true} do
{
	sleep 0.1;
	WaitUntil {((typeOf (vehicle player)) in _vehicles) and ((gunner vehicle player) == player)};
	sleep 0.1;
	//hint "you're in the vehicle";
	while {((typeOf (vehicle player)) in _vehicles) and ((gunner vehicle player) == player) and (alive player) and (alive vehicle player)} do
	{
		_vectordir = vehicle player weaponDirection currentWeapon vehicle player;
		_dir = (_vectordir select 0) atan2 (_vectordir select 1);
		if (_dir < 0) then {_dir = _dir + 360};
		_angle = asin (_vectordir select 2);
		_v0 = 90;
		switch (currentMuzzle (gunner (vehicle player))) do {
			case "2B14" : {
				switch (currentWeaponMode (gunner (vehicle player))) do {
					case "Single1" : {_v0 = 70;};
					case "Single2" : {_v0 = 140;};
					case "Single3" : {_v0 = 200;};
				};
			};
			case "M252" : {
				switch (currentWeaponMode (gunner (vehicle player))) do {
					case "Single1" : {_v0 = 65.6;};
					case "Single2" : {_v0 = 145.8;};
					case "Single3" : {_v0 = 243;};
				};
			};
			case "M120" : {
				switch (currentWeaponMode (gunner (vehicle player))) do {
					case "Single1" : {_v0 = 106.4;};
					case "Single2" : {_v0 = 199.5;};
					case "Single3" : {_v0 = 266;};
				};
			};
		};
		_dist = (_v0^2) / 9.81 * sin (2 * _angle);
		_time = _dist / (_v0 * (cos _angle));
		
		hintSilent format ["Azimuth: %1°\n Distance: %2m\n Flight Time: %3s ", round _dir, (round (_dist / 10)) * 10, round  _time];
		sleep 0.1;
	};
	hintSilent "";
};
