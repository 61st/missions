/*
 * Author: Reeveli
 * Part of Reeveli's teleport system.
 * Server function to create a teleport point to an object.
 * Must be run on server, so use either global object init fields or remoteexecute on server. Global execution works also.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Display name <STRING>
 * 2: Side <SIDE>
 *
 * Return Value: NONE
 *
 * Example:
 * [this,"My teleportation point",west] call Rev_tp_fnc_addPoint;
 *
 */

params [
	["_object", objNull, [objNull]],
	["_name","",[""]],
	["_side",west,[civilian]]
];

//Safetychecks
if !(isServer) exitWith {false;};
if (isNull _object) exitWith {false;};

if (([_object] call Rev_tp_fnc_listCheck) > -1) exitWith {
	diag_log "Rev_tp_fnc_addPoint: Teleport point already exists on selected object";
	false;
};

//Updating and propagating new list
private _list = missionNamespace getVariable ["Rev_tp_list",[]];
private _new = _this;
_list append [_new];
missionNamespace setVariable ["Rev_tp_list",_list,true];

//Ehs to remove point if killed/deleted
_object addEventHandler ["Killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	[_unit] call Rev_tp_fnc_deletePoint;
}];

_object addEventHandler ["Deleted", {
	params ["_entity"];
	[_entity] call Rev_tp_fnc_deletePoint;
}];

//Adding action to players
[_object,_side] remoteExecCall ["Rev_tp_fnc_addAction",0,true];