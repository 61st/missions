/*
	File: fn_destroyJammes.sqf
	Author: Dom
	Description: Creates and monitors mission to destroy a radio jammer
*/

private _halfWorldSize = worldSize / 2;
private _spawnPos = [[_halfWorldSize,_halfWorldSize],0,-1,15,0,0.4,0] call BIS_fnc_findSafePos;

private _taskAndMarkerVar = "destroyJammer";
private _marker = createMarker [_taskAndMarkerVar,_spawnPos];
_marker setMarkerColor "ColorOPFOR";
_marker setMarkerShape "ELLIPSE";
_marker setMarkerBrush "FDiagonal";
_marker setMarkerSize [300,300];

[true,_taskAndMarkerVar,["The enemy has setup a jammer which is interfering with our communications, destroy it to restore them.","Destroy jammer",""],_spawnPos,"CREATED",1,true,"DESTROY",true] call BIS_fnc_taskCreate;
DT_missionDetails pushBack _taskAndMarkerVar;
publicVariable "DT_missionDetails";

private _jammer = createVehicle ["Land_MobileRadar_01_radar_F",_spawnPos];
_jammer setDir (_jammer getDir arsenal_1);
if (DT_isTFAREnabled) then {
	missionNamespace setVariable ["TFAR_globalRadioRangeCoef",0.1,true];
} else {
	if (DT_isACREEnabled) then {
		[{
			private _coreSignal = _this call acre_sys_signal_fnc_getSignalCore;
			_coreSignal params ["_Px","_maxSignal"];
			_Px = _Px * 0.1;

			[_Px,_maxSignal]
		}] remoteExecCall ["acre_api_fnc_setCustomSignalFunc",0];
	};
};

private _squads = [_spawnPos] call DT_fnc_createPatrols;
_squads pushBack ([_spawnPos,50] call DT_fnc_createStatic);
[_spawnPos,500] call DT_fnc_createMines;

[
	{
		params ["_jammer"];
		!alive _jammer
	},
	{
		params ["","_missionVar","_pos","_squads"];

		[_missionVar,true] call DT_fnc_endMission;
		if (DT_isTFAREnabled) then {
			missionNamespace setVariable ["TFAR_globalRadioRangeCoef",1,true];
		} else {
			if (DT_isACREEnabled) then {
				[{}] remoteExecCall ["acre_api_fnc_setCustomSignalFunc",0];
			};
		};
		["destroyJammer"] call DT_fnc_startSideMission;

		[
			{
				params ["_pos"];
				[_pos] call DT_fnc_areaIsClear
			},
			DT_fnc_clearArea,
			[_pos,_squads]
		] call CBA_fnc_waitUntilAndExecute;
	},
	[_jammer,_taskAndMarkerVar,_spawnPos,_squads]
] call CBA_fnc_waitUntilAndExecute;