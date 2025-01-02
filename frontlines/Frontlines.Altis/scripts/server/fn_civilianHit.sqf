#include "..\script_component.hpp";
/*
	File: fn_civilianHit.sqf
	Author: Dom
	Description: Handles the injury of a civilian
*/
params ["_unit","","","_instigator"];

if (isPlayer _instigator) then {
	["A civilian has been injured."] remoteExecCall ["YMF_fnc_notify",0];
	private _nearestSector = [_unit,["town","city","factory"]] call YMF_fnc_getNearestSector;
	[_nearestSector,getNumber (missionConfigFile >> "Settings" >> "injuredCivRepLoss")] call YMF_fnc_updateCivRep;
};