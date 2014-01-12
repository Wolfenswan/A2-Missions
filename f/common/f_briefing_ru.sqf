// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: TAKISTANI MILITIA

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
Made with F2 (http://www.ferstaberinde.com/f2/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
ARMORED<br/>
1 x T-90<br/>
1 x BMP-3<br/><br/>
AIR<br/>
1 x Mi-8MTV-3.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Clear a path towards Cherno.
<br/><br/>
MOVEMENT PLAN
<br/>
Up to the commander but stick to the road and the T90.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
The T-90 is essential for our success. The IFV is too fragile to take a beating.<br/>
A Mi8-MTV3 is on standby and can provide CAS with it's rockets and various PK turrets.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
We are deployed <marker name='mkrStart'>Rogovo</marker>.<br/>
Our task is to clear the road leading  towards <marker name='mkrEnd'>Chernogorsk</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Russian forces have been pushing back the CDF all over Chernarus. The cities of Chernogorsk and Elektrozavodsk are their last footholds. Our target is to clear the southbound road from <marker name='mkrStart'>Rogovo</marker>.
<br/><br/>
ENEMY FORCES
<br/>
Up to two platoons of CDF infantry, supported by light vehicles, light armored vehicles and static emplacements.<br/>
This <marker name='mkrZUs'>area</marker> has been dubbed 'ZU-country' by our pilots. Beware.<br/>
Expect mines on the road.
<br/><br/>
FRIENDLY FORCES
<br/>
None.
"]];

// ====================================================================================