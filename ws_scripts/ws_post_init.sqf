[LHD1] execVM "ws_scripts\ws_carrier.sqf";
//ws_debug = false; publicVariable "ws_debug";

if (isServer) then {
	[1,[fort,fort_1,fort_2,fort_3,fort_4,fort_5,fort_6]] execVM "ws_scripts\ws_fort.sqf";

	sleep 90;
	ws_music = true; publicVariable "ws_music";
	[] execVM "ws_Scripts\ws_wave.sqf";
	catch_trigger = "ws_ambient"; publicVariable "ws_ambient";

};