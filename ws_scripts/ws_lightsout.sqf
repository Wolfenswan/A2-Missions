_types = ["Land_PowLines_WoodL", "Land_PowLines_ConcL", "Land_lampa_ind_zebr", "Land_lampa_sidl_3", "Land_lampa_vysoka", "Land_lampa_ind", "Land_lampa_ind_b", "Land_lampa_sidl"];

_switch = _this select 0;

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
	{
		_lamps = getmarkerpos "area1" nearObjects [_types select _i, 2000];
		sleep 0.5;
		{_x switchLight _switch} forEach _lamps;
	};