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
Made by Wolfenswan for Folk ARPS.<br/>
Uses CEP caching.
<br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)<br/>
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Up to 9 squads of infantry plus attachments.<br/><br/>
Vehicles at base:<br/>
3xM113<br/>
1xT-72<br/>
1xT-55<br/><br/>
The Artillery spotters are in control of:<br/>
2 x D-30<br/>
Artillery is controlled by commanding the AI to fire on position either through spacebar (+binocs) or the map screen. One fire order prompts them to shoot 4 shells.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Eliminate the rabble.
<br/><br/>
MOVEMENT PLAN
<br/>
Up to the commander. Stay within the indicated AO.
<br/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. We are inserted <marker name='mkrStart'>here.</marker>.<br/>
2. Moving over the industrial complex of <marker name='mkrNangoS'>Nango</marker>, we need to take the mortar positions <marker name='mortars'>here</marker>.<br/>
3. If forces permit move on to seize the <marker name='mkrMosque'>Mosque</marker>, cementing our dominance in the area.<br/>
4. The villages <marker name='mkrTownS'>here</marker> and <marker name='mkrTownN'>here</marker> are most likely fortified.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The Takistani Civil War has reached a new high in the late 70s.<br/>
A recent nightly offense by the Free Takistani Resistance has pushed them closer to Zargabad than ever before and their mortars are threatening the government controlled heartlands to the South. As our main forces are still several days out you are deployed in a heliborn vanguard to attack and disable the mortars before any FTR reinforcements can arrive.
<br/><br/>
ENEMY FORCES
<br/>
Irregular units of infantry supported by technicals, APCs and possibly a few tanks.<br/>
We also expect static weapons at the strongpoints and a group of mortar batteries in <marker name='mortars'>this area</marker>.<br/>
These mortars will probably open up as we take Nango and the strongpoints so be wary.
<br/><br/>
FRIENDLY FORCES
<br/>
Our <marker name='mkrStart'>base</marker> is critically undermanned and any forces there will focus on defending it.<br/>
A <marker name='mkrTnk'>T-55</marker>, T-72 and three M113s are being prepared and will be waiting at base.<br/>
"]];

// ====================================================================================