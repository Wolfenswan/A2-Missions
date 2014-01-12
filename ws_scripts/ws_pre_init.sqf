//player globalchat "DEBUG: ws_pre_init is run first";

//Invisible markers
{_x setMarkerAlpha 0;} forEach ["mArea","mArea_2"];

//Precompiling stuff we need later
call compile preprocessfile "SHK_pos\shk_pos_init.sqf";
call compile preprocessfile "scripts\BM_XEH.sqf";

//Serverside
if (isServer) then {
ws_placewreckage = [] execVM "ws_scripts\ws_placewreckage2.sqf";
ws_wreckmarkers = [] execVM "ws_scripts\ws_wreckmarkers.sqf";
};