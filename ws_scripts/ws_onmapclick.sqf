//ws_onmapclick.sqf
waitUntil {scriptDone f_processParamsArray};

private ["_pos","_random"];

ws_mapclicked = false;
publicvariable "ws_mapclicked";

sleep 0.5;

_pos  = ws_clickedpos;

    hint "The pilot has estimated his location";
	_mkr = createMarkerLocal [format["%1", _pos], _pos];
	_mkr setMarkerShapeLocal "ICON";
	_mkr setMarkerTypeLocal "Dot";
	_mkr setMarkerTextLocal format ["%1h:%2m",date select 3, date select 4];