#include "..\script_component.hpp";
params [
	["_unit",objNull,[objNull]],
	["_corpse",objNull,[objNull]]
];

private _oldPath = [];
private _oldRole = "";

{
	_x params ["","_roles","","","_units"];
	private _groupIndex = _forEachIndex;
	{
		if (_x isEqualTo _corpse) exitWith {
			_oldPath = [_groupIndex,_forEachIndex];
			_oldRole = _roles select _forEachIndex;
		};
	} forEach _units;
} forEach LXIF_dynamicGroups;

if (_oldPath isEqualTo []) exitWith {[] call LXIF_fnc_initGroupMenu};

[_unit,_oldPath,_oldRole,true] remoteExecCall ["LXIF_fnc_assignPlayer",2];