//Work in Progress

if !(isServer) exitWith {};

//DONT TOUCH THESE
if (isNil "ws_initdone") then {ws_initdone = false;publicvariable "ws_initdone";};
if (isNil "ws_markersdone") then {ws_markersdone = false;publicvariable "ws_markersdone";};
if (isNil "ws_mapclicked") then {ws_mapclicked = false;publicvariable "ws_mapclicked";};

//Modify only these variables
ws_groundedGroup = GrpRU_Grnd;
ws_groundedPilot = UnitRU_P;

//Unit Arrays
inf_array= [
_inf_array1= [""];
_inf_array2= [""];
_inf_array3= [""];
_inf_array4= [""];
_inf_array5= [""];
_inf_array6= [""];
_inf_array7= [""];
_inf_array8= [""];
];

veh_array= [
_veh_array1= [""];
];