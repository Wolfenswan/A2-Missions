// [int,array] execVM "ws_fort.sqf";

_obj = _this select 1;
_b = objNull;

switch (_this select 0) do {

	//Bunker w. ramps and bags on top
case 1: {
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
	};

	// Illuminant Tower with usable searchlight
case 2: {
		_b = "Land_Ind_IlluminantTower" createVehicle [0,0,0];
		_b setDir 0;

		_o = ("SearchLight") createVehicle [0,0,0]; _o attachTO [_b,[0,-0.5,10.32]]; _o setDir 180;
	};

	// Concrete block w. wooden ramps & bags shielding sides. Static weapon in center (ZU 23 by default)
case 3: {
	_static = "ZU23_CDF";
	_height = 3; //Modify this depending on static used.

	_b = "Land_ConcreteBlock" createVehicle [0,0,0];
	_b setDir 0;

	("Land_WoodenRamp" createVehicle [0,0,0]) attachTO [_b,[2,4.6,0.45]];
	("Land_WoodenRamp" createVehicle [0,0,0]) attachTO [_b,[2,5.6,-0.1]];
	_o = ("Land_BagFenceCorner") createVehicle [0,0,0]; _o attachTO [_b,[-3.6,-2,1.6]]; _o setDir 180;
	_o = ("Land_BagFenceCorner") createVehicle [0,0,0]; _o attachTO [_b,[3.8,-2,1.6]]; _o setDir 90;
	_o = ("Land_BagFenceLong") createVehicle [0,0,0]; _o attachTO [_b,[4,0,1.6]]; _o setDir 90;
	_o = ("Land_BagFenceLong") createVehicle [0,0,0]; _o attachTO [_b,[-4,0,1.6]]; _o setDir 90;
	_o = _static createVehicle [0,0,0]; _o attachTO [_b,[0,0,_height]]; _o setDir 180;
	};
};


_pos = (getPosATL _obj);
_b setPosATL _pos;
_b setDir (getDir _obj);
_b setVectorUp (surfaceNormal _pos);
deleteVehicle _obj;