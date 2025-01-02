#include "..\script_component.hpp";
/*
	File: fn_civilianKilled.sqf
	Author: Dom
	Description: Handles the death of a civilian
*/
params ["_unit","","_instigator"];

private _lastInstigator = _unit getVariable ["ace_medical_lastInstigator",objNull];

if (isPlayer _lastInstigator || {isPlayer _instigator}) then {
	["A civilian has been killed."] remoteExecCall ["YMF_fnc_notify",0];
	private _nearestSector = [_unit,["town","city","factory"]] call YMF_fnc_getNearestSector;
	[_nearestSector,getNumber (missionConfigFile >> "Settings" >> "killedCivRepLoss")] call YMF_fnc_updateCivRep;

	private _civsKilled = _nearestSector getVariable ["YMF_sectorCivsKilled",0];
	_nearestSector setVariable ["YMF_sectorCivsKilled",_civsKilled + 1];
};