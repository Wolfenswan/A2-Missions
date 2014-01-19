if !(isServer) exitWith {};

_u = _this select 0;
_pos = getPosATL _u;

_boom = "Grenade" createVehicle _pos;