//sleep 0.1;
//waitUntil {scriptDone f_processParamsArray};
waitUntil {!(isNil "Wreck_loc")};
if !(isServer) exitWith {};

private ["_pos","_poswoffset","_mkr","_spos","_jitter"];

_pos = Wreck_loc;

switch (paramsArray select 8) do {
case 0: {
_mkr = createMarker ["Wreck", _pos];
_mkr setMarkerShape "ICON";
_mkr setMarkerType "Destroy";
}; 
case 1: {
	_jitter = 500;
	_poswoffset = [((_pos select 0)+(ceil random _jitter) - (ceil random _jitter)) ,((_pos select 1)+(ceil random _jitter) - (ceil random _jitter)),0];
	_mkr = createMarker ["Wreck", _poswoffset ];
	_mkr setMarkerShape "ELLIPSE";
	_mkr setMarkerSize [1500,1500];
	_mkr setMarkerColor "ColorRed";
	_mkr setMarkerBrush "BORDER";};
case 2: {
	_jitter = 1000;
	_poswoffset = [((_pos select 0)+(ceil random _jitter) - (ceil random _jitter)) ,((_pos select 1)+(ceil random _jitter) - (ceil random _jitter)),0];
	_mkr = createMarker ["Wreck", _poswoffset ];
	_mkr setMarkerShape "ELLIPSE";
	_mkr setMarkerSize [2000,2000];
	_mkr setMarkerColor "ColorRed";
	_mkr setMarkerBrush "BORDER";};
case 3: {};
};

ws_initdone = true;
publicvariable "ws_initdone";