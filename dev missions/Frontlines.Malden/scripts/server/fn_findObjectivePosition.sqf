/*
	File: fn_findObjectivePosition.sqf
	Author: Dom
	Description: Finds a position to spawn an objective
*/
params [
	["_terrainRadius",25,[0]]
];

private _radius = getNumber(missionConfigFile >> "Settings" >> "sectorActivationRange");
private _doubleRadius = _radius * 2;
private _frontlineSectors = [false] call YMF_fnc_getFrontlineSectors;
[_frontlineSectors,true] call CBA_fnc_shuffle;
private _bluforSectors = [["town","city","factory","tower","military"],true] call YMF_fnc_getSectorsByType;
private _worldSize = worldSize;

private _position = [];
{
	while {_position isEqualTo []} do {
		private _testPos = _x getPos [random (_worldSize / 5),random 360];
		_testPos params ["_xPos","_yPos"];

		if (
			!surfaceIsWater _testPos &&
			{_testPos isFlatEmpty [-1,-1,0.2,_terrainRadius,0,false,objNull] isNotEqualTo [] &&
			{nearestTerrainObjects [_testPos,["HIDE","BUILDING","TREE","ROCKS"],_terrainRadius,false] isEqualTo [] &&
			{YMF_allSectors findIf {_x distance2D _testPos < _radius} isEqualTo -1 &&
			{YMF_allFOBs findIf {_x distance2D _testPos < _doubleRadius} isEqualTo -1 &&
			{_bluforSectors findIf {_x distance2D _testPos < _doubleRadius} isEqualTo -1 &&
			{_xPos > 0 && {_xPos < _worldSize &&
			{_yPos > 0 && {_yPos < _worldSize}}}}}}}}}
		) then {
			_position = _testPos;
		};
	};
} forEach _frontlineSectors;

_position;