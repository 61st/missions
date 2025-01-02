#include "..\script_component.hpp";
/*
	File: fn_storeCrate.sqf
	Author: Dom
	Description: Stores the crate and adds to resource pool
*/
params [
	["_crate",objNull,[objNull]]
];

private _crateClass = typeOf _crate;
private _pos = getPosATL _crate;
deleteVehicle _crate;

private _crateArray = getArray(missionConfigFile >> "Logi_Setup" >> "bluforCrates");
private _index = _crateArray find _crateClass;
if (_index isEqualTo -1) exitWith {};

private _vector = [0,0,0];
_vector set [_index,100];

if ([_pos] call FUNC(isNearFOB)) then {
	[_pos,_vector,true] call YMF_fnc_adjustResources;
} else {
	private _nearestFactory = [_pos,["factory"]] call YMF_fnc_getNearestSector;
	private _resources = _nearestFactory getVariable ["YMF_factoryResources",[0,0,0]];
	_resources = _resources vectorAdd _vector;
	_nearestFactory setVariable ["YMF_factoryResources",_resources,true];
};