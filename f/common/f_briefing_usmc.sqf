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
Made by Wolfenswan for Folk ARPS.
<br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
TROOPS<br/>
All SLs/FTLs carry IR strobes to mark friendly or enemy positions for the A10. More are in the crates at Petrovka.<br/><br/>
PETROVKA<br/>
<marker name='mkrHMMW'></marker>.<br/>
<marker name='mkrM2'>5 X M2 - Tripods</marker> on tower-bunkers.<br/>
<marker name='mkrA'>3 x depots in the town, w. ammo crates and medical tents</marker>.<br/>
3 x M240 - HMMW - next to the depots.<br/>
1 x Ammo truck - near the central depot.<br/>
1 x <marker name='mkrTower'>Illuminant tower</marker> w. search light on top.<br/>
<marker name='mkrF'>Earthern ramparts</marker> and <marker name='mkrb'>bunkers</marker>.<br/><br/>
AERIAL<br/>
1 x AH-1Z - no thermals/ATGM<br/>
2 x A10 - no ATGM - currently being refuelled.<br/>
1 x <marker name='mkrLog'>service point</marker> to rearm/refuel.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
FIRE SUPPORT PLAN
<br/>
The JTAC long due still hasn't arrived at the outpost, but we have plenty of IR flares.<br/>
<br/><br/>
SPECIAL TASKS
<br/>
You will be informed as they come up.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. You will be inserted <marker name='mkrTown'>here</marker>.<br/>
2. Prepare your positions along the <marker name='mkrF'>defensive ramparts</marker> and <marker name='mkrB'>strongpoints</marker>.<br/>
3. Hold off all attacks from the <marker name='mkrAttack'>North</marker>.<br/>
4. <marker name='mkrReinf'>Reinforcements</marker> will arrive in about 30 minutes.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
In late november 1980s of the war for Chernarussian independence the socialist CHdKZ militia launched a massive attack all along the Takistani-Chernarrusian border. Supported by the socialist republic of Takistan the militia aims to retake areas of strategical importance, notably the country's biggest <marker name='mkrAirport'>airport</marker>. The USMC and CDF forces in the area were ill prepared for the attack and are currently scrambling units for a counter-attack. Your platoon is tasked to hold the northern town of <marker name='mkrTown_1'>Petrovka</marker> until <marker name='mkrReinf'>armored reinforcements</marker> can arrive.
<br/><br/>
ENEMY FORCES
<br/>
CHdKZ militants - poorly equipped but highly motivated.<br/>
They might be supported by Takistani regulars with heavier equipment.
<br/><br/>
FRIENDLY FORCES
<br/>
USMC troops are protecting the other avenues of approach to the airport while CDF border guards are holding the line in the East.<br/><br/>
NOTES<br/>
The forests are still filled with <marker name='mkrMines'>mines</marker> left from the first revolutionary war and trip flares are set at the edge of the forest.
"]];

// ====================================================================================