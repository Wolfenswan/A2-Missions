// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: GUERILLA NAPA

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

waitUntil {scriptDone f_processParamsArray};

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Wolfenswan for ARPS and FOLK.<br/>
Uses BM's addaction and locality scripts, Shuko's random position script and excerpts from Jolly Green.
<br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)
"]];

_notes = player createDiaryRecord ["diary", ["Missionmaker Notes","
<br/>
- If using the grounded team the Russian's should not cheese the mission by estimating the location way off to lead the Guerillas in the wrong direction.<br/>
- It's host decision when to declare it a victory for the Resistance.
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.


// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

if !(isNil "GrpRU_Grnd") then {
_grnd = player createDiaryRecord ["diary", ["Grounded Team",format ["
<br/>
The MVPs in the MI-8 have survived the crash and are trying to make contact.<br/>
They are underequipped and lack maps and gps. However, the pilot can sent their estimated location every 30 seconds by using his 'Estimate location' action.<br/>
However, the guerillas will be able to intercept this broadcast and receive a rough indication of where the pilot placed his marker, pinpointing his estimation after %1 tries.<br/>
As the MVPs are unable to retrieve the data themselves, Russian forces will still have to establish a perimeter around the wreckage.
",f_param_maxclicks]]];};

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
A Mi-8 has crashed somewhere in central Chernarus, carrying intelligence the Russians are trying to retrieve.<br/>
We can't retrieve the data ourselves. Locate the crash site and lay an ambush, wait for the Russians to collect the data, then strike.<br/><br/>
Depending on chosen parameters, the location of the wreck will either be pinpointed or hinted at after the mission has started. Additionally, we might be able to intercept the grounded team's broadcasts.<br/><br/>
DATA TRANSFER AND RETRIEVAL<br/>
Only Russian units can transfer the data and pick up the laptop.<br/>
NAPA will not be notified of the transfer status.<br/>
A black marker on the map will indicate the location of the unit carrying the data.<br/>
A green marker on the map will indicate the location of the data if the carrier is dead.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord  ["diary",  ["Situation", "
<br/>
A Mi-8 carrying MVP with valuable intel crashed somewhere in central Chernarus. <br/>
We want this data for ourselves. Let the Russians reach the crash site to transfer the data, but kill them once they got it and take it from them.
<br/><br/>
ENEMY FORCES
<br/>
Russian regulars in Mi-8s. Possibly Spetsnatz or even a hind. The helicopter crew might have survived the crash.
<br/><br/>
GROUP TELEPORT (if activated)
<br/>
All Guerilla SLs/FTLs spawn with an option to teleport their entire group to a new location. Unless otherwise agreed upon they have to teleport outside the ellipse indicating the Wreck's location.
"]];

// ====================================================================================