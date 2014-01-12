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
TRANSPORT<br/>
3 x Merlin - loaded with spare ammo<br/><br/>
CAS<br/>
1 x Wildcat on standby<br/>
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
1. We start <marker name='mkrCarrier'>here.</marker><br/>
2. The last known convoy location is <marker name='baf_conv'>here</marker>.<br/>
3. We need to locate the convoy, re-establish contact with the UN forces and repell any CHZDK attackers.<br/>
4. Decide whether to prioritize extracting the UN personnel or to eliminate the enemy.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
A UN convoy has been ambushed by CHDKZ. We are the only forces in the area able to muster a fast response team. The last time we were able to establish contact with the convoy it was around <marker name='baf_conv'>here</marker> but it will have moved on by now. We need to locate the convoy, deploy our troops to secure a perimeter and either repell the enemy or extract the UN personnel.
<br/><br/>
ENEMY FORCES
<br/>
Motorized CHDKZ insurgents, possibly supported by a APC.
<br/><br/>
FRIENDLY FORCES
<br/>
An understrength UN platoon that was traveling with the convoy.
<br/><br/>
NOTE
Loosing more than 80% of our forces would be an international disaster and enough cause to abort the mission.<br/>
For gameplay's sake it is suggested that BAF/UN start using a common CC once the British have troops at the convoy.
<br/>
"]];

// ====================================================================================