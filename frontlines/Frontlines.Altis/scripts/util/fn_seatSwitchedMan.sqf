#include "..\script_component.hpp";
/*
	File: fn_seatSwitchedMan.sqf
	Author: Dom
	Description: Handles switching seat in a vehicle
*/
params ["_unit1","_unit2","_vehicle"];

if !([_vehicle] call YMF_fnc_checkVehicleAccess) exitWith {};