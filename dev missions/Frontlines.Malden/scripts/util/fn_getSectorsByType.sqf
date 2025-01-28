/*
	File: fn_getSectorsByType.sqf
	Author: Dom
	Description: Returns all sectors of a desired type
*/
params [
	["_desiredTypes",["town"],[[]]],
	["_bluforOnly",false,[true]]
];

private _sectors = [];

{
	private _type = _x getVariable ["YMF_sectorType",""];
	if (_type in _desiredTypes) then {
		if (_bluforOnly && {!(_x getVariable ["YMF_sectorOwned",false])}) exitWith {};
		_sectors pushBack _x;
	};
} forEach YMF_allSectors;

_sectors;