// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: RUSSIA

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
Made by Wolfenswan for Folk ARPS.<br/>
Uses Shuko's random position script, excerpts from Jolly Green, Enigma's dynamic weather and Black Mamba's locality and addAction helpers.
<br/><br/>
Made with F2 2-7-1 (http://www.ferstaberinde.com/f2/en/)
"]];

/*
_notes = player createDiaryRecord ["diary", ["Missionmaker Notes","
<br/>
- It's entirely random what and when vehicles spawn. If you're unlucky there might be quite a few BRDM2s.<br/>
- Enemies spawn about 1 - 2k away from the Wreck. If you want to avoid the off-chance of having enemies teleported on your head stick closer to the Wreck.
"]];
*/

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
3 x MI-8MTV-3. Including crew they carry up to 20 people.<br/>
2 x MI-24
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

if !(isNil "GrpRU_SF1") then {
_sft= player createDiaryRecord ["diary", ["Spetsnatz","
<br/>
Spetsnatz units have an action menu option to select a location for a HALO drop.<br/>
Keep in mind that Spetsnatz will trigger enemy reinforcements.
"]];};

if !(isNil "GrpRU_Grnd") then {
_grnd = player createDiaryRecord ["diary", ["Grounded Team","
<br/>
The MVPs in the MI-8 have survived the crash and are trying to make contact.<br/>
They are underequipped and lack maps and gps. However, the pilot can sent their estimated location every 30 seconds by using his 'Estimate location' action.<br/>
As the MVPs are unable to retrieve the data, Russian forces will still have to establish a perimeter around the wreckage.
"]];};

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission",format["
<br/>
1. Locate and secure the crash site, transfer the data and get back to <marker name='mkrStart'>base</marker>.<br/><br/>
2. Extract any survivors.<br/><br/>
SECURING THE DATA<br/>
Starting the upload will likely trigger an attack by the NAPA, so be prepared.<br/>
The transfer will take us %1 minutes during which we have to defend the crash site. The laptop the data's being transfered to will appear at the feet of the unit that starts the upload, indicated by a green marker on the map.<br/><br/>
After the transfer is done we have to pick up the laptop and get the data pack to base.
",(f_param_uploadtime/60)]]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord  ["diary",  ["Situation", "
<br/>
A Mi-8 has crashed <marker name='Wreck'>somewhere in central Chernarus</marker>, carrying intelligence we have to retrieve. Our platoon is tasked with securing the crash site and establishing a transfer link. <br/>
If there are any survivors, they might try and establish contact.
<br/><br/>
ENEMY FORCES
<br/>
Chernarussian Guerillas. Expect Infantry and light vehicles.
<br/><br/>
FRIENDLY FORCES
<br/>
Russian Army Regulars<br/>
Optional: Spetsnatz, MVP (grounded team)
"]];

// ====================================================================================