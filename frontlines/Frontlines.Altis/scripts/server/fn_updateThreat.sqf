#include "..\script_component.hpp";
/*
	File: fn_updateThreat.sqf
	Author: Dom
	Description: Updates the global threat level
*/
params [
	["_value",0,[0]]
];

private _newThreat = 0 max ((YMF_threatLevel + _value) min 100);
missionNamespace setVariable ["YMF_threatLevel",_newThreat,true];