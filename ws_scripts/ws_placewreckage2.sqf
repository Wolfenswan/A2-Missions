//Based on init_start.sqf in: Jolly Green, made by Shuko of LDD Kyllikki

if (!isServer) exitWith {};
if (ws_initdone) exitWith {};

private ["_findFlatGround"];
  _findFlatGround =
  {
    private ["_pos","_posTL","_posTR","_posBL","_posBR","_result","_water","_gradientTooBig","_posArray","_radius","_maxFactor"];
    _pos = _this select 0;
    _radius = _this select 1;
    _maxFactor = _this select 2;

    _posTL = [(_pos select 0) - _radius, (_pos select 1) - _radius];
    _posTR = [(_pos select 0) + _radius, (_pos select 1) - _radius];
    _posBL = [(_pos select 0) - _radius, (_pos select 1) + _radius];
    _posBR = [(_pos select 0) + _radius, (_pos select 1) + _radius];

    _result = [false,_pos];

    _water = false;
    {
      if (surfaceIsWater _x) exitWith { _water = true; };
    } forEach [_pos, _posTL, _posTR, _posBL, _posBR];

    _gradientTooBig = false;

    _posArray = [_pos, _posTL, _posTR, _posBL, _posBR];

    for "_i" from 0 to ((count _posArray) - 1) do
    {
      for "_k" from 0 to ((count _posArray) - 1) do
      {
        private ["_pos1", "_pos2"];
        _pos1 = _posArray select _i;
        _pos2 = _posArray select _k;

        if (((_pos1 select 0) != (_pos2 select 0)) && ((_pos1 select 1) != (_pos2 select 1))) then
        {
          private ["_sample1", "_sample2", "_posASL1", "_posASL2"];
          _sample1 = "RoadCone" createVehicle _pos1;
          _sample2 = "RoadCone" createVehicle _pos2;
          _posASL1 = getPosASL _sample1;
          _posASL2 = getPosASL _sample2;
          deleteVehicle _sample1;
          deleteVehicle _sample2;

          private ["_heightDiff"];
          _heightDiff = abs ((_posASL1 select 2) - (_posASL2 select 2));

          if (_heightDiff > _maxFactor) then { _gradientTooBig = true; };
        };
      };
    };

    if (!_water && !_gradientTooBig) then { _result = [true,_pos]; };

    _result
  };
  //sleep (random 0.5);
  private ["_area","_centerpos","_cx","_cy","_areasize","_rx","_ry","_ad","_cd","_sd","_tx","_ty","_xout","_yout","_bomb","_found","_result"];
  
if ((floor random 100) > 50) then {
_area = "mArea";
} else {_area = "mArea_2";};
  
  _centerpos = getMarkerPos _area;
  _cx = abs(_centerpos select 0);
  _cy = abs(_centerpos select 1);
  _areasize = getMarkerSize _area;
  _rx = _areasize select 0;
  _ry = _areasize select 1;
  _ad = (markerDir _area) * -1;
  _cd = cos(_ad);
  _sd = sin(_ad);

	_found = false;
  while {!_found} do {
    _tx=(random (_rx*2)) - _rx;
    _ty=(random (_ry*2)) - _ry;
    _xout=if (_ad!=0) then {_cx+ (_cd*_tx - _sd*_ty)} else {_cx+_tx};
    _yout=if (_ad!=0) then {_cy+ (_sd*_tx + _cd*_ty)} else {_cy+_ty};
    _result = [[_xout,_yout,0],2,4.5] call _findFlatGround;	
    _found = _result select 0;
  };
  
Wreck_loc = _result select 1;
publicvariable "Wreck_Loc";
_bomb = "Bo_GBU12_LGB" createVehicle Wreck_loc;
[_bomb] spawn {
waituntil {isNull (_this select 0)};
Wreck setdir (random 360);
Wreck setPos [Wreck_loc select 0,Wreck_loc select 1,0];
Wreck setVectorUp(surfaceNormal(getPos Wreck));
Wreck allowdamage false;
Wreck setVelocity [0,0,0];};

//Attack marker for the wave script
_mkr = createMarker ["attack", Wreck_loc];
_mkr setMarkerShape "ICON";
_mkr setMarkerType "Empty";

//Move Grounded team in location
_spos = [];

sleep 0.1;

if !(isNil "GrpRU_Grnd") then {
//Place the grounded team around the Wreckage and remove their stuff
{sleep 0.1;_spos = [Wreck,[15,30],[0,360],false,[0,0]] call SHK_pos;
_x setPos _spos; removeAllItems _x;_x removeWeapon "ItemGPS";_x addweapon "ItemRadio";_x addweapon "ItemWatch";_x addweapon "ItemCompass";
} forEach units GrpRU_Grnd;};