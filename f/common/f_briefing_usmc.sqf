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
Made by Wolfenswan for Folk ARPS. Uses Black Mamba's mortar script.
<br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)<br/>
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
CONVOY<br/>
3 x HMMW M240<br/>
2 x HMMW, 1 X HMMW Ambulance<br/>
2 x MTVR<br/><br/>
TRANSPORT<br/>
3 x MH-60S - loaded with spare ammo and satchels<br/><br/>
CAS<br/>
1 x Cobra on standby<br/>
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
1. The convoy is <marker name='ins_conv'>here</marker> and the helicopters launch from <marker name='mkrCarrier'>here.</marker><br/>
2. The convoy needs to hold out against CHDKZ attackers until the helicopters can touch down and the satchel charges picked up.<br/>
3. Destroy the <marker name='a1'>four crates</marker> next to the ammo truck and extract.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
One of <marker name='ins_conv'>our convoys</marker> has been ambushed by CHDKZ. We are sending transport helicopters from the <marker name='mkrCarrier'>HMS Gallows</marker> to extract all survivors of the escort force. The convoy was carrying several crates that were totally full of humanitarian aid stuff. We can't allow the Insurgents to get their grubby paws on that stuff, thus the helicopters will bring in the satchel charges we need to blow up the crates full of rice and teddy bears.
<br/><br/>
ENEMY FORCES
<br/>
Motorized CHDKZ insurgents, possibly supported by a APC.
<br/><br/>
FRIENDLY FORCES
<br/>
None<br/>
"]];

// ====================================================================================