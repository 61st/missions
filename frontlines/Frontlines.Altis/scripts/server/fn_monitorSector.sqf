#include "..\script_component.hpp";
/*
	File: fn_monitorSector.sqf
	Author: Dom
	Description: Sets up a sector and begins monitoring it
*/
params ["_args","_handle"];
_args params ["_sectorObj","_radius","_squads","_objectsToDelete","_timeoutCount"];

if (([_sectorObj,_radius] call YMF_fnc_getCaptureRatio) > getNumber(missionConfigFile >> "Settings" >> "sectorCaptureRatio")) then {
	[_handle] call CBA_fnc_removePerFrameHandler;
	_sectorObj setVariable ["YMF_sectorOwned",true,true];
	_sectorObj setVariable ["YMF_sectorStrength",0,true];

	private _sectorVar = _sectorObj getVariable "YMF_sectorVariable";
	_sectorVar setMarkerColor "ColorBLUFOR";
	private _sectorName = _sectorObj getVariable "YMF_sectorName";
	[format["%1 has been successfully captured.",_sectorName],"successNotif","Sector Secured"] remoteExecCall ["YMF_fnc_notify",0];
	private _sectorType = _sectorObj getVariable "YMF_sectorType";

	{
		{
			if (alive _x && {isNull objectParent _x && {50 > (random 100) && {_x distance2D _sectorObj < _radius}}}) then {
				[_x] call YMF_fnc_surrenderUnit;
			};
		} forEach units _x;
	} forEach _squads;

	private _threatIncreaseArray = getArray(missionConfigFile >> "Settings" >> "sectorThreatIncreaseRate");
	private _sectorIndex = [_sectorType] call YMF_fnc_getSectorTypeIndex;
	[_threatIncreaseArray select _sectorIndex] call YMF_fnc_updateThreat;
	missionNamespace setVariable ["YMF_canGatherIntel",true,true];

	if (_sectorType isEqualTo "tower") then {
		missionNamespace setVariable [format["YMF_%1CapTime",_sectorVar],CBA_missionTime];
	} else {
		if (_sectorType in ["town","city","factory"]) then {
			[] call YMF_fnc_updateCivRep;
			if (_sectorType isEqualTo "factory") then {
				_sectorObj setVariable ["YMF_factoryType",-1,true];
				_sectorObj setVariable ["YMF_factoryResources",[0,0,0],true];
			};
		};
	};

	private _endedIndex = YMF_allSectors findIf {!(_x getVariable ["YMF_sectorOwned",false])};
	if (_endedIndex isEqualTo -1) then {
		[YMF_playtime,YMF_bluforDeaths,YMF_opforDeaths,YMF_guerillaDeaths,YMF_civilianDeaths] remoteExec ["YMF_fnc_endGame",0];
		[] call YMF_fnc_wipeSave;
	} else {
		[
			YMF_fnc_areaIsClear,
			{
				params ["_obj"];
				[_obj,true] call YMF_fnc_clearArea;
				YMF_activeSectors deleteAt (YMF_activeSectors find _obj);
				publicVariable "YMF_activeSectors";
			},
			[_sectorObj,_radius * 1.5]
		] call CBA_fnc_waitUntilAndExecute;
	};
} else {
	if ([_sectorObj,_radius * 3] call YMF_fnc_areaIsClear) then {
		_timeoutCount = _timeoutCount + 1;

		if (_timeoutCount > 600) then {
			[_handle] call CBA_fnc_removePerFrameHandler;

			private _endUnitCount = 0;
			{
				_endUnitCount = _endUnitCount + (count units _x);
			} forEach _squads;
			private _sectorStrength = (_endUnitCount / (_sectorObj getVariable ["YMF_sectorUnitCount",10])) max 0.25;
			_sectorObj setVariable ["YMF_sectorUnitCount",nil];
			_sectorObj setVariable ["YMF_sectorStrength",_sectorStrength,true];

			[_sectorObj,_squads,_objectsToDelete] call YMF_fnc_clearArea;

			YMF_activeSectors deleteAt (YMF_activeSectors find _sectorObj);
			publicVariable "YMF_activeSectors";
		} else {
			_args set [4,_timeoutCount];
		};
	} else {
		if (_timeoutCount isNotEqualTo 0) then {
			_args set [4,0];
		};
	};
};