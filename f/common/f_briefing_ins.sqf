// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: CHDKZ INSURGENTS

// ====================================================================================

// TASKS
// The code below creates tasks. A (commented-out) sample task is included.

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Wolfenswan for Folk ARPS. Uses Black Mamba's mortar script.
<br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Every squad starts mounted up in a transport truck.<br/>
We have up to 2xOffroad DHSKM and 1xBRDM-2.<br/><br/>
MORTAR:<br/>
The mortar requires manual aiming and has a maximal reach of roughly 500m.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

/*
_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
*** Insert very short summary of plan here. ***
<br/><br/>
MOVEMENT PLAN
<br/>
*** Insert movement instructions here. ***
<br/><br/>
FIRE SUPPORT PLAN
<br/>
*** Insert fire support instructions here. ***
<br/><br/>
SPECIAL TASKS
<br/>
*** Insert instructions for specific units here. ***
"]];
*/

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. We start at various locations surrounding the convoy side.<br/>
2. Assess the situation and decide on the best plan to attack.<br/>
3. Wipe out any USMC survivor at the <marker name='ins_conv'>convoy</marker> and secure the crates.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Our comrades were able to ambush an <marker name='ins_conv'>USMC convoy</marker>, delivering weapons and poisened food to the hapless populace of Chernarus. They gave their lives for the cause but we will set out to finish what they begun. We need to kill all surviving imperialists in the area and repell any reinforcments that might come to their aid. The convoy was transporting weapons and other vile goods concealed as 'humanitarian aid'. Those dogs will surely try to cover the tracks and destroy the containers with explosives brought in by helicopters. Make sure that does not happen.
<br/><br/>
ENEMY FORCES
<br/>
An understrength USMC platoon was guarding the convoy. Some of the armed vehicles protecting the convoy might still be operational.<br/>
They are most likely going to send helicopters from their <marker name='mkrCarrier'>aircraft carrier</marker>.
<br/><br/>
FRIENDLY FORCES
<br/>
None.<br/>
"]];

// ====================================================================================