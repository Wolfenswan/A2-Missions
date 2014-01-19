//Processing functions we need later
call compile preprocessFile "ws_fnc\ws_fnc_init.sqf";

ws_fnc_mines = compile preprocessFileLineNumbers "ws_scripts\ws_mine.sqf";

if (isServer) then {
// Create forts
	{[1,_x] call compile preprocessFileLineNumbers "ws_scripts\ws_fort.sqf";} forEach [fort,fort_1,fort_2,fort_3,fort_4,fort_5,fort_6];
	[2,s] call compile preprocessFileLineNumbers "ws_scripts\ws_fort.sqf";

// Fill crates
{
clearWeaponCargoGlobal _x;
		clearMagazineCargoGlobal _x;
		_x addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 80];
		_x addMagazineCargoGlobal ["100Rnd_556x45_M249", 28];
		_x addMagazineCargoGlobal ["M136", 6];
		_x addMagazineCargoGlobal ["HandGrenade_West", 12];
		_x addMagazineCargoGlobal ["SmokeShell", 12];
		_x addMagazineCargoGlobal ["FlareYellow_M203", 24];
		_x addMagazineCargoGlobal ["IR_Strobe_Marker",20];
} forEach [a1,a2,a3];

// Setup vehicles
USMC_AH1 disableTIEquipment true;
{USMC_AH1 removeWeapon _x} forEach  ["SidewinderLaucher_AH1Z","HellfireLauncher"];
{USMC_AH1 removeMagazines _x} forEach  ["8Rnd_Hellfire","2Rnd_Sidewinder_AH1Z"];
{USMC_A10 removeWeapon _x} forEach ["MaverickLauncher","SidewinderLaucher_AH1Z"];
{USMC_A10 removeMagazines _x} forEach  ["2Rnd_Maverick_A10", "2Rnd_Sidewinder_AH1Z"];
{USMC_A10_1 removeWeapon _x} forEach ["MaverickLauncher","SidewinderLaucher_AH1Z"];
{USMC_A10_1 removeMagazines _x} forEach  ["2Rnd_Maverick_A10", "2Rnd_Sidewinder_AH1Z"];

//Variables
if (isNil "ws_initdone") then {ws_initdone = false;publicvariable "ws_initdone";};
};