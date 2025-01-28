/*
	File: fn_onRespawn.sqf
	Author: Dom
	Description: Handles re-assigning group on player respawn
*/
params [
	["_unit",objNull,[objNull]],
	["_corpse",objNull,[objNull]]
];

private _oldPath = [];
private _oldRole = "";
private _oldTeam = assignedTeam _unit;

{
	_x params ["","_roles","","","_units"];
	private _groupIndex = _forEachIndex;
	{
		if (_x isEqualTo _corpse) exitWith {
			_oldPath = [_groupIndex,_forEachIndex];
			_oldRole = _roles select _forEachIndex;
		};
	} forEach _units;
} forEach YMF_dynamicGroups;

if (_oldPath isEqualTo []) exitWith {[] call YMF_fnc_initGroupMenu};

if (YMF_isTFAREnabled && {call TFAR_fnc_haveLRRadio}) then {call YMF_fnc_initLrRadio};
[_unit,_oldPath,_oldRole,true] remoteExecCall ["YMF_fnc_assignPlayer",2];

call YMF_fnc_initDeployMenu;