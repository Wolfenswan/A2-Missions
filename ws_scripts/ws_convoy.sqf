if !(isServer) exitWith {};

//Dynamic convoy
_convoy = [c1,c2,c3,c4,c5,c6,c7,c8];
_center = [(_this select 0),0,0,true] call ws_fnc_getPos;
_roads = _center nearRoads 20;
_posarray = [];

if (count _roads < count _convoy) then {
	_x = 25;
		while {((count _roads) < (count _convoy))} do {
			_roads = _center nearRoads _x;
			_x = _x + 5;
	};
};

//Collect positions along road
{
_pos = [_x,2] call ws_fnc_getPos;
_posarray = _posarray + [_pos];
} forEach _roads;

//Place convoy
_i = 0;
{
_pos = (_posarray select _i);
_i = _i +1;
_x setPos _pos;  _x setDir random 360;_x allowCrewInImmobile true; _x setVectorUp(surfaceNormal(getPos _x));} forEach _convoy;

{_x setPos ([c3,10,6] call ws_fnc_getPos);clearMagazineCargoGlobal _x ; clearWeaponCargoGlobal _x ;} forEach [a1,a2]; a1 setDir 180; a2 setDir 360;
{_x setPos ([c3,10,6] call ws_fnc_getPos);clearMagazineCargoGlobal _x ; clearWeaponCargoGlobal _x ;} forEach [a3,a4]; a3 setDir 180; a4 setDir 360;

{_mkr = createMarker [format["%1",_x],getPos _x];
_mkr setMarkerType "mil_dot";
_mkr setMarkerColor "ColorRed";
_mkr setMarkerAlpha 0;} forEach [a1,a2,a3,a4];

//Randomize damage on convoy
{
_x setDamage (0.2+(random 0.4));
_x setFuel (random 0.6);
_x setVehicleAmmo (0.3+(random 0.3));
if (random 1 > 0.5) then {_x setHit [getText(configFile >> "cfgVehicles" >> (TypeOf _x) >> "HitPoints" >> "HitLFWheel" >> "name"),1]};
_x setHit [getText(configFile >> "cfgVehicles" >> (TypeOf _x) >> "HitPoints" >> "HitLBWheel" >> "name"),1];
if (random 1 > 0.5) then {_x setHit [getText(configFile >> "cfgVehicles" >> (TypeOf _x) >> "HitPoints" >> "HitRFWheel" >> "name"),1]};
if (random 1 > 0.5) then {_x setHit [getText(configFile >> "cfgVehicles" >> (TypeOf _x) >> "HitPoints" >> "HitRBWheel" >> "name"),1]};
if (random 1 > 0.5) then {_x setHit [getText(configFile >> "cfgVehicles" >> (TypeOf _x) >> "HitPoints" >> "HitGlass1" >> "name"),0.8]};
if (random 1 > 0.5) then {_x setHit [getText(configFile >> "cfgVehicles" >> (TypeOf _x) >> "HitPoints" >> "HitGlass2" >> "name"),0.8]};
if (random 1 > 0.5) then {_x setHit [getText(configFile >> "cfgVehicles" >> (TypeOf _x) >> "HitPoints" >> "HitGlass3" >> "name"),0.8]};
if (random 1 > 0.5) then {_x setHit [getText(configFile >> "cfgVehicles" >> (TypeOf _x) >> "HitPoints" >> "HitGlass4" >> "name"),0.8]};
_x setHit [getText(configFile >> "cfgVehicles" >> (TypeOf _x) >> "HitPoints" >> "engine"),1];
} forEach _convoy;

c6 setFuel 0;

//Place dead enemies
{_pos = [_center,150,20,false,false] call ws_fnc_getPos;
_x setPos _pos;["r",_x] call f_fnc_assignGear;removeAllItems _x;_x removeWeapon "ItemGPS";_x addweapon "ItemRadio";_x addweapon "ItemWatch";_x addweapon "ItemCompass"; _x setDamage 1;_x setDir random 360;} forEach units GrpDeadIns;

//Attach trigger
Trg1 setPos (getPos c1);

true