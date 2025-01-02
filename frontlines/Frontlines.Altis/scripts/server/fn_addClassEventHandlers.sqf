#include "..\script_component.hpp";
/*
	File: fn_addClassEventHandlers.sqf
	Author: Dom
	Description: Master file containing all class eventhandlers - these can not be used on any classes that inherit from Static
*/

["AllVehicles","initpost",{
	params ["_vehicle"];
	[_vehicle] call YMF_fnc_clearCargo;

	{
		_x addCuratorEditableObjects [_this,true];
	} forEach allCurators;
},true,[],true] call CBA_fnc_addClassEventHandler;

["Helicopter","initpost",{
	params ["_helicopter"];
	if (getNumber (configOf _helicopter >> "slingLoadMaxCargoMass") > 0) then {
		_helicopter addEventHandler ["RopeAttach",YMF_fnc_ropeAttach];
	};

	if (typeOf _helicopter in YMF_bluforClassesToSave) then {
		private _curHelis = missionNamespace getVariable ["YMF_currentHelicopters",[]];
		_curHelis pushBack _helicopter;
		missionNamespace setVariable ["YMF_currentHelicopters",_curHelis,true];
	};
},true] call CBA_fnc_addClassEventHandler;

["Plane","initpost",{
	params ["_plane"];

	if (typeOf _plane in YMF_bluforClassesToSave) then {
		private _curPlanes = missionNamespace getVariable ["YMF_currentPlanes",[]];
		_curPlanes pushBack _plane;
		missionNamespace setVariable ["YMF_currentPlanes",_curPlanes,true];
	};
},true] call CBA_fnc_addClassEventHandler;

private _mobileRespawns = getArray(missionConfigFile >> "Logi_Setup" >> "mobileRespawns");
{
	[_x,"initpost",{
		params ["_object"];
		private _mobRespawns = missionNamespace getVariable ["YMF_mobileRespawns",[]];
		_mobRespawns pushBack _object;
		missionNamespace setVariable ["YMF_mobileRespawns",_mobRespawns,true];
	},false] call CBA_fnc_addClassEventHandler;
} forEach _mobileRespawns;

private _crates = getArray(missionConfigFile >> "Logi_Setup" >> "bluforCrates");
{
	[_x,"initpost",{
		params ["_crate"];
		_crate setMass 100;
		[_crate] call YMF_fnc_clearCargo;
		[_crate,true,[0,1.5,0]] remoteExecCall ["ace_dragging_fnc_setCarryable",0,_crate];
	},false] call CBA_fnc_addClassEventHandler;
} forEach _crates;


["C_IDAP_Truck_02_water_F","initpost",{
	params ["_truck"];
	if (owner _truck isNotEqualTo 2) then {
		["addTruck",_truck] call YMF_fnc_humanitarianRelief;
	};
},false] call CBA_fnc_addClassEventHandler;