if (isDedicated) exitWith{};
sleep 0.01;
_unit = _this select 0;
_ins = _this select 1;

_unit setPos [((_ins select 0)+ random 140)-70, ((_ins select 1) + random 140)-70, 0];
sleep 0.1;
_unit flyinheight 2000;
[_unit, 2000] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";

sleep 1;

while {((getposATL player)select 2) > 1} do
{
hintsilent format ["Altimeter: %1", round (getPosATL player select 2)];
};
if (((getposATL player)select 2) < 1) then
{
hintsilent "";
};