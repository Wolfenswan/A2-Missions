[LHD1] execVM "ws_scripts\ws_carrier.sqf";
//ws_debug = false; publicVariable "ws_debug";

if (isServer) then {

	sleep 90;
	[] execVM "ws_Scripts\ws_wave.sqf";
	sleep 10;
	ws_music = true; publicVariable "ws_music";
	catch_trigger = "ws_ambient"; publicVariable "ws_ambient";

};