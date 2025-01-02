#include "..\script_component.hpp";
/*
	File: fn_initNamingMenu.sqf
	Author: Dom
	Description: Opens the FOB naming menu and populates it with its name, or a default if needed
*/
params [
	["_onCreation",false,[true]]
];

private "_fobName";
if (_onCreation) then {
	private _defaultNames = getArray(missionConfigFile >> "Settings" >> "defaultFOBNames");
	_fobName = _defaultNames select (count YMF_allFOBs - 1);
} else {
	private _fob = [player] call YMF_fnc_getNearestFob;
	_fobName = _fob getVariable "YMF_fobName";
};

private _display = createDialog ["YMF_nameMenu",true];
(_display displayCtrl 1400) ctrlSetText _fobName;