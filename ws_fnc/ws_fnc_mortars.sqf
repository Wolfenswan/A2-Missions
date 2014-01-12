// Mortar shelling & illumination function
// v1 (14.04.2013)
// By Wolfenswan [FA]: wolfenswanarps@gmail.com | folkarps.com
//
// Feature: 
// Spawns mortar shells where you want them without the need to use the arty module or physical mortar units
//
// Usage:
// 1. Paste Code in file named ws_mortars.sqf and copy the file in a folder named scripts in your mission folder
// 2. Place the markers indicating the target center and name them "marker1", "marker2" (etc) or similar
// 2. Call: [["marker1","marker2"],3] execVM "scripts\ws_mortars.sqf" during the mission
//
// First parameter is an array with the names of all targets you want to be hit (have to be markers)
// Second parameter is how often the targets are changed
//
// Customization: 
// If you want to stop the shelling before it runs out, change _shelling to a global variable and have it flagged to false when you want the barrage to end.
// See variable section below

if !(isServer)exitWith {};

_this spawn {
private ["_string","_targets","_shell","_frequency","_barrages","_shotsperbarrage","_extrabarrages","_extrashots",
"_dispersionv","_dispersion","_pos","_boom","_jitter","_jittercode","_poswjitter","_height","_timebetweenbarrages","_illumsleep","_fired","_shelling","_strikes"];

//Modifyable variables
_shell = "ARTY_Sh_81_HE";       //type of shell. See http://browser.six-projects.net/cfg_ammo/classlist?utf8=%E2%9C%93&version=58&commit=Change
_illumshell = "F_40mm_red";    //illumination round.
_height = 250;                 //the minium height where the shell will spawn (250 is good)
_dispersionv = [20,60];        //the min-max disperson range of shells ([0,0] = all spot on)
_dispersion = (round (random _dispersionv select 1)) - (round (random _dispersionv select 0));

//Setting default values
_frequency = 600;             //frequency of target changing in seconds
_barrages = 2;                //minium number of barrages fired on one target before change
_extrabarrages = 0;            //Up to this many more barrages COULD be fired
_timebetweenbarrages = 30;       //the time in seconds between each single barrage
_shotsperbarrage = 3;          //minimum shots/shells that come down per barrage
_extrashots = 1;            //Up to this many more shells COULD come down
_illumsleep = 0;             //how long the illumination round lingers in seconds before the real rounds hit. (0 to deactivate)
_illum = false;

//Getting variables from parsed arguments
_count = count _this;
_targets = _this select 0;
if (_count > 1) then {_frequency = _this select 1;};
if (_count > 2) then {_illumsleep = _this select 2;};
if (_count > 3) then {_barray = _this select 3;};
	if (count _barray > 0) then {_barrages = _barray select 0;};
	if (count _barray > 1) then {_shotsperbarrage = _barray select 1;};
	if (count _barray > 2) then {_timebetweenbarrages = _barray select 2;};
	if (count _barray > 3) then {_extrashots = _barray select 3;};
	if (count _barray > 4) then {_extrabarrages = _barray select 4;};


	if (isNil "_shelling") then {_shelling = true;};
	_fired = 0;
	sleep 0.1;
	
	   _pos = (_targets call ws_fnc_selectRandom) call ws_fnc_getPos;
	   if (_illum) then {_illums = createVehicle [_illumshell, _pos, [], _dispersion, "NONE"];_illum setPos [getPos _illum select 0,getPos _illum select 1,_height + round random 60];sleep 5;};
	   for "_i" from 1 to (_barrages + round(random(_extrabarrages))) do {
		  if (_illum) then {_illums = createVehicle [_illumshell, _pos, [], _dispersion, "NONE"];_illums setPos [getPos _illum select 0,getPos _illum select 1,_height + round random 60];sleep _illumsleep;};
		  for "_y" from 1 to (_shotsperbarrage + round(random (_extrashots))) do {
			 _boom = createVehicle [_shell, _pos, [], _dispersion, "NONE"];
			 _boom setPos [getPos _boom select 0,getPos _boom select 1,_height + round random 60];
			 sleep 1;
		  };
		sleep 5;
		_fired = _fired + 1;
	   };
	if ((count _targets == 1)OR(_strikes == _fired)) exitWith {_shelling = false};
	sleep _frequency;
	
};