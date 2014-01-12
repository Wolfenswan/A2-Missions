// Group Teleport (based on F2 - Mission Maker Teleport)
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// ====================================================================================

// ADD TELEPORT ACTION TO PLAYER ACTION MENU
// If the player is a group leader we add the teleport action to the player's action menu.

if (side player == civilian) then
{
	JournomapClickGroupTeleportAction = player addaction ["TELEPORT","custom\JournoMapClickGroupTeleport.sqf","", 6, false,false,"","_target == player"];
};

if (group player == GrpRU_SF1) then
{
	SpetsnatzClickGroupHaloAction = player addaction ["HALO","ws_scripts\ws_mapclickDrop.sqf","", 6, false,false,"","_target == player"];
};

if (group player == GrpRU_SF2) then
{
	SpetsnatzClickGroupHaloAction = player addaction ["HALO","ws_scripts\ws_mapclickDrop.sqf","", 6, false,false,"","_target == player"];
};

// ====================================================================================