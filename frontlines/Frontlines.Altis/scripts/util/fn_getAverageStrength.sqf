#include "..\script_component.hpp";
/*
	File: fn_getAverageStrength.sqf
	Author: Dom
	Description: Returns the average strength of the opfor side
*/

private _totalStrength = 0;
private _totalSectors = {
	_totalStrength = _totalStrength + (_x getVariable ["YMF_sectorStrength",1]);
	true;
} count YMF_allSectors;

_totalStrength / _totalSectors;