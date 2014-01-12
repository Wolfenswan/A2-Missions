// F2 - Folk Group Markers
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

#include "f_waitForJIP.sqf"

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

if (group player == GrpRU_Grnd) exitWith {};

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction

_unitfaction = (faction player);

// If the unitfaction is different from the group leader's faction, the latters faction is used
if (_unitfaction != (faction (leader group player))) then {_unitfaction = (faction (leader group player))};

// As PMC units are used as exchange medics and engineers, they are defaulted to the UN markers.
// Change "bis_un" to "bis_tk_gue" when using the TK Local Platoon
if (_unitfaction == "pmc_baf") then {_unitfaction = "bis_un";};

// ====================================================================================

// PRECOMPILE
// Prevents the next script to be read by the engine everytime it's used:

fnc_folk_localGroupMarker = compile preprocessFile "f\common\folk_localGroupMarker.sqf";
fnc_folk_localSpecialistMarker = compile preprocessFile "f\common\folk_localSpecialistMarker.sqf";

// ====================================================================================
switch (_unitfaction) do
{

// ====================================================================================

// MARKERS: US
// Markers seen by players in US slots.

	case "BIS_US":
	{
		["GrpUS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// USMC
// Markers seen by players in USMC slots.
	
	case "usmc":
	{
		["GrpUSMC_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMC_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMC_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUSMC_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMC_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMC_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUSMC_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMC_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================
	
// CDF
// Markers seen by players in CDF slots.
	
	case "cdf":
	{
		["GrpUSMC_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpUSMC_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpUSMC_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUSMC_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUSMC_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUSMC_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUSMC_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUSMC_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitUSMC_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUSMC_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUSMC_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitUSMC_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUSMC_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};

// ====================================================================================

// MARKERS: TAKISTANI ARMY
// Markers seen by players in TAKISTANI ARMY slots.
	
	case "BIS_TK":
	{
		["GrpTK_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpTK_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpTK_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpTK_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpTK_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpTK_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpTK_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpTK_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpTK_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpTK_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpTK_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpTK_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpTK_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpTK_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpTK_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpTK_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";			
		["UnitTK_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitTK_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitTK_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitTK_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitTK_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
	
// MARKERS: RUSSIA
// Markers seen by players in RUSSIA slots.
	
	case "RU":
	{
		["GrpRU_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpRU_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpRU_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_SF1",  4, "SF1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_SF2",  4, "SF2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_SF3",  4, "SF3", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_ART1",  5, "ART1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpRU_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpRU_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_TH3",  8, "TH3", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";			
		["GrpRU_AH2",  8, "AH2", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["UnitRU_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitRU_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitRU_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitRU_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitRU_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	if (f_param_uav == 1) then {["UnitRU_UAV", 1, "UAV", "ColorBlue"] execVM "f\common\folk_localSpecialistMarker.sqf";};
	};

// ====================================================================================

// MARKERS: TAKISTANI MILITIA
// Markers seen by players in TAKISTANI MILITIA slots.

	case "BIS_TK_INS":
	{
		["GrpINS_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpINS_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpINS_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpINS_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpINS_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitINS_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitINS_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";				
		["UnitINS_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitINS_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitINS_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
	
// MARKERS: INSURGENT
// Markers seen by players in INSURGENT slots.

	case "INS":
	{
		["GrpINS_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpINS_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpINS_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpINS_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpINS_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpINS_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpINS_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitINS_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitINS_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";				
		["UnitINS_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitINS_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitINS_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
       
// ====================================================================================

// MARKERS: TAKISTANI LOCALS (INDEPENDENT)
// Markers seen by players in TAKISTANI LOCALS (INDEPENDENT) slots.

	case "BIS_TK_GUE":
	{
		["GrpGUE_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpGUE_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpGUE_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpGUE_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpGUE_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitGUE_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitGUE_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitGUE_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitGUE_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitGUE_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
	
// MARKERS: GUERILLA
// Markers seen by players in GUERILLA slots.

	case "GUE":
	{
		["GrpGUE_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpGUE_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpGUE_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpGUE_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpGUE_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitGUE_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitGUE_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitGUE_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitGUE_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitGUE_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};

// ====================================================================================

// MARKERS: UN
// Markers seen by players in UN slots.

	case "BIS_UN":
	{
		["GrpUN_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpUN_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpUN_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpUN_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUN_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUN_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUN_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUN_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUN_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUN_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUN_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUN_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUN_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpUN_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUN_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpUN_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitUN_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUN_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUN_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitUN_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitUN_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};

// ====================================================================================

// MARKERS: BRITISH ARMED FORCES
// Markers seen by players in BRITISH ARMED FORCES slots.

	case "BIS_BAF":
	{
		["GrpBAF_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";		
		["GrpBAF_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpBAF_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpBAF_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpBAF_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitBAF_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitBAF_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitBAF_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
	
// ====================================================================================

// MARKERS: CZECH REPUBPLIC
// Markers seen by players in CZECH REPUBPLIC slots.

	case "BIS_CZ":
	{

	};

// ====================================================================================

// MARKERS: GERMAN
// Markers seen by players in GERMAN slots.

	case "BIS_GER":
	{

	};

// ====================================================================================

// MARKERS: CIVILIAN (TAKISTANI)
// Markers seen by players in CIVILIAN (TAKISTANI) slots.

	case "BIS_TK_CIV":
	{

	};

// ====================================================================================

// MARKERS: CIVILIAN (SPECIAL)
// Markers seen by players in CIVILIAN (SPECIAL) slots.

	case "BIS_CIV_special":
	{
		["GrpRU_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpRU_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpRU_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpRU_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_SF1",  4, "SF1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_SF2",  4, "SF2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_SF3",  4, "SF3", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpRU_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpRU_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_TH3",  8, "TH3", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpRU_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";			
		["UnitRU_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitRU_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitRU_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitRU_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitRU_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		
		["GrpGUE_CO", 0, "CO", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_DC", 0, "DC", "ColorYellow"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_ASL", 0, "ASL", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_A1", 1, "A1", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_A2", 1, "A2", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpGUE_A3", 1, "A3", "ColorRed"] execVM "f\common\folk_localGroupMarker.sqf";		
		["GrpGUE_BSL", 0, "BSL", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_B1", 1, "B1", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_B2", 1, "B2", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_B3", 1, "B3", "ColorBlue"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_CSL", 0, "CSL", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_C1", 1, "C1", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_C2", 1, "C2", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_C3", 1, "C3", "ColorGreen"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MMG1", 2, "MMG1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MAT1", 3, "MAT1", "ColorOrange"] execVM "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_ST1",  4, "ST1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_HMG1",  2, "HMG1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_MTR1",  5, "MTR1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_HAT1",  3, "HAT1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_SAM1",  3, "SAM1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_ENG1",  6, "ENG1", "ColorYellow"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_IFV1",  7, "IFV1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_IFV2",  7, "IFV2", "ColorBlue"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpGUE_IFV3",  7, "IFV3", "ColorGreen"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_TNK1",  7, "TNK1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";	
		["GrpGUE_TH1",  8, "TH1", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_TH2",  8, "TH2", "ColorOrange"] execVM  "f\common\folk_localGroupMarker.sqf";
		["GrpGUE_AH1",  8, "AH1", "ColorRed"] execVM  "f\common\folk_localGroupMarker.sqf";
		["UnitGUE_CO_M", 0, "COM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitGUE_DC_M", 0, "DCM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitGUE_ASL_M", 0, "AM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";		
		["UnitGUE_BSL_M", 0, "BM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
		["UnitGUE_CSL_M", 0, "CM", "ColorBlack"] execVM "f\common\folk_localSpecialistMarker.sqf";
	};
       
// ====================================================================================

};

// ====================================================================================

if (true) exitWith {};