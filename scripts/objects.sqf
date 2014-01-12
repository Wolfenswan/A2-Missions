if (!isServer) exitWith {};

_this = createCenter east;
_this setFriend [east, 1];
_this setFriend [west, 0];
_this setFriend [resistance, 0];
_center_0 = _this;

_vehicle_4 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2168.8367, 4550.8169, 0.012790939], [], 0, "CAN_COLLIDE"];
  _vehicle_4 = _this;
  _this setDir -59.686058;
  _this setPos [2168.8367, 4550.8169, 0.012790939];
};

_vehicle_6 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2167.4824, 4548.396, -0.0055098371], [], 0, "CAN_COLLIDE"];
  _vehicle_6 = _this;
  _this setDir -59.686058;
  _this setPos [2167.4824, 4548.396, -0.0055098371];
};

_vehicle_8 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2166.0481, 4545.9448, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_8 = _this;
  _this setDir -59.686058;
  _this setPos [2166.0481, 4545.9448, -1.5258789e-005];
};

_group_0 = createGroup _center_0;

_vehicle_12 = objNull;
if (true) then
{
  _this = createVehicle ["KORD_high_TK_EP1", [2167.3103, 4550.8228, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_12 = _this;
  _this setDir 115.76631;
  _this setPos [2167.3103, 4550.8228, -7.6293945e-006];
};

_vehicle_23 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1963.2874, 4723.7319, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_23 = _this;
  _this setDir -30.541637;
  _this setPos [1963.2874, 4723.7319, 1.1444092e-005];
};

_vehicle_25 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1965.7635, 4725.145, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_25 = _this;
  _this setDir -30.541637;
  _this setPos [1965.7635, 4725.145, 1.5258789e-005];
};

_vehicle_27 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1968.2347, 4726.5249, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_27 = _this;
  _this setDir -30.541637;
  _this setPos [1968.2347, 4726.5249, 1.9073486e-005];
};

_vehicle_29 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1970.3865, 4727.8105, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_29 = _this;
  _this setDir -34.990265;
  _this setPos [1970.3865, 4727.8105, 1.5258789e-005];
};

_vehicle_31 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1972.7467, 4729.8276], [], 0, "CAN_COLLIDE"];
  _vehicle_31 = _this;
  _this setDir -50.135323;
  _this setPos [1972.7467, 4729.8276];
};

_vehicle_40 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1955.861, 4737.8921, -0.095935822], [], 0, "CAN_COLLIDE"];
  _vehicle_40 = _this;
  _this setDir -30.541637;
  _this setPos [1955.861, 4737.8921, -0.095935822];
};

_vehicle_41 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1958.3372, 4739.3052, -0.11591721], [], 0, "CAN_COLLIDE"];
  _vehicle_41 = _this;
  _this setDir -30.541637;
  _this setPos [1958.3372, 4739.3052, -0.11591721];
};

_vehicle_42 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1960.8083, 4740.6851, -0.12577057], [], 0, "CAN_COLLIDE"];
  _vehicle_42 = _this;
  _this setDir -30.541637;
  _this setPos [1960.8083, 4740.6851, -0.12577057];
};

_vehicle_43 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1962.9601, 4741.9707, -0.065582275], [], 0, "CAN_COLLIDE"];
  _vehicle_43 = _this;
  _this setDir -34.990265;
  _this setPos [1962.9601, 4741.9707, -0.065582275];
};

_vehicle_44 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1965.3154, 4742.748, -0.020858765], [], 0, "CAN_COLLIDE"];
  _vehicle_44 = _this;
  _this setDir -1.1796106;
  _this setPos [1965.3154, 4742.748, -0.020858765];
};

_vehicle_52 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierTakistan_EP1", [1963.6969, 4726.8276, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_52 = _this;
  _this setPos [1963.6969, 4726.8276, 1.9073486e-005];
};

_vehicle_55 = objNull;
if (true) then
{
  _this = createVehicle ["GRAD_TK_EP1", [1951.4089, 4704.7666, -0.59786469], [], 0, "CAN_COLLIDE"];
  _vehicle_55 = _this;
  _this setDir -23.550718;
  _this setVehicleLock "LOCKED";
  _this setPos [1951.4089, 4704.7666, -0.59786469];
};

_vehicle_57 = objNull;
if (true) then
{
  _this = createVehicle ["GRAD_TK_EP1", [1944.5885, 4700.6406, 7.2479248e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_57 = _this;
  _this setDir -23.550718;
  _this setVehicleLock "LOCKED";
  _this setPos [1944.5885, 4700.6406, 7.2479248e-005];
};

_vehicle_64 = objNull;
if (true) then
{
  _this = createVehicle ["TK_WarfareBFieldhHospital_Base_EP1", [1907.2549, 4695.416, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_64 = _this;
  _this setDir 248.04167;
  _this setPos [1907.2549, 4695.416, 1.1444092e-005];
};

_vehicle_65 = objNull;
if (true) then
{
  _this = createVehicle ["BMP2_Ambul_INS", [1899.8049, 4693.1689, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_65 = _this;
  _this setDir -24.612917;
  _this setVehicleLock "LOCKED";
  _this setPos [1899.8049, 4693.1689, -7.6293945e-006];
};


_vehicle_79 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierTakistan_EP1", [2052.4382, 4603.9487, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_79 = _this;
  _this setDir 90.160355;
  _this setPos [2052.4382, 4603.9487, -1.1444092e-005];
};

_vehicle_82 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [2053.416, 4607.0483, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_82 = _this;
  _this setDir 96.935837;
  _this setPos [2053.416, 4607.0483, 1.1444092e-005];
};

_vehicle_84 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [2050.3176, 4606.4492, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_84 = _this;
  _this setDir 101.7154;
  _this setPos [2050.3176, 4606.4492, 1.9073486e-005];
};

_vehicle_86 = objNull;
if (true) then
{
  _this = createVehicle ["WarfareReammoTruck_Gue", [1918.4988, 4700.4014, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_86 = _this;
  _this setDir -29.575686;
  _this setVehicleLock "LOCKED";
  _this setPos [1918.4988, 4700.4014, -3.8146973e-006];
};

_vehicle_87 = objNull;
if (true) then
{
  _this = createVehicle ["WarfareSupplyTruck_INS", [1923.4116, 4702.7476, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_87 = _this;
  _this setDir -29.320076;
  _this setVehicleLock "LOCKED";
  _this setPos [1923.4116, 4702.7476, 3.8146973e-006];
};

_vehicle_91 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2158.8325, 4559.1567, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_91 = _this;
  _this setDir -65.84304;
  _this setPos [2158.8325, 4559.1567, 1.9073486e-005];
};

_vehicle_93 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2157.5854, 4556.4414, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_93 = _this;
  _this setDir -65.84304;
  _this setPos [2157.5854, 4556.4414, -2.2888184e-005];
};

_vehicle_95 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2156.9529, 4548.7939, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_95 = _this;
  _this setDir -126.37384;
  _this setPos [2156.9529, 4548.7939, 3.8146973e-006];
};

_vehicle_97 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2155.7935, 4551.2026, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_97 = _this;
  _this setDir -83.331139;
  _this setPos [2155.7935, 4551.2026, -7.6293945e-006];
};

_vehicle_99 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2156.4863, 4553.7686, -4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_99 = _this;
  _this setDir -65.875519;
  _this setPos [2156.4863, 4553.7686, -4.9591064e-005];
};

_vehicle_101 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2158.9187, 4547.2637, 4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_101 = _this;
  _this setDir -153.39299;
  _this setPos [2158.9187, 4547.2637, 4.9591064e-005];
};

_vehicle_103 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2161.4717, 4545.9189, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_103 = _this;
  _this setDir 24.37698;
  _this setPos [2161.4717, 4545.9189, -1.5258789e-005];
};

_vehicle_105 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2164.1899, 4545.0234, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_105 = _this;
  _this setDir 8.22188;
  _this setPos [2164.1899, 4545.0234, 7.6293945e-005];
};

_vehicle_108 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2170.168, 4553.209, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_108 = _this;
  _this setDir -59.686058;
  _this setPos [2170.168, 4553.209, 7.6293945e-006];
};

_vehicle_111 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetVar_EAST_EP1", [2162.4221, 4551.7798, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_111 = _this;
  _this setDir 26.833519;
  _this setPos [2162.4221, 4551.7798, 3.0517578e-005];
};

_vehicle_113 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [1914.834, 4498.8032, -0.19970238], [], 0, "CAN_COLLIDE"];
  _vehicle_113 = _this;
  _this setDir 41.749775;
  _this setPos [1914.834, 4498.8032, -0.19970238];
};

_vehicle_115 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [2157.3821, 4579.9038, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_115 = _this;
  _this setDir -157.29929;
  _this setPos [2157.3821, 4579.9038, 3.8146973e-006];
};

_vehicle_118 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [1905.3063, 4678.3721, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_118 = _this;
  _this setDir -112.80658;
  _this setPos [1905.3063, 4678.3721, 3.0517578e-005];
};

_vehicle_120 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [1915.8827, 4682.5488, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_120 = _this;
  _this setDir -113.34541;
  _this setPos [1915.8827, 4682.5488, -1.1444092e-005];
};

_vehicle_122 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [1925.9655, 4686.8228, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_122 = _this;
  _this setDir -114.13829;
  _this setPos [1925.9655, 4686.8228, 2.2888184e-005];
};

_vehicle_132 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetB_EAST_EP1", [2048.3916, 4595.5249, -2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_132 = _this;
  _this setDir 165.14549;
  _this setPos [2048.3916, 4595.5249, -2.6702881e-005];
};

_vehicle_134 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetB_EAST_EP1", [2064.085, 4607.6221, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_134 = _this;
  _this setDir 154.85857;
  _this setPos [2064.085, 4607.6221, -3.8146973e-006];
};

_vehicle_166 = objNull;
if (true) then
{
  _this = createVehicle ["SPG9_TK_GUE_EP1", [3449.7241, 4827.4331, 3.2186885], [], 0, "CAN_COLLIDE"];
  _vehicle_166 = _this;
  _this setDir -184.31015;
  _this setPos [3449.7241, 4827.4331, 3.2186885];
};

_vehicle_168 = objNull;
if (true) then
{
  _this = createVehicle ["SPG9_TK_GUE_EP1", [3460.239, 4834.1919, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_168 = _this;
  _this setDir -215.38509;
  _this setPos [3460.239, 4834.1919, 1.1444092e-005];
};

_vehicle_179 = objNull;
if (true) then
{
  _this = createVehicle ["SPG9_TK_GUE_EP1", [3469.0986, 4978.5796, 3.1773105], [], 0, "CAN_COLLIDE"];
  _vehicle_179 = _this;
  _this setDir -107.16423;
  _this setVehicleInit "this setVehicleAmmo 0.5;";
  _this setPos [3469.0986, 4978.5796, 3.1773105];
};

_vehicle_191 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetB_EAST_EP1", [2030.3014, 4588.7256, -0.18147197], [], 0, "CAN_COLLIDE"];
  _vehicle_191 = _this;
  _this setDir 177.34239;
  _this setPos [2030.3014, 4588.7256, -0.18147197];
};

_vehicle_196 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [1991.0919, 4700.4019, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_196 = _this;
  _this setDir 4.0227509;
  _this setPos [1991.0919, 4700.4019, -1.5258789e-005];
};

_vehicle_199 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [1990.2539, 4699.1167, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_199 = _this;
  _this setDir 4.0227509;
  _this setPos [1990.2539, 4699.1167, 1.1444092e-005];
};

_vehicle_202 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1973.465, 4732.3325, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_202 = _this;
  _this setDir -94.946991;
  _this setPos [1973.465, 4732.3325, 2.2888184e-005];
};

_vehicle_205 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1968.002, 4741.769, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_205 = _this;
  _this setDir 38.757202;
  _this setPos [1968.002, 4741.769, -1.1444092e-005];
};

_vehicle_208 = objNull;
if (true) then
{
  _this = createVehicle ["KORD_high_TK_EP1", [1972.0444, 4731.3999, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_208 = _this;
  _this setDir 115.76631;
  _this setVehicleLock "LOCKED";
  _this setPos [1972.0444, 4731.3999, 3.0517578e-005];
};

_vehicle_210 = objNull;
if (true) then
{
  _this = createVehicle ["KORD_high_TK_EP1", [1966.6401, 4740.4141, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_210 = _this;
  _this setDir 66.875793;
  _this setVehicleLock "LOCKED";
  _this setPos [1966.6401, 4740.4141, -1.1444092e-005];
};

_vehicle_215 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fort_Watchtower", [3429.7893, 4622.5439, -0.15532878], [], 0, "CAN_COLLIDE"];
  _vehicle_215 = _this;
  _this setDir -39.047779;
  _this setPos [3429.7893, 4622.5439, -0.15532878];
};

_vehicle_217 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3430.9895, 4618.2104, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_217 = _this;
  _this setDir 29.908838;
  _this setPos [3430.9895, 4618.2104, 4.7683716e-006];
};

_vehicle_219 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3435.3286, 4615.2349, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_219 = _this;
  _this setDir 25.001074;
  _this setPos [3435.3286, 4615.2349, 9.5367432e-007];
};

_vehicle_221 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3439.8728, 4612.9297, -2.0027161e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_221 = _this;
  _this setDir 27.684616;
  _this setPos [3439.8728, 4612.9297, -2.0027161e-005];
};

_vehicle_224 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3431.0857, 4632.6924, 9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_224 = _this;
  _this setDir 118.2084;
  _this setPos [3431.0857, 4632.6924, 9.5367432e-006];
};

_vehicle_227 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3433.5017, 4637.4644, -0.12428428], [], 0, "CAN_COLLIDE"];
  _vehicle_227 = _this;
  _this setDir 118.02353;
  _this setPos [3433.5017, 4637.4644, -0.12428428];
};

_vehicle_231 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fort_Watchtower", [3450.1133, 4611.4287], [], 0, "CAN_COLLIDE"];
  _vehicle_231 = _this;
  _this setDir -74.650047;
  _this setPos [3450.1133, 4611.4287];
};

_vehicle_234 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [3448.4175, 4633.1201, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_234 = _this;
  _this setDir 112.34261;
  _this setPos [3448.4175, 4633.1201, 7.6293945e-006];
};

_vehicle_239 = objNull;
if (true) then
{
  _this = createVehicle ["DSHKM_TK_INS_EP1", [3428.3284, 4624.501, 2.2932816], [], 0, "CAN_COLLIDE"];
  _vehicle_239 = _this;
  _this setDir -118.7808;
  _this setPos [3428.3284, 4624.501, 2.2932816];
};

_vehicle_244 = objNull;
if (true) then
{
  _this = createVehicle ["DSHKM_Gue", [4018.6824, 5140.1323, 2.4445169], [], 0, "CAN_COLLIDE"];
  _vehicle_244 = _this;
  _this setDir 242.03035;
  _this setPos [4018.6824, 5140.1323, 2.4445169];
};

_vehicle_246 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3435.6631, 4642.2036, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_246 = _this;
  _this setDir 116.3178;
  _this setPos [3435.6631, 4642.2036, 7.6293945e-006];
};

_vehicle_248 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierTKMilitia_EP1", [3450.7068, 4626.856, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_248 = _this;
  _this setPos [3450.7068, 4626.856, 2.8610229e-006];
};

_vehicle_274 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3497.4705, 4984.6729, -0.27035904], [], 0, "CAN_COLLIDE"];
  _vehicle_274 = _this;
  _this setDir 43.212299;
  _this setPos [3497.4705, 4984.6729, -0.27035904];
};

_vehicle_275 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3501.3184, 4981.0801, -0.15036052], [], 0, "CAN_COLLIDE"];
  _vehicle_275 = _this;
  _this setDir 40.598431;
  _this setPos [3501.3184, 4981.0801, -0.15036052];
};

_vehicle_277 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3516.7861, 4980.2241, -0.12451172], [], 0, "CAN_COLLIDE"];
  _vehicle_277 = _this;
  _this setDir 134.25304;
  _this setPos [3516.7861, 4980.2241, -0.12451172];
};

_vehicle_278 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fort_Watchtower", [3509.5496, 4976.5874, -0.75402069], [], 0, "CAN_COLLIDE"];
  _vehicle_278 = _this;
  _this setDir -49.399437;
  _this setPos [3509.5496, 4976.5874, -0.75402069];
};

_vehicle_279 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [3511.7854, 4991.6577, -0.44584846], [], 0, "CAN_COLLIDE"];
  _vehicle_279 = _this;
  _this setDir 129.9534;
  _this setPos [3511.7854, 4991.6577, -0.44584846];
};

_vehicle_282 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3520.4854, 4984.124, -0.061658859], [], 0, "CAN_COLLIDE"];
  _vehicle_282 = _this;
  _this setDir 133.70082;
  _this setPos [3520.4854, 4984.124, -0.061658859];
};

_vehicle_283 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierTKMilitia_EP1", [3508.7944, 4986.3584, -0.28432274], [], 0, "CAN_COLLIDE"];
  _vehicle_283 = _this;
  _this setPos [3508.7944, 4986.3584, -0.28432274];
};

_vehicle_312 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fort_Watchtower", [4094.3831, 5153.9331, -0.55370522], [], 0, "CAN_COLLIDE"];
  _vehicle_312 = _this;
  _this setDir -228.64557;
  _this setPos [4094.3831, 5153.9331, -0.55370522];
};

_vehicle_313 = objNull;
if (true) then
{
  _this = createVehicle ["DSHKM_TK_INS_EP1", [4096.291, 5152.6045, 1.8455753], [], 0, "CAN_COLLIDE"];
  _vehicle_313 = _this;
  _this setDir -332.06924;
  _this setPos [4096.291, 5152.6045, 1.8455753];
};

_vehicle_321 = objNull;
if (true) then
{
  _this = createVehicle ["SPG9_TK_INS_EP1", [3400.791, 4645.1421, 3.6109879], [], 0, "CAN_COLLIDE"];
  _vehicle_321 = _this;
  _this setDir 266.14429;
  _this setVehicleInit "this setVehicleAmmo 0.5;";
  _this setPos [3400.791, 4645.1421, 3.6109879];
};

_vehicle_326 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3496.342, 4985.521, -0.19971873], [], 0, "CAN_COLLIDE"];
  _vehicle_326 = _this;
  _this setDir -50.953613;
  _this setPos [3496.342, 4985.521, -0.19971873];
};

_vehicle_329 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3518.5034, 4988.3042, 2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_329 = _this;
  _this setDir 47.401001;
  _this setPos [3518.5034, 4988.3042, 2.6702881e-005];
};

_vehicle_330 = objNull;
if (true) then
{
  _this = createVehicle ["UAZ_RU", [1989.3483, 4694.959, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_330 = _this;
  _this setDir 125.75198;
  _this setPos [1989.3483, 4694.959, -3.8146973e-006];
};

_vehicle_332 = objNull;
if (true) then
{
  _this = createVehicle ["BTR40_TK_INS_EP1", [2046.6409, 4602.4995, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_332 = _this;
  _this setDir -29.688219;
  _this setPos [2046.6409, 4602.4995, -3.8146973e-006];
};

_vehicle_334 = objNull;
if (true) then
{
  _this = createVehicle ["BTR40_TK_INS_EP1", [2041.9802, 4598.6875], [], 0, "CAN_COLLIDE"];
  _vehicle_334 = _this;
  _this setDir -29.688219;
  _this setPos [2041.9802, 4598.6875];
};

_vehicle_339 = objNull;
if (true) then
{
  _this = createVehicle ["BTR40_TK_INS_EP1", [2031.6165, 4595.6665, -0.199752], [], 0, "CAN_COLLIDE"];
  _vehicle_339 = _this;
  _this setDir -13.159378;
  _this setPos [2031.6165, 4595.6665, -0.199752];
};

_vehicle_345 = objNull;
if (true) then
{
  _this = createVehicle ["BTR40_TK_INS_EP1", [2028.453, 4594.6821, -0.19972908], [], 0, "CAN_COLLIDE"];
  _vehicle_345 = _this;
  _this setDir -13.159378;
  _this setPos [2028.453, 4594.6821, -0.19972908];
};

_vehicle_347 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetVar_EAST_EP1", [1987.9279, 4699.4575], [], 0, "CAN_COLLIDE"];
  _vehicle_347 = _this;
  _this setDir -216.98756;
  _this setPos [1987.9279, 4699.4575];
};

_vehicle_360 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fort_Watchtower", [4131.5635, 4724.4863, -0.00011062622], [], 0, "CAN_COLLIDE"];
  _vehicle_360 = _this;
  _this setDir 56.514782;
  _this setPos [4131.5635, 4724.4863, -0.00011062622];
};

_vehicle_361 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [4127.3516, 4722.4912, -0.14379692], [], 0, "CAN_COLLIDE"];
  _vehicle_361 = _this;
  _this setDir 135.41852;
  _this setPos [4127.3516, 4722.4912, -0.14379692];
};

_vehicle_362 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [4123.4971, 4718.4136, -0.030308405], [], 0, "CAN_COLLIDE"];
  _vehicle_362 = _this;
  _this setDir 112.0947;
  _this setPos [4123.4971, 4718.4136, -0.030308405];
};

_vehicle_363 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [4121.8682, 4713.0532, -0.14310855], [], 0, "CAN_COLLIDE"];
  _vehicle_363 = _this;
  _this setDir 90.31485;
  _this setPos [4121.8682, 4713.0532, -0.14310855];
};

_vehicle_364 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [4157.6782, 4741.167, -0.037513349], [], 0, "CAN_COLLIDE"];
  _vehicle_364 = _this;
  _this setDir 162.28969;
  _this setPos [4157.6782, 4741.167, -0.037513349];
};

_vehicle_365 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [4167.8267, 4745.1431, 0.20515786], [], 0, "CAN_COLLIDE"];
  _vehicle_365 = _this;
  _this setDir 162.42456;
  _this setPos [4167.8267, 4745.1431, 0.20515786];
};

_vehicle_366 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fort_Watchtower", [4148.9287, 4735.957, -0.15288487], [], 0, "CAN_COLLIDE"];
  _vehicle_366 = _this;
  _this setDir 59.220501;
  _this setPos [4148.9287, 4735.957, -0.15288487];
};

_vehicle_367 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [4134.6089, 4689.7075, 0.16643575], [], 0, "CAN_COLLIDE"];
  _vehicle_367 = _this;
  _this setDir 239.28491;
  _this setPos [4134.6089, 4689.7075, 0.16643575];
};

_vehicle_369 = objNull;
if (true) then
{
  _this = createVehicle ["DSHKM_TK_INS_EP1", [4133.6509, 4725.7539, 2.4821072], [], 0, "CAN_COLLIDE"];
  _vehicle_369 = _this;
  _this setDir -23.218233;
  _this setPos [4133.6509, 4725.7539, 2.4821072];
};

_vehicle_370 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [4162.2964, 4743.1226, 0.11650953], [], 0, "CAN_COLLIDE"];
  _vehicle_370 = _this;
  _this setDir 159.79449;
  _this setPos [4162.2964, 4743.1226, 0.11650953];
};

_vehicle_371 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierTKMilitia_EP1", [4132.7197, 4697.3813, -0.033064574], [], 0, "CAN_COLLIDE"];
  _vehicle_371 = _this;
  _this setDir 86.349709;
  _this setPos [4132.7197, 4697.3813, -0.033064574];
};

_vehicle_388 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fort_Watchtower", [3442.3682, 4650.5986, 3.2424927e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_388 = _this;
  _this setDir 31.782436;
  _this setPos [3442.3682, 4650.5986, 3.2424927e-005];
};

_vehicle_393 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HBarrier5", [3438.1201, 4646.9614, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_393 = _this;
  _this setDir 116.3178;
  _this setPos [3438.1201, 4646.9614, 3.4332275e-005];
};

_vehicle_395 = objNull;
if (true) then
{
  _this = createVehicle ["SPG9_TK_GUE_EP1", [4169.8369, 4709.584, 3.3580451], [], 0, "CAN_COLLIDE"];
  _vehicle_395 = _this;
  _this setDir 325.22394;
  _this setVehicleLock "UNLOCKED";
  _this setVehicleInit "this setVehicleAmmo 0.5;";
  _this setPos [4169.8369, 4709.584, 3.3580451];
};

_vehicle_400 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fort_Watchtower", [4067.7444, 5170.4272, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_400 = _this;
  _this setDir -246.05312;
  _this setPos [4067.7444, 5170.4272, -3.8146973e-006];
};

_vehicle_407 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1996.046, 4726.7896, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_407 = _this;
  _this setDir 58.115448;
  _this setPos [1996.046, 4726.7896, -3.8146973e-006];
};

_vehicle_408 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1997.4849, 4724.3516, 0.10194778], [], 0, "CAN_COLLIDE"];
  _vehicle_408 = _this;
  _this setDir 58.115448;
  _this setPos [1997.4849, 4724.3516, 0.10194778];
};

_vehicle_409 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [1998.8195, 4722.2285, 0.2841835], [], 0, "CAN_COLLIDE"];
  _vehicle_409 = _this;
  _this setDir 53.666821;
  _this setPos [1998.8195, 4722.2285, 0.2841835];
};

_vehicle_413 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2013.1454, 4715.0713, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_413 = _this;
  _this setDir 53.94035;
  _this setPos [2013.1454, 4715.0713, -1.1444092e-005];
};

_vehicle_414 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2014.7566, 4712.7456, 0.027194977], [], 0, "CAN_COLLIDE"];
  _vehicle_414 = _this;
  _this setDir 53.94035;
  _this setPos [2014.7566, 4712.7456, 0.027194977];
};

_vehicle_419 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2023.5159, 4696.0518, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_419 = _this;
  _this setDir 49.718868;
  _this setPos [2023.5159, 4696.0518, 7.6293945e-006];
};

_vehicle_420 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2025.2941, 4693.8477, 0.0048828125], [], 0, "CAN_COLLIDE"];
  _vehicle_420 = _this;
  _this setDir 49.718868;
  _this setPos [2025.2941, 4693.8477, 0.0048828125];
};

_vehicle_421 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2026.9253, 4691.9463, 0.10195923], [], 0, "CAN_COLLIDE"];
  _vehicle_421 = _this;
  _this setDir 45.270245;
  _this setPos [2026.9253, 4691.9463, 0.10195923];
};

_vehicle_425 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2040.0645, 4685.6782, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_425 = _this;
  _this setDir 44.617649;
  _this setPos [2040.0645, 4685.6782, 1.9073486e-005];
};

_vehicle_426 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2042.03, 4683.6421, 0.030979156], [], 0, "CAN_COLLIDE"];
  _vehicle_426 = _this;
  _this setDir 44.617649;
  _this setPos [2042.03, 4683.6421, 0.030979156];
};

_vehicle_431 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2046.7876, 4671.791, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_431 = _this;
  _this setDir 42.481731;
  _this setPos [2046.7876, 4671.791, -3.8146973e-006];
};

_vehicle_432 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2048.8301, 4669.833, 0.017166138], [], 0, "CAN_COLLIDE"];
  _vehicle_432 = _this;
  _this setDir 42.481731;
  _this setPos [2048.8301, 4669.833, 0.017166138];
};

_vehicle_433 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2050.6885, 4668.1494, 0.11444092], [], 0, "CAN_COLLIDE"];
  _vehicle_433 = _this;
  _this setDir 38.033112;
  _this setPos [2050.6885, 4668.1494, 0.11444092];
};

_vehicle_438 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2070.1748, 4658.7969, 0.064483643], [], 0, "CAN_COLLIDE"];
  _vehicle_438 = _this;
  _this setDir 45.576317;
  _this setPos [2070.1748, 4658.7969, 0.064483643];
};

_vehicle_439 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2071.9387, 4657.0146, 0.14842606], [], 0, "CAN_COLLIDE"];
  _vehicle_439 = _this;
  _this setDir 41.127701;
  _this setPos [2071.9387, 4657.0146, 0.14842606];
};

_vehicle_443 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2078.2603, 4645.2603, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_443 = _this;
  _this setDir 44.918121;
  _this setPos [2078.2603, 4645.2603, 7.6293945e-006];
};

_vehicle_444 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2080.2173, 4643.2148, 0.035312653], [], 0, "CAN_COLLIDE"];
  _vehicle_444 = _this;
  _this setDir 44.918121;
  _this setPos [2080.2173, 4643.2148, 0.035312653];
};

_vehicle_445 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2082, 4641.4556, 0.12350464], [], 0, "CAN_COLLIDE"];
  _vehicle_445 = _this;
  _this setDir 40.469498;
  _this setPos [2082, 4641.4556, 0.12350464];
};

_vehicle_450 = objNull;
if (true) then
{
  _this = createVehicle ["KORD_high_TK_EP1", [2023.6613, 4692.1328, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_450 = _this;
  _this setDir 57.242287;
  _this setVehicleLock "LOCKED";
  _this setPos [2023.6613, 4692.1328, 3.4332275e-005];
};

_vehicle_452 = objNull;
if (true) then
{
  _this = createVehicle ["KORD_high_TK_EP1", [2069.386, 4656.6313, 8.0108643e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_452 = _this;
  _this setDir 57.107254;
  _this setVehicleLock "LOCKED";
  _this setPos [2069.386, 4656.6313, 8.0108643e-005];
};

_vehicle_459 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2094.7717, 4637.1309, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_459 = _this;
  _this setDir 45.576317;
  _this setPos [2094.7717, 4637.1309, -1.1444092e-005];
};

_vehicle_460 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2096.5356, 4635.3486, 0.083656311], [], 0, "CAN_COLLIDE"];
  _vehicle_460 = _this;
  _this setDir 41.127701;
  _this setPos [2096.5356, 4635.3486, 0.083656311];
};

_vehicle_461 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2102.8572, 4623.5942, -0.090770721], [], 0, "CAN_COLLIDE"];
  _vehicle_461 = _this;
  _this setDir 44.918121;
  _this setPos [2102.8572, 4623.5942, -0.090770721];
};

_vehicle_462 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2104.8142, 4621.5488, -0.058689117], [], 0, "CAN_COLLIDE"];
  _vehicle_462 = _this;
  _this setDir 44.918121;
  _this setPos [2104.8142, 4621.5488, -0.058689117];
};

_vehicle_463 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2106.5969, 4619.7896, 0.03818512], [], 0, "CAN_COLLIDE"];
  _vehicle_463 = _this;
  _this setDir 40.469498;
  _this setPos [2106.5969, 4619.7896, 0.03818512];
};

_vehicle_469 = objNull;
if (true) then
{
  _this = createVehicle ["DSHkM_Mini_TriPod", [3495.6592, 4961.1602, 2.5941041], [], 0, "CAN_COLLIDE"];
  _vehicle_469 = _this;
  _this setDir -101.37722;
  _this setPos [3495.6592, 4961.1602, 2.5941041];
};

_vehicle_472 = objNull;
if (true) then
{
  _this = createVehicle ["ZU23_Gue", [3672.9446, 4819.3647, 2.8946795], [], 0, "CAN_COLLIDE"];
  _vehicle_472 = _this;
  _this setPos [3672.9446, 4819.3647, 2.8946795];
};

_vehicle_473 = objNull;
if (true) then
{
  _this = createVehicle ["SPG9_TK_INS_EP1", [3533.9485, 4956.0547, 3.3093712], [], 0, "CAN_COLLIDE"];
  _vehicle_473 = _this;
  _this setDir -57.884033;
  _this setVehicleInit "this setVehicleAmmo 0.5;";
  _this setPos [3533.9485, 4956.0547, 3.3093712];
};

_vehicle_475 = objNull;
if (true) then
{
  _this = createVehicle ["ZU23_Gue", [3764.0435, 4845.5884, 2.6905663], [], 0, "CAN_COLLIDE"];
  _vehicle_475 = _this;
  _this setDir -18.515738;
  _this setPos [3764.0435, 4845.5884, 2.6905663];
};