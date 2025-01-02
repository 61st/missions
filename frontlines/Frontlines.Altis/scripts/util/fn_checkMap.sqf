#include "..\script_component.hpp";
/*
	File: fn_checkMap.sqf
	Author: Dom
	Description: Handles opening of the map
*/
params ["_mapIsOpened","_mapIsForced"];

if (_mapIsOpened) then {
	[] call YMF_fnc_createBluforMarkers;

	private _map = findDisplay 12;
	private _control = _map displayCtrl 51;
	_control ctrlAddEventHandler ["MouseButtonDown",YMF_fnc_showMapInfo];

	private _button = _map ctrlCreate ["YMF_mapButton",-1];
};