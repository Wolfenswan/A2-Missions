if !(isServer) exitWith {};

_mkrs = ["mkrFlare"] call ws_fnc_collectMarkers;
{[_x] spawn {
	_mkr = _this select 0;
	_pos = getMarkerPos _mkr;
	while {true} do {
		sleep (10 + (round random 15));
		_illum = createVehicle ["F_40mm_red", [_pos select 0,_pos select 1,120], [], 40, "NONE"];
		waitUntil {isNull _illum};
	};
};
} forEach _mkrs;