/*
	File: fn_createSquad.sqf
	Author: Dom
	Description: Creates the squad pulled from the config
*/
params [
	["_position",[],[[]]],
	["_radius",150,[0]]
];

private _spawnPosition = [_position,0,_radius,5,0,1,0,[],[_position,_position]] call BIS_fnc_findSafePos;

private _squadComposition = selectRandom (getArray(missionConfigFile >> "Opfor_Setup" >> DT_opforFaction >> "opforSquads"));
private _group = createGroup [east,true];

{
	[_group,east,_x,_spawnPosition,10] call DT_fnc_createUnit;
} forEach _squadComposition;

private _ambushChance = paramsArray select 13;
if (_ambushChance > random 100) then {
	(leader _group) addEventHandler ["FiredNear",{
		params ["_unit","_firer"];

		_unit removeEventHandler [_thisEvent,_thisEventHandler];

		private _target = _firer;
		if !(isPlayer _firer) then {
			private _nearestEnemy = _unit findNearestEnemy _unit;
			if !(isNull _nearestEnemy) then {
				_target = _nearestEnemy;
			};
		};

		private _timeDelay = paramsArray select 14;
		[DT_fnc_spawnAmbushOpfor,[_target,getPosATL _target],_timeDelay + random _timeDelay] call CBA_fnc_waitAndExecute;
	}];
};

[_group] call CBA_fnc_clearWaypoints;
_group;