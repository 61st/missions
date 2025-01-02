#include "..\script_component.hpp";
/*
	File: fn_spawnGuerillas.sqf
	Author: Dom
	Description: Spawns independent units to attack/defend a sector
*/
params [
	["_sectorObj",objNull,[objNull,[]]],
	["_action","",[""]]
];

private _sectorTypeIndex = [_sectorObj getVariable "YMF_sectorType"] call YMF_fnc_getSectorTypeIndex;
private _spawnRadius = (getArray(missionConfigFile >> "Settings" >> "sectorRadius")) select _sectorTypeIndex;
private _position = [_sectorObj,_spawnRadius,(_spawnRadius * 2),5,0,1,0] call BIS_fnc_findSafePos;
[format["Guerilla forces are on the way to %1.",_sectorObj getVariable "YMF_sectorName"],"generalNotif","Guerilla Forces"] remoteExecCall ["YMF_fnc_notify",0];

private _groups = [];
_groups pushBack ([_position,150,independent] call YMF_fnc_createSquad);
if (YMF_globalReputation < -50) then {
	_groups pushBack ([_position,150,independent] call YMF_fnc_createSquad);
};

if (_action in ["mechAttack","sectorDefence"] || {YMF_globalReputation < -33}) then {
	private _guerillaVehicles = getArray(missionConfigFile >> "Guerilla_Setup" >> "guerillaVehicles");
	_groups pushBack ([selectRandom _guerillaVehicles,_position,150,true,independent] call YMF_fnc_createVehicle);
};

{
	private _waypoint = _x addWaypoint [_sectorObj,10];
	_waypoint setWaypointType "SAD";
	_waypoint setWaypointCombatMode "RED";
	_waypoint setWaypointBehaviour "AWARE";
} forEach _groups;

[
	{
		params ["_sectorObj"];
		!(_sectorObj in YMF_activeSectors)
	},
	{
		params ["","_groups"];
		{
			[_x] call YMF_fnc_deleteGroup;
		} forEach _groups;
	},
	[_sectorObj,_groups]
] call CBA_fnc_waitUntilAndExecute;

_groups;