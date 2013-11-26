// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: USMC

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
Made by Wolfenswan for FOLK ARPS.<br/>
Uses: GuardPost (Tophe), Dynamic Weather (Enigma)
<br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
INSERTION:<br/><br/>
<marker name='mkrA'>Alpha:</marker><br/>
CO, A1, ASL - Boat 1<br/>
MMG1, A2, A3 - Boat 2<br/><br/>
<marker name='mkrB'>Bravo:</marker><br/>
DC, B1, BSL - Boat 3<br/>
MMG2, B2, B3 - Boat 4<br/><br/>
<marker name='mkrC'>Charlie:</marker><br/>
C1, CSL - Boat 3<br/>
MMG3, C2, C3 - Boat 4<br/><br/>
Up to 2 x AAVs, carrying 1 x ENG team each<br/>
Up to 1 x AH-1Z<br/><br/>
NOTE:<br/>
Driver slots will unlock shortly before the coast, in case the AI captains fuck up.<br/>
CDF milita is guarding ammo boxes at the insertion points with spare carbines, in case anyone decides to go swimming.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

/*
_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Destroy enemy combatans in Chernogorsk, avoid blue-on-blue incidents with Chernarussian forces.
<br/><br/>
MOVEMENT PLAN
<br/>
The LAVs provide superior fire power but are
<br/><br/>
FIRE SUPPORT PLAN
<br/>
*** Insert fire support instructions here. ***
<br/><br/>
SPECIAL TASKS
<br/>
*** Insert instructions for specific units here. ***
"]];*/

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. We are inserted by boat on the <marker name='mkrA'>respective markers</marker>.<br/>
2. Remove insurgent presence in the city area. Intel suggest that they are centered around the <marker name='mkrTarget_1'>factory area</marker> and at the <marker name='mkrTarget'>construction site</marker>.<br/>
3. Destroy any opponents at the strategic targets at the outskirts of town by retaking the <marker name = 'mkrTarget_2'>communication tower</marker> and the <marker name = 'mkrTarget_3'>relay station</marker>.
<br/><br/>
NOTE<br/>
Avoid friendly fire incidents between USMC and Chernarussian forces located at the town hall and our landing areas.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Russia's peace-keeping operation in Chernarus is proceeding far swifter than anticipated and has pushed back the Chernarussian resistance into isolated contigents.<br/>
Activity of pro-russian insurgents has risen in all major urban areas, further igniting an already volatile situation. While the Russians are preparing for a final push to the southern cost, the CHDKZ insurgents have already begun clashing with the CDF in and around the Capitol.<br/>
While the US Army is tasked with evacuating civilians and important personnel, USMC platoons are being deployed along the southern cost.<br/>Our task is to secure a foothold in Chernogorsk and to put an end CHDKZ activity. As this operation collides with Russian geopolitical interest
Washington and the Kremlin have been talking back and forth for the last couple of days with little result. As of now it is still unsure whether we will be able to avoid open conflict or not.
<br/><br/>
ENEMY FORCES
<br/>
Unknown number of CHDKZ insurgents, lightly armed.<br/>
They might be using mortars to shell the southern part of town, probably placed on the <marker name = 'mkrMtrs'>eastern hill</marker>, watch for the red flares signaling an imminent barrage.<br/>
They are concentrated around the <marker name='mkrTarget_1'>factory area</marker> and the <marker name='mkrTarget'>construction site</marker>, with only a few fire teams in the southern city.
<br/>
It is unclear whether the Russian vanguard will approach the city with hostile intentions or not.
<br/><br/>
FRIENDLY FORCES
<br/>
CDF Militia and Regular at our <marker name='mkrLanding'>landing zones</marker> and <marker name='mkrCDF_2'>the town hall</marker> and are holding the <marker name='mkrCDF_1'>main roads</marker> towards Chernogorsk.<br/>
"]];

// ====================================================================================