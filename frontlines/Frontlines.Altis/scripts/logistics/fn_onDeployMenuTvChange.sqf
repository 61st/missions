#include "..\script_component.hpp";
/*
	File: fn_onDeployMenuTvChange.sqf
	Author: Dom
	Description: Updates the deploy menu
*/
params [
	["_control",controlNull,[controlNull]],
	["_selectionPath",[],[[]]]
];
private _display = findDisplay 9640;
private _button = _display displayCtrl 2400;
private _mapControl = _display displayCtrl 1200;

if (count _selectionPath isEqualTo 1) exitWith {
	_button ctrlEnable false;
};

private _object = objectFromNetId (_control tvData _selectionPath);
private _timeToMove = ((_object distance YMF_spawnCamera) / 2000) max 2;
_mapControl ctrlMapAnimAdd [_timeToMove,0.3,_object];
ctrlMapAnimCommit _mapControl;

YMF_spawnCamera camSetTarget _object;
YMF_spawnCamera camSetRelPos [0,180,250];
YMF_spawnCamera camCommit _timeToMove;

if ((_selectionPath select 0) isEqualTo 1) exitWith {
	_button ctrlEnable false;
	if !(alive _object) exitWith {["Vehicle has been destroyed."] call YMF_fnc_notify};
	if (speed _object > 1) exitWith {["Vehicle is currently moving."] call YMF_fnc_notify};

	private _nextUseTime = missionNamespace getVariable ["YMF_nextMobileRespawnAvailable",0];
	if (_nextUseTime > CBA_missionTime) exitWith {
		[format ["You need to wait %1 seconds before using a mobile respawn again.",ceil (_nextUseTime - CBA_missionTime)]] call YMF_fnc_notify;
	};

	private _radius = getNumber(missionConfigFile >> "Settings" >> "mobileRespawnEnemyBlockRadius");
	private _units = _vehicle nearEntities ["CAManBase",_radius];
	private _opforIndex = _units findIf {side _x isEqualTo east};
	if (_opforIndex isNotEqualTo -1) exitWith {["The enemy are too close to use this respawn."] call YMF_fnc_notify};
	_button ctrlEnable true;
};

_button ctrlEnable true;