// BM - Extended EventHandlers
// Credits: Black Mamba [FA], inspired by CBA and based on Muzzleflash's work. Thanks a lot.
// ====================================================================================
// INIT

if (!isnil "BM_EventsLogic") exitWith {};
BM_EventsLogic = "Logic" createVehicleLocal [0,0,0];


// ====================================================================================
// Adds an eventHandler to the local machine(must usually be run globally, i.e in the init.sqf for example, at least it needs to be on the computers you want to raise the event on)
// _id = ["My_Event", {code to be executed when the event is raised}] call BM_addEventHandler;
// returns an index associated with the eventHandler (can be used to remove that eventHandler later)

BM_addEventHandler = {
   _event = _this select 0;
   _code = _this select 1;
   _eventHandlers = BM_EventsLogic getVariable _event;
   if (isnil "_eventHandlers") then {
      _eventHandlers = [];
      BM_EventsLogic setVariable [_event, _eventHandlers];
   };
   _id = count _eventHandlers;
   _eventHandlers set [_id, _code];
   _id
};

// ====================================================================================
// Removes an eventHandler with the given index on the local machine
// bool = ["My_Event", index] call BM_removeEventHandler;
// Returns true if the event was removed, false if it was not dound.

BM_removeEventHandler = {
   _event = _this select 0;
   _id = _this select 1;
   _eventHandlers = BM_EventsLogic getVariable [_event, []];
        _wasRemoved = _id >= 0 && _id < count _eventHandlers;
        if (_wasRemoved) then {
                if (!isNil {_eventHandlers select _id}) then {
                        _eventHandlers set [_id, nil];
                } else {
                        _wasRemoved = false;
                };
        };
        _wasRemoved
};

// ====================================================================================
// Executes an Event's code on the local machine
// ["My_Event", [arguments]] call BM_localEvent;

BM_localEvent = {
   _event = _this select 0;
   _args = if (count _this > 1) then {_this select 1} else {[]};
   _eventHandlers = BM_EventsLogic getVariable [_event, []];
   {
      if (!isNil "_x") then {
         _args call _x;
      };
   } forEach _eventHandlers;
};

// ====================================================================================
// Executes an event on all remote machines (except the local one)
// ["My_Event", [arguments]] call BM_allRemoteEvent;

BM_allRemoteEvent = {
   BM_RE = _this;
   publicVariable "BM_RE";
};

// ====================================================================================
// Executes the event only on the machine where object is local
// [object, "My_Event", [arguments]] call BM_localRemoteEvent;

BM_localRemoteEvent = {
   _object = _this select 0;
   if (local _object) then {
      _event = _this select 1;
      _args = _this select 2;
      [_event, _args] call BM_localEvent;
   } else {
      BM_lRE = _this;
      publicVariableServer "BM_lRE";
   };
};

// ====================================================================================
// Executes the event on all machines (including the local one)
// ["My_Event", [arguments]] call BM_globalEvent;

BM_globalEvent = {
   _this call BM_localEvent;
   _this call BM_allRemoteEvent;
};

// ====================================================================================
// Sets up the system 

"BM_RE" addPublicVariableEventHandler {(_this select 1) call BM_localEvent};

if (isServer) then {
   "BM_lRE" addPublicVariableEventHandler {
      _holder = _this select 1;
      _object = _holder select 0;
      _event = _holder select 1;
      _args = if (count _holder > 2) then {_holder select 2} else {[]};
      if (local _object) then {
          [_event, _args] call BM_localEvent;
      } else {
         _owner = owner _object;
         BM_RE = [_event, _args];
         _owner publicVariableClient "BM_RE";
      };
   };
};