/*
	File: fn_buyNewTruck.sqf
	Author: Dom
	Description: Buys a logistics truck
*/
params [
	["_unit",objNull,[objNull]]
];

private _nearFOB = [_unit] call YMF_fnc_getNearestFob;
([_nearFOB] call YMF_fnc_getCurrentResources) params ["_supplies"];

if (_supplies >= 100) then {
	[_nearFOB,[100,0,0],_false] call YMF_fnc_adjustResources;
	YMF_logistics set [0,(YMF_logistics select 0) + 1];
	[YMF_logistics,"newTruck",_nearFOB] remoteExecCall ["YMF_fnc_updateLogistics",-2,"YMF_Logi_JIP"];
} else {
	["You need 100 supplies at the nearest FOB to buy a new truck."] remoteExecCall ["YMF_fnc_notify",_unit];
};