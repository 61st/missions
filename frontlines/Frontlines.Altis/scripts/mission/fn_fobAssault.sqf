#include "..\script_component.hpp";
/*
	File: fn_fobAssault.sqf
	Author: Dom
	Description: Side mission for an assault on player controlled FOB
*/

private _radius = getNumber(missionConfigFile >> "Settings" >> "fobBuildRadius");
private _vehicleCounts = [];
{
	_vehicleCounts pushBack count(nearestObjects [_x,["AllVehicles"],_radius,true]);
} forEach YMF_allFOBs;
private _index = (_vehicleCounts call CBA_fnc_findMax) select 1;

private _targetFOB = YMF_allFOBs select _index;
private _fobName = _targetFOB getVariable "YMF_fobName";
private _nearestSector = [_targetFOB,["tower","military","city"],true] call YMF_fnc_getNearestSector;

[format["Intel suggests the enemy are planning to attack %1 in 10 minutes.",_fobName],"generalNotif","FOB Assault"] remoteExecCall ["YMF_fnc_notify",0];
[YMF_fnc_spawnAssault,[_targetFOB,_nearestSector,1.5],600] call CBA_fnc_waitAndExecute;