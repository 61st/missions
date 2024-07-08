#include "..\script_component.hpp";
params [
	["_unit",objNull,[objNull]]
];

private _oldPath = [];

{
	_x params ["","","","","_units"];
	if (_unit in _units) exitWith {
		private _unitIndex = _units find _unit;
		_units set [_unitIndex,objNull];
		_oldPath = [_forEachIndex,_unitIndex];
	};
} forEach YMF_dynamicGroups;

_oldPath