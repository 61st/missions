#include "..\script_component.hpp";
/*
	File: fn_buildingChanged.sqf
	Author: Dom
	Description: Called on a building changing model
*/
params ["_previousObject","_newObject","_isRuin"];

private _class = typeOf _previousObject;
if (_class isEqualTo "" || {_previousObject isKindOf "Wall" || {_previousObject isKindOf "PowerLines_Wires_base_F" || {_previousObject isKindOf "Land_PowerLine_03_pole_end_F"}}}) exitWith {};

if ([_previousObject] call FUNC(isNearFOB)) then {
	private _helipads = getArray(missionConfigFile >> "Logi_Setup" >> "helipads");
	if (_class in _helipads) then {
		private _maxHeliCount = missionNamespace getVariable ["YMF_maxHelicopterCount",0];
		missionNamespace setVariable ["YMF_maxHelicopterCount",_maxHeliCount - 1,true];
	} else {
		private _hangars = getArray(missionConfigFile >> "Logi_Setup" >> "hangars");
		if (_class in _hangars) then {
			private _maxPlaneCount = missionNamespace getVariable ["YMF_maxPlaneCount",0];
			missionNamespace setVariable ["YMF_maxPlaneCount",_maxPlaneCount - 1,true];
		};
	};
};

private _nearestSector = [_previousObject,["town","city","factory"]] call YMF_fnc_getNearestSector;
private _radius = (getArray(missionConfigFile >> "Settings" >> "sectorRadius")) select 2; //selecting biggest - city

if (_nearestSector distance2D _previousObject < _radius) then {
	private _nearPlayers = playableUnits findIf {_x distance _previousObject < (_radius * 2)};
	if (_nearPlayers isNotEqualTo -1) then {
		private _civRepLoss = getNumber(missionConfigFile >> "Settings" >> "damagedBuildingRepLoss");
		if (_isRuin) then {
			["A civilian building was destroyed."] remoteExecCall ["YMF_fnc_notify",0];
			[_nearestSector,(_civRepLoss * 2)] call YMF_fnc_updateCivRep;

			private _oldDestroyedCount = _nearestSector getVariable ["YMF_destroyedBuildingCount",0];
			_nearestSector setVariable ["YMF_destroyedBuildingCount",(_oldDestroyedCount + 1),true];
		} else {
			["A civilian building was damaged."] remoteExecCall ["YMF_fnc_notify",0];
			[_nearestSector,_civRepLoss] call YMF_fnc_updateCivRep;
		};
	};
};
