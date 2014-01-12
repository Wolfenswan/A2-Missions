//ws_mapclickaction.sqf
//
//init.sqf or unit init: 
//pilot addAction ["<t color='#dddd00'>"+"Broadcast location"+"</t>","ws_scripts\ws_mapclickaction.sqf",nil,1,false,true,"","driver _target == _this"];
//
//Trigger in mission:
//Activation - None, repeadetly
//Countdown all set to 1
//Condition: ws_mapclicked
//On Act: nul = [] execVM "ws_onmapclick.sqf";

private ["_unit","_action"];

_unit = _this select 0;
_action = _this select 2;

_unit removeAction _action;

titletext ["10 seconds to place marker","plain", 0.3];

_unit addWeapon "ItemMap";
openMap true;
player enableSimulation false;

onMapSingleClick "
ws_mapclicked = true;
ws_clickedpos = _pos;
publicvariable ""ws_mapclicked"";
publicvariable ""ws_clickedpos"";
onMapSingleClick """";
openMap false;
UnitRU_Grnd_P removeWeapon ""ItemMap"";
player enableSimulation true;
";

sleep 10;
player enableSimulation true;
UnitRU_Grnd_P removeWeapon "ItemMap";

sleep 20;

if (f_param_broadcastaction == 1) then {
ws_broadcastlocation = UnitRU_Grnd_P addAction ["<t color='#dddd00'>"+"Estimate location"+"</t>","ws_scripts\ws_mapclickaction.sqf",nil,1,false,true,"","(driver _target == _this)&&((Wreck distance _this)<250)"];
} else {
ws_broadcastlocation = UnitRU_Grnd_P addAction ["<t color='#dddd00'>"+"Estimate location"+"</t>","ws_scripts\ws_mapclickaction.sqf",nil,1,false,true,"","(driver _target == _this)"];};