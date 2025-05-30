#include "..\script_component.hpp";
/*
	File: fn_getNearestSector.sqf
	Author: Dom
	Description: Finds the nearest sector
*/
params [
	["_pos",[],[[],objNull]],
	["_desiredTypes",[],[[]]],
	["_opforOnly",false,[true]]
];

private _distance = 99999;
private _object = objNull;

{
	if (_x getVariable "YMF_sectorType" in _desiredTypes) then {
		if (_opforOnly && {_x getVariable ["YMF_sectorOwned",false]}) exitWith {};
		private _testDistance = _pos distance2D _x;
		if (_testDistance < _distance) then {
			_distance = _testDistance;
			_object = _x;
		};
	};
} forEach YMF_allSectors;

_object;