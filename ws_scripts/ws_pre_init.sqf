if !(isServer) exitWith {};

//Load the helis & vehicles
{{_x moveInCargo A2INS_Tr1} forEach units _x} forEach [GrpA2Ins_A1,GrpA2Ins_A2,GrpA2Ins_A3]; 
{{_x moveInCargo A2INS_Tr2} forEach units _x} forEach [GrpA2Ins_B1,GrpA2Ins_B2,GrpA2Ins_B3]; 
{{_x moveInCargo A2INS_Tr3} forEach units _x} forEach [GrpA2Ins_C1,GrpA2Ins_C2,GrpA2Ins_C3];

//Processing functions we need later
call compile preprocessfile "ws_fnc\ws_fnc_init.sqf";

//Select a convoy location and place the convoy
_markers  = ["conv1","conv2","conv3","conv4","conv5","conv6","conv7","conv8","conv9","conv10","conv11","conv12","conv13","conv14","conv15","conv16","conv17","conv18","conv19","conv20","conv21","conv22","conv23","conv24"];
ws_convoy =  [(_markers call ws_fnc_selectRandom),50,0,true] call ws_fnc_GetPos;; publicvariable "ws_convoy";
ws_placeconvoy = [ws_convoy] execVM "ws_scripts\ws_convoy.sqf";

_mkr = createMarker ["ins_conv",ws_convoy];
_mkr setMarkerType "Destroy";
_mkr setMarkerColor "ColorRed";


//Place players
{{_pos = [ws_convoy,50,5,false,false] call ws_fnc_getPos;
_x setPos _pos} forEach units _x} forEach [GrpUSMC_DC,GrpUSMC_ASL,GrpUSMC_A1,GrpUSMC_A2,GrpUSMC_A3,GrpUSMC_BSL,GrpUSMC_B1,GrpUSMC_B2,GrpUSMC_B3,GrpUSMC_CSL,GrpUSMC_C1,GrpUSMC_C2,GrpUSMC_C3];

{
_pos = [ws_convoy,2000,1500,true,false] call ws_fnc_getPos;
_x setPos _pos;
_x setDir (getDir((_pos nearroads 5) select 0));
} forEach [A2Ins_Car1,A2Ins_Car2,A2Ins_Tr1,A2Ins_Tr2,A2Ins_Tr3];

{
_pos = [ws_convoy,2500,2000,true,false] call ws_fnc_getPos;
_x setPos _pos;
_x setDir (getDir((_pos nearroads 5) select 0));
} forEach [A2INS_IFV1,A2INS_IFV2,A2INS_IFV3];

ws_pre_init_done = true; publicvariable "ws_pre_init_done";

