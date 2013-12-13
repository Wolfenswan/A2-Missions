// [int,array] execVM "ws_fort.sqf";

switch (_this select 0) do {

	//Bunker w. ramps and bags on top
case 1: {
		{

		_b = "Land_fortified_nest_big" createVehicle [0,0,0];
		_b setDir 0;
		("Land_WoodenRamp" createVehicle [0,0,0]) attachTO [_b,[2.9,5.75,0.5]];
		("Land_WoodenRamp" createVehicle [0,0,0]) attachTO [_b,[2.9,6.85,-0.15]];
		("Land_WoodenRamp" createVehicle [0,0,0]) attachTO [_b,[2.9,7.95,-0.8]];
		_o = ("Land_BagFenceCorner" createVehicle [0,0,0]); _o attachTO [_b,[3.7,-4.2,1.6]]; _o setDir 90;
		_o = ("Land_BagFenceCorner" createVehicle [0,0,0]); _o attachTO [_b,[-3.7,-4.2,1.6]]; _o setDir 180;
	//	_o = ("Land_BagFenceCorner" createVehicle [0,0,0]); _o attachTO [_b,[-3.7,3.1,1.6]]; _o setDir 270;
		_o = ("Land_BagFenceLong") createVehicle [0,0,0]; _o attachTO [_b,[-1.5,-4.5,1.6]]; _o setDir 0;
		_o = ("Land_BagFenceLong") createVehicle [0,0,0]; _o attachTO [_b,[1.5,-4.5,1.6]]; _o setDir 0;
		_o = ("Land_BagFenceLong") createVehicle [0,0,0]; _o attachTO [_b,[4,-2.2,1.6]]; _o setDir 90;
		_o = ("Land_BagFenceLong") createVehicle [0,0,0]; _o attachTO [_b,[-4.2,-2.2,1.6]]; _o setDir 90;

		_pos = (getPosATL _x);
		_b setPosATL _pos;
		_b setVectorUp (surfaceNormal _pos);
		_b setDir (getDir _x);
		deleteVehicle _x;
		} forEach (_this select 1);
	};

};