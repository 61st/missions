#include "..\script_component.hpp";
/*
	File: fn_createDefences.sqf
	Author: Dom
	Description: Creates a set of defences around a location
*/
params [
	["_position",[],[[],objNull]],
	["_spawnRadius",150,[0]],
	["_mines",false,[true]]
];

private _groups = [];
if (random 100 > 50) then {
	_groups pushBack ([_position,_spawnRadius] call YMF_fnc_createMortar);
};

for "_i" from 1 to round (YMF_threatLevel / 25) do {
	_groups pushBack ([_position,_spawnRadius] call YMF_fnc_createStatic);
};

if (_mines) then {
	[_position,_spawnRadius,round (YMF_threatLevel / 10)] call YMF_fnc_createMines;
};

_groups;