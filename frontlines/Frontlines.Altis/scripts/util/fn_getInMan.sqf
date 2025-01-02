#include "..\script_component.hpp";
/*
	File: fn_getInMan.sqf
	Author: Dom
	Description: Handles entry into any vehicle
*/
params ["_unit","_role","_vehicle","_turret"];

if !([_vehicle,true] call YMF_fnc_checkVehicleAccess) exitWith {};

if !(_vehicle getVariable ["YMF_playerUsed",false]) then {
	private _civVehicles = getArray(missionConfigFile >> "Civilian_Setup" >> "civilianVehicleTypes");
	_civVehicles append getArray(missionConfigFile >> "Civilian_Setup" >> "civilianAircraftTypes");
	if ((typeOf _vehicle) in _civVehicles) then {
		private _penalty = getNumber(missionConfigFile >> "Settings" >> "seizedCivVehicleRepLoss");
		[[_vehicle,["town","city","factory"]] call YMF_fnc_getNearestSector,_penalty] remoteExecCall ["YMF_fnc_updateCivRep",2];
		["A civilian vehicle has been seized."] remoteExecCall ["YMF_fnc_notify",0];
	};
	_vehicle setVariable ["YMF_playerUsed",true,true];
};