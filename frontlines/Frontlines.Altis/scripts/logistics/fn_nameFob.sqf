#include "..\script_component.hpp";
/*
	File: fn_nameFob.sqf
	Author: Dom
	Description: Renames a FOB and updates its marker
*/

private _display = findDisplay 9650;
private _newName = ctrlText (_display displayCtrl 1400);
private _fob = [player] call YMF_fnc_getNearestFob;

closeDialog 0;

_fob setVariable ["YMF_fobName",_newName,true];
(_fob getVariable "YMF_fobVariable") setMarkerText _newName;