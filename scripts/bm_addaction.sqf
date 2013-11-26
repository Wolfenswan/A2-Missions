/*    BM_addAction.sqf
Removes the need for creating a new file any time you create a new action.
You can now spawn code directly from the addAction command.
Examples:
nul = _target addAction ["Action Text", "Custom\BM_addAction.sqf", [[arguments], {code to execute}], priority, showWindow, hideOnUse, shortcut, condition];
nul = _target addAction ["Action Text", "Custom\BM_addAction.sqf", {code to execute}, priority, showWindow, hideOnUse, shortcut, condition];
*/

private ["_target", "_caller", "_id", "_passed", "_args", "_code"];

_target = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_passed = _this select 3;

switch (typeName _passed) do {
   case "ARRAY" : {
      _args = _passed select 0;
      _code = _passed select 1;
      [_target, _caller, _id, _args] call _code;
   };
   case "CODE" : {
      [_target, _caller, _id] call _passed;
   };
   default {player sidechat "BM_addAction only takes code and arrays!";};
};