// By Wolfenswan - Based on:
// Group Teleport (based on F2 - Mission Maker Teleport)
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_textSelect","_textDone"];

// ====================================================================================

// SET KEY VARIABLES

f_telePositionSelected = false;
_textSelect = "Click on the map to parachute in";
_textDone = "HALO drop successful";

// ====================================================================================

// TELEPORT FUNCTIONALITY
// When the script is activated the player is asked to click on the map at the desired
// target location for the teleport. On clicking, the player is teleported to that 
// location and given a message to confirm that the teleport has taken place.

openMap true;
titletext [_textSelect,"plain", 0.4];
onMapSingleClick "
openMap false;
player setpos [(_pos select 0) + random 5,(_pos select 1) + random 5,1500];
f_telePositionSelected = true;
player flyinheight 1500;
[player, 1500] exec ""ca\air2\halo\data\Scripts\HALO_init.sqs"";
openMap false;
";

waitUntil {f_telePositionSelected};
titletext [_textDone,"plain", 0.4];

player removeAction SpetsnatzClickGroupHaloAction;

onMapSingleClick "";

while {((getposATL player)select 2) > 1} do
{
hintsilent format ["Altimeter: %1", round (getPosATL player select 2)];
};
if (((getposATL player)select 2) < 1) then
{
hintsilent "";
};