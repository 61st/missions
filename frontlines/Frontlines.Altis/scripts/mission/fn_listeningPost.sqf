#include "..\script_component.hpp";
/*
	File: fn_listeningPost.sqf
	Author: Dom
	Description: Secondary objective to setup a listening post to obtain intel
*/
params [
	["_stage","init",[""]],
	["_data",objNull,[objNull,[]]]
];

switch _stage do {
	case "init": {
		missionNamespace setVariable ["YMF_secondaryActive","listeningPost",true];

		private _targetSector = selectRandom ([true] call YMF_fnc_getFrontlineSectors);
		private _marker = ["listeningPost",_targetSector,false,"ColorYellow","mil_objective",1.5,"Listening Post Setup Location"] call YMF_fnc_createMarker;
		["The location for the listening post is marked.","generalNotif","Listening Post"] remoteExecCall ["YMF_fnc_notify",0];
	};

	case "cancel": {
		deleteMarker "listeningPost";
		["Mission cancelled.","failedNotif","Listening Post"] remoteExecCall ["YMF_fnc_notify",0];
	};

	case "initPost": {
		if (owner _data isNotEqualTo 2) then {
			_data setOwner 2;
		};

		[_data,2] call ace_cargo_fnc_setSize;
		[_data,true,[0,1,1]] remoteExecCall ["ace_dragging_fnc_setCarryable",0,_data];

		_data addEventHandler ["Deleted",{["postKilled",_this] call YMF_fnc_listeningPost}];

		[
			{
				params ["_post","_targetPos"];
				!alive _post || {isNil "YMF_secondaryActive" || {isNull attachedTo _post && {_post distance2D _targetPos < 75}}}
			},
			{
				params ["_post"];

				if (isNil "YMF_secondaryActive") then {
					deleteVehicle _post;
				};

				if (alive _post) then {
					["The listening post is now active.","generalNotif","Listening Post"] remoteExecCall ["YMF_fnc_notify",0];
					["startPost",_post] call YMF_fnc_listeningPost;
				};
			},
			[_data,markerPos "listeningPost"]
		] call CBA_fnc_waitUntilAndExecute;
	};

	case "postKilled": {
		missionNamespace setVariable ["YMF_secondaryActive",nil,true];
		deleteMarker "listeningPost";
		["The listening post was destroyed.","failedNotif","Listening Post"] remoteExecCall ["YMF_fnc_notify",0];
	};

	case "startPost": {
		private _counter = 1;
		missionNamespace setVariable ["YMF_secondaryActive","listeningPostNoCancel",true];
		[
			{
				params ["_args","_handle"];
				_args params ["_post","_count"];

				if !(alive _post) exitWith {
					[_handle] call CBA_fnc_removePerFrameHandler;
				};

				if (_count mod 1800 isEqualTo 0) exitWith {
					[_handle] call CBA_fnc_removePerFrameHandler;
					_post removeAllEventHandlers "Deleted";
					deleteVehicle _post;
					deleteMarker "listeningPost";
					missionNamespace setVariable ["YMF_secondaryActive",nil,true];
					["The listening post mission finished.","successNotif","Listening Post"] remoteExecCall ["YMF_fnc_notify",0];
					["The full 60 intel was obtained."] remoteExecCall ["YMF_fnc_notify",0];
				};

				private _nearPlayers = playableUnits findIf {_x distance _post < 50};
				private _enemyCount = {side _x isEqualTo east} count (_post nearEntities ["CAManBase",30]);
				if (_nearPlayers isEqualTo -1 && {_enemyCount > 0}) exitWith {
					[5] call YMF_fnc_updateThreat;
					private _pos = getPosATL _post;
					deleteVehicle _post;

					[
						{
							params ["_pos"];
							[_pos] call YMF_fnc_areaIsClear
						},
						YMF_fnc_clearArea,
						[_pos,true]
					] call CBA_fnc_waitUntilAndExecute;
				};

				if (_count mod 60 isEqualTo 0) then {
					[2] call YMF_fnc_updateIntel;
				};

				_args set [1,(_count + 1)];
			},
			1,
			[_data,_counter]
		] call CBA_fnc_addPerFrameHandler;

		private _counterAttackWaves = ceil(YMF_threatLevel / 25);
		private _nearestSector = [_data,["tower","military","city"],true] call YMF_fnc_getNearestSector;
		private _counterAttackTime = round (150 + random 150);
		for "_i" from 1 to _counterAttackWaves do {
			[YMF_fnc_spawnAssault,[_data,_nearestSector],(_counterAttackTime * _i)] call CBA_fnc_waitAndExecute;
		};
	};
};