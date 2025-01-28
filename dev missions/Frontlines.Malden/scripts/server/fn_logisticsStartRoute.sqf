/*
	File: fn_logisticsStartRoute.sqf
	Author: Dom
	Description: Begins a logistics route
*/
params ["_from","_to","_truckCount","_startTransitTime","_endTransitTime","_carrying","_fuelRequired","_fromIndex"];

YMF_logistics params ["_availableTrucks","_trucksInUse","_currentRoutes"];
private _isFromFOB = isNil {_from getVariable "YMF_factoryResources"};
private _nearFOBRes = [_from] call YMF_fnc_getCurrentResources;
private _fuelAvailable = _nearFOBRes select 1;
private _fuelTotalRequired = if (_isFromFOB) then {_fuelRequired + (_carrying select 1)} else {_fuelRequired};
if (_truckCount > _availableTrucks) exitWith {["Not enough trucks."] remoteExecCall ["YMF_fnc_notify",remoteExecutedOwner]};
if (_fuelTotalRequired > _fuelAvailable) exitWith {["Not enough fuel."] remoteExecCall ["YMF_fnc_notify",remoteExecutedOwner]};

if (_isFromFOB) then {
	[_from,_carrying,false] call YMF_fnc_adjustResources;
} else {
	private _factoryResources = _from getVariable "YMF_factoryResources";
	_factoryResources = _factoryResources vectorDiff _carrying;
	_from setVariable ["YMF_factoryResources",_factoryResources,true];
};
[_from,[0,_fuelRequired,0],false] call YMF_fnc_adjustResources;

private _newRoute = [_from,_to,_truckCount,_startTransitTime,_endTransitTime,_carrying];
_currentRoutes pushBack _newRoute;
YMF_logistics set [0,(_availableTrucks - _truckCount)];
YMF_logistics set [1,(_trucksInUse + _truckCount)];
[YMF_logistics,"startRoute",_newRoute,_fromIndex] remoteExecCall ["YMF_fnc_updateLogistics",-2,"YMF_Logi_JIP"];

if ((missionNamespace getVariable ["YMF_logisticsHandle",-1]) isEqualTo -1) then {
	YMF_logisticsHandle = [YMF_fnc_logisticsLoop,10] call CBA_fnc_addPerFrameHandler;
};