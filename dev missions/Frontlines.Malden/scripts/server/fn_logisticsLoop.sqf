/*
	File: fn_logisticsLoop.sqf
	Author: Dom
	Description: Handles all logistic routes
*/
params ["_args","_handle"];

YMF_logistics params ["_availableTrucks","_trucksInUse","_currentRoutes"];
if (_currentRoutes isEqualTo []) exitWith {
	[_handle] call CBA_fnc_removePerFrameHandler;
	YMF_logisticsHandle = -1;
};

{
	_x params ["_from","_to","_truckCount","_startTransitTime","_endTransitTime","_carrying"];
	if (_endTransitTime < CBA_missionTime) then {
		_availableTrucks = _availableTrucks + _truckCount;
		_trucksInUse = _trucksInUse - _truckCount;
		YMF_logistics set [0,_availableTrucks];
		YMF_logistics set [1,_trucksInUse];
		_currentRoutes deleteAt _forEachIndex;

		if (isNil {_to getVariable "YMF_factoryResources"}) then {
			[_to,_carrying,true] call YMF_fnc_adjustResources;
		} else {
			private _factoryResources = _to getVariable "YMF_factoryResources";
			_factoryResources = _factoryResources vectorAdd _carrying;
			_to setVariable ["YMF_factoryResources",_factoryResources,true];
		};

		[YMF_logistics,"endRoute"] remoteExecCall ["YMF_fnc_updateLogistics",-2,"YMF_Logi_JIP"];
	};
} forEachReversed _currentRoutes;