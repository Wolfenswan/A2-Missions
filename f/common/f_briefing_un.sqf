// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: BRITISH ARMED FORCES

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
Made by Wolfenswan for Folk ARPS.
<br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)<br/>
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
The transport was being protected by 2xHMMWV MK240 and 1xHMMWV Mk19. Their guns might still be operational.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

/*
_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Locate the ambushed convoy and deploy troops to eliminate any insurgent activity.
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
1. We start <marker name='ins_conv'>here.</marker><br/>
2. We need to dig in and repell any forces the CHDZK might send at us.<br/>
3. If we're lucky the British will react and send reinforcements.<br/>
4. As soon as we reestablish contact with the British forces we need to decide whether we are going to hold or evac.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Our <marker name='ins_conv'>convoy</marker> has been ambushed by CHDKZ. We were able to repell the attackers but the convoy has been immobilized. THe only fast response unit in the area are the British forces on the <marker name='mkrCarrier'>HMS Sunder</marker>. We need to hold the position until they have managed to locate our position and established contact.
<br/><br/>
ENEMY FORCES
<br/>
Motorized CHDKZ insurgents, possibly supported by a APC.
<br/><br/>
FRIENDLY FORCES
<br/>
A heliborn British platoon.
<br/><br/>
NOTE<br/>
For gameplay's sake it is suggested that BAF/UN start using a common CC once the British have troops at the convoy.
<br/>
"]];

// ====================================================================================