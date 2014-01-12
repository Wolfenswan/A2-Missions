// Group Teleport (based on F2 - Mission Maker Teleport)
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_textSelect","_textDone"];

// ====================================================================================

// SET KEY VARIABLES

f_telePositionSelected = false;
_textSelect = localize "STR_f_mapClickTeleportSelect";
_textDone = localize "STR_f_mapClickTeleportDone";

// ====================================================================================

// TELEPORT FUNCTIONALITY
// When the script is activated the player is asked to click on the map at the desired
// target location for the teleport. On clicking, the player is teleported to that 
// location and given a message to confirm that the teleport has taken place.

titletext [_textSelect,"plain", 0.4];
openMap true;
onMapSingleClick "{_x setpos [(_pos select 0) + random 5,(_pos select 1) + random 5,0];} foreach units group player; f_telePositionSelected = true;openMap false;";
waitUntil {f_telePositionSelected};
player removeAction JournomapClickGroupTeleportAction;
titletext [_textDone,"plain", 0.3];

onMapSingleClick "";

sleep 5;
JournomapClickGroupTeleportAction = player addaction ["Teleport","custom\JournoMapClickGroupTeleport.sqf","", 6, false,false,"","_target == player"];