if !(isServer) exitWith {};

waitUntil {time > 5}; //Script starts after 5 seconds into the mission
waitUntil {scriptDone f_processParamsArray}; //Should be long done by now but better be safe
waitUntil {!(isNil "Wreck_loc")}; 

if (ws_debug) then	{player globalchat format ["DEBUG: ws_spawncontrol started"];};

_dif = f_param_diff;
_sideHQ = createCenter resistance;
_veh = objNull; 

//Patrols around the Wreck, wider area and close to the wreck. Patrol size is 3 - 4/5
[_dif] spawn {
	private ["_pos","_unitarr","_dir","_spos","_maxdir","_grp","_mindir","_number"];

	_pos = Wreck_loc;
	_unitarr = [];
	_number = 6 + ((_this select 0)*3);
	_dir = round (360 / _number);
	_mindir = 0;
	_maxdir = _dir;
	
	for "_x" from 1 to _number do {
	_spos = [_pos,[1150,2000],[_mindir,_maxdir],false,[0,50]] call SHK_pos;
	_tmp = [_spos,resistance,4 + round random 2,[["GUE_Soldier_1","GUE_Worker2"],["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"]]] call ws_fnc_createGroup;
	_grp = _tmp select 0;
	[_grp,_spos,["patrol",100]] call ws_fnc_addWaypoint;
	{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillRES} forEach units _grp;
	_mindir = _mindir + _dir;
	_maxdir = _maxdir + _dir;
	};
	
	_number = 4 + ((_this select 0)*2);
	_dir = round (360 / _number);
	_mindir = 0;
	_maxdir = _dir;
	
	for "_x" from 1 to _number do {
	_spos = [_pos,[700,900],[_mindir,_maxdir],false,[0,50]] call SHK_pos;
	_tmp = [_spos,resistance,3 + round random 2,[["GUE_Soldier_1","GUE_Worker2"],["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"]]] call ws_fnc_createGroup;
	_grp = _tmp select 0;
	[_grp,_spos,["patrol",100]] call ws_fnc_addWaypoint;
	{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillRES} forEach units _grp;
	_mindir = _mindir + _dir;
	_maxdir = _maxdir + _dir;
	}; 
};

//Vehicles in the wider area with 2-4 guys next to it
_dir = round (360 / 6);
_distance = [900,1500];
_mindir = 0;
_maxdir = _dir;

_typearray = ["BRDM2_Gue","Offroad_DSHKM_Gue","Offroad_DSHKM_Gue","Offroad_SPG9_Gue","Pickup_PK_GUE","Pickup_PK_GUE"];
for "_x" from 1 to 4 do {
_spos = [Wreck_loc,_distance,[_mindir,_maxdir],false,[1,1000]] call SHK_pos;
sleep 0.001;
_class = _typearray call ws_fnc_selectRandom;

	_tmp = [_spos,resistance,_class,["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
	_grp = _tmp select 1;
	[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
	{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;

_mindir = _mindir + _dir;
_maxdir = _maxdir + _dir;
};

if (f_param_aa > 0) then {
_spos = [Wreck_loc,_distance,[_mindir,_maxdir],false,[1,1000]] call SHK_pos;

_tmp = [_spos,resistance,"Ural_ZU23_Gue",["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
_grp = _tmp select 1;
[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
	
{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
_mindir = _mindir + _dir;
_maxdir = _maxdir + _dir;

_spos = [Wreck_loc,_distance,[_mindir,_maxdir],false,[1,1000]] call SHK_pos;
_tmp = [_spos,resistance,"Ural_ZU23_Gue",["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
_grp = _tmp select 1;
[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
	
{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
_mindir = _mindir + _dir;
	_maxdir = _maxdir + _dir;

} else {
_spos = [Wreck_loc,_distance,[_mindir,_maxdir],false,[1,1000]] call SHK_pos;
_tmp = [_spos,resistance,"T34",["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
_grp = _tmp select 1;
[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
	
{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
_mindir = _mindir + _dir;
_maxdir = _maxdir + _dir;

_spos = [Wreck_loc,_distance,[_mindir,_maxdir],false,[1,1000]] call SHK_pos;
_tmp = [_spos,resistance,"Offroad_DSHKM_Gue",["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
_grp = _tmp select 1;
[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
	
{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
_mindir = _mindir + _dir;
_maxdir = _maxdir + _dir;
};

//Harrassing/Guard group
[_dif] spawn {

	private ["_pos","_mkr","_dif","_unitarr","_atk_pos","_spos","_createGroup","_grp","_oldpos","_newpos","_wp","_veh"];

	_dif = _this select 0;
	
	//Harrassing (only one active at any given time)
	if !(isNil "GrpRu_Grnd") then {
	
	_atk_pos = [];
	_unitarr = [];
	_spos = [];
	_newpos = [];
	_oldpos = [];
	_grp = grpNUll;
	
	/* OLD METHOD
	_createGroup = {
	_atk_pos = getPos leader GrpRU_Grnd;
	_spos = [leader GrpRU_Grnd,[1200,1800],[_mindir,_maxdir],false,[0,2000]] call SHK_pos;

	_grp = createGroup RESISTANCE;

	_unitarr = ["GUE_Commander","Gue_Soldier_1","Gue_Soldier_3"];
	if ((floor random 100) > 50)then {_unitarr = _unitarr + ["Gue_Soldier_AR"];};
	if ((floor random 100) > 75)then {_unitarr = _unitarr + ["Gue_Soldier_2"];};
	
	{
	_unit = _grp createUnit [_x,_spos,[],0,"FORM"];
	} forEach _unitarr;
			
	_wp = _grp addWaypoint [_atk_pos,50];
	_grp setCombatMode "RED";
	_wp setWaypointType "SAD";
	_wp setWaypointSpeed "FULL";
	_grp setCurrentWaypoint _wp; 

	[units _grp] execVM "custom\f_setAISkill_custom.sqf";
	{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS";}forEach units _grp;

		
	};

	call _createGroup;
	*/
	
		while {{alive _x} count units GrpRU_Grnd > 0} do {
		_atk_pos = getPos leader GrpRU_Grnd;
		_spos = [_atk_pos,[1000,1200],[0,360],false,[0,2000]] call SHK_pos;
		
		_tmp = [_spos,resistance,3 + round random 2,[["GUE_Soldier_1","GUE_Worker2"],["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"]]] call ws_fnc_createGroup;
		_grp = _tmp select 0;
		[_grp,_spos,["sad",_atk_pos]] call ws_fnc_addWaypoint;
		{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillRES} forEach units _grp;
		
			if (ws_debug) then	{
				player globalchat format ["DEBUG: ws_harassing. Group created. _grp:%1,_wp:%2,_atkpos:%3",_grp,_wp,_atk_pos];
				
				_mkr = createMarker [format ["Grnd_%1",_atk_pos], _atk_pos];
				_mkr setMarkerType "Dot";
				_mkr setMarkerColor "ColorYellow";
				_mkr setMarkerText "DBG:Harass-Attack";
				_mkr = createMarker [format ["Grnd_%1",_spos], _spos];
				_mkr setMarkerType "Dot";
				_mkr setMarkerColor "ColorYellow";
				_mkr setMarkerText "DBG:Harass-Spawn";
			};
		
			while {{alive _x} count units _grp > 0} do {
			_oldpos = _atk_pos;
			_newpos = getPos leader GrpRU_Grnd;
				if ((_oldpos distance _newpos)>200) then {
					_atk_pos = _newpos;
					_wp = _grp addWaypoint [_atk_pos,10];
					_grp setCombatMode "RED";
					_wp setWaypointType "SAD";
					_wp setWaypointSpeed "FULL";
					_grp setCurrentWaypoint _wp;
						
						if (ws_debug) then	{
						player globalchat format ["DEBUG: ws_harassing. Group alive, WP moved. _grp:%1,_wp:%2,_atkpos:%3",_grp,_wp,_atk_pos];
						_mkr = createMarker [format ["Grnd_%1",_atk_pos], _atk_pos];
						_mkr setMarkerType "Dot";
						_mkr setMarkerColor "ColorYellow";
						_mkr setMarkerText "DBG:Harass-Attack";
						};
					};
			sleep 60;	
			};
			
		if (ws_debug) then	{player globalchat format ["DEBUG: ws_harassing. Group dead, creating new after 2 minutes."];};
		deleteGroup _grp;
		
		sleep 120;		
		};
	} else {
	
	//Create guards at Wreck (1 + _dif), size 3 - 5 men
		for "_x" from 0 to (_dif/2) do {
		_spos = [Wreck_loc,[50,150],[0,360],false,[0,50]] call SHK_pos;
		_tmp = [_spos,resistance,3 + round random 2,[["GUE_Soldier_1","GUE_Worker2"],["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"]]] call ws_fnc_createGroup;
		_grp = _tmp select 0;
		[_grp,_spos,["hold",150]] call ws_fnc_addWaypoint;
		{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillRES} forEach units _grp;
		};
		
		for "_x" from 0 to (_dif/2) do {
		_spos = [Wreck_loc,[50,150],[0,360],false,[0,50]] call SHK_pos;
		_tmp = [_spos,resistance,3 + round random 2,[["GUE_Soldier_1","GUE_Worker2"],["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"]]] call ws_fnc_createGroup;
		_grp = _tmp select 0;
		[_grp,_spos,["patrol",200]] call ws_fnc_addWaypoint;
		{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillRES} forEach units _grp;
		};
	
	//create technical/APC at Wreck	(depending on dif)	
		
		_spos = [Wreck_loc,[50,250],[0,360],false,[0,600]] call SHK_pos;
		_tmp = [_spos,resistance,"Offroad_DSHKM_Gue",["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
		_grp = _tmp select 1;
		[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
	
		{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
		
		if (round random 100 >= 50) then {_spos = [Wreck_loc,[50,250],[0,360],false,[1,500]] call SHK_pos;
			
			_tmp = [_spos,resistance,"T34",["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
		_grp = _tmp select 1;
		[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
	
		{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;};
		};
		
		switch (_dif) do {
			case (1): {//technical
				_spos = [Wreck_loc,[50,250],[0,360],false,[1,600]] call SHK_pos;
				_tmp = [_spos,resistance,"Pickup_PK_GUE",["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
				_grp = _tmp select 1;
				[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
				{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
			};
			case (2): {
				_spos = [Wreck_loc,[50,250],[0,360],false,[1,600]] call SHK_pos;
				_tmp = [_spos,resistance,"BRDM2_Gue",["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
				_grp = _tmp select 1;
				[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
				{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
			};
			case (3): {//apc
				_spos = [Wreck_loc,[50,250],[0,360],false,[1,600]] call SHK_pos;
				_tmp = [_spos,resistance,"BRDM2_Gue",["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
				_grp = _tmp select 1;
				[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
				{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
			};
			case (4): {//bmp/tank?
				_spos = [Wreck_loc,[50,250],[0,360],false,[1,600]] call SHK_pos;
				_tmp = [_spos,resistance,"T34",["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
				_grp = _tmp select 1;
				[_grp,_spos,["hold",50]] call ws_fnc_addWaypoint;
				{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
			};
		};
};


//Enemy waves
waituntil {ws_upload_started};
if (ws_debug) then	{player globalchat format ["DEBUG: Upload started, first waves launching."];};

_veharray = [["Offroad_DSHKM_Gue",1],["Offroad_SPG9_Gue",1],["BRDM2_Gue",4],["V3S_Gue",12]];

for "_x" from 1 to 2+(_dif*2) do {
_spos = [Wreck_loc,[1000,1200],[0,360],false,[0,2000]] call SHK_pos;
_tmp = [_spos,resistance,3 + round random 3,[["GUE_Soldier_1","GUE_Worker2"],["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"]]] call ws_fnc_createGroup;
	_grp = _tmp select 0;
	[_grp,Wreck_loc,["sad",100]] call ws_fnc_addWaypoint;
	{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
};
for "_x" from 1 to 1+(_dif) do {
_spos = [Wreck_loc,[1200,1500],[0,360],false,[1,1000]] call SHK_pos;
	_class = _typearray call ws_fnc_selectRandom;
	_tmp = [_spos,resistance,_class,["improved","clearcargo","lockdriver"],[2 + (round (random 2)),["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],false]] call ws_fnc_createVehicle;
	_grp = _tmp select 1;
	[_grp,Wreck_loc,["sad",50]] call ws_fnc_addWaypoint;
	{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
};


//Final waves
waituntil {ws_data_pickedup};
if (ws_debug) then	{player globalchat format ["DEBUG: Data picked up, final wave launching."];};

for "_x" from 1 to (_dif*4) do {
_spos = [Wreck_loc,[1000,1200],[0,360],false,[0,2000]] call SHK_pos;
_tmp = [_spos,resistance,3 + round random 3,[["GUE_Soldier_1","GUE_Worker2"],["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"]]] call ws_fnc_createGroup;
	_grp = _tmp select 0;
	[_grp,Wreck_loc,["sad",100]] call ws_fnc_addWaypoint;
	{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;
};

_veharray = [["T34",0],["Offroad_SPG9_Gue",1],["BRDM2_Gue",4],["V3S_Gue",12]];
for "_x" from 1 to (_dif + 2) do {
_spos = [Wreck_loc,[1200,1500],[0,360],false,[1,1000]] call SHK_pos;
_vehparams = [_veharray] call ws_fnc_selectrandom;
	_tmp = [_spos,resistance,_vehparams select 0,["improved","clearcargo","lockdriver"],[_vehparams select 1,["GUE_Soldier_GL","GUE_Soldier_3","GUE_Soldier_2","GUE_Soldier_AR"],true]] call ws_fnc_createVehicle;
	_grp = _tmp select 1;
	[_grp,Wreck_loc,["sad",50]] call ws_fnc_addWaypoint;
	{_x removeWeapon "ItemMap"; _x removeWeapon "ItemGPS"; _x setSkill f_skillOPF} forEach units _grp;	
};

