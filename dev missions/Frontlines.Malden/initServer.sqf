/*
	File: initServer.sqf
	Author: Dom
	Requires: Start the server up
*/
YMF_isLambsEnabled = isClass(configFile >> "CfgPatches" >> "lambs_main");
YMF_isZenEnabled = isClass(configFile >> "CfgPatches" >> "ZEN_main");
YMF_isTFAREnabled = isClass (configFile >> "CfgPatches" >> "task_force_radio");
publicVariable "YMF_isTFAREnabled";
YMF_isACREEnabled = isClass (configFile >> "CfgPatches" >> "acre_main");
publicVariable "YMF_isACREEnabled";

YMF_dynamicGroups = getArray(missionConfigFile >> "Dynamic_Groups" >> "group_setup");
if (YMF_isTFAREnabled || {YMF_isACREEnabled}) then {
	YMF_swRadioFrequencies = [[],[]];
	YMF_lrRadioFrequencies = [[],[]];
};
{
	_x params ["_groupName","_roles","","_swFreq","_lrFreq"];

	if (YMF_isTFAREnabled || {YMF_isACREEnabled}) then {
		YMF_swRadioFrequencies params ["_swFreqs","_swGroups"];
		private _freqIndex = _swFreqs find _swFreq;
		if (_freqIndex isNotEqualTo -1) then {
			(_swGroups select _freqIndex) pushBack _groupName;
		} else {
			_swFreqs pushBack _swFreq;
			_swGroups pushBack [_groupName];
		};

		YMF_lrRadioFrequencies params ["_lrFreqs","_lrGroups"];
		private _freqIndex = _lrFreqs find _lrFreq;
		if (_freqIndex isNotEqualTo -1) then {
			(_lrGroups select _freqIndex) pushBack _groupName;
		} else {
			_lrFreqs pushBack _lrFreq;
			_lrGroups pushBack [_groupName];
		};
	};
	_x deleteAt 4;
	_x deleteAt 3;

	private _roleCount = count _roles;
	private _playerArray = [];
	for "_i" from 1 to _roleCount do {
		_playerArray pushBack objNull;
	};

	_x pushBack grpNull;
	_x pushBack _playerArray;
} forEach YMF_dynamicGroups;
if (YMF_isTFAREnabled || {YMF_isACREEnabled}) then {
	publicVariable "YMF_swRadioFrequencies";
	publicVariable "YMF_lrRadioFrequencies";
};

[YMF_dynamicGroups] remoteExecCall ["YMF_fnc_updateGroups",-2,"YMF_DG_JIP"];

addMissionEventHandler ["HandleDisconnect",YMF_fnc_handleDisconnect];
addMissionEventHandler ["BuildingChanged",YMF_fnc_buildingChanged];
addMissionEventHandler ["EntityKilled",YMF_fnc_entityKilled];
addMissionEventHandler ["PlayerConnected",YMF_fnc_playerConnected];

YMF_bluforClassesToSave = [getText(missionConfigFile >> "Logi_Setup" >> "fobBuilding")];
{
	_x params ["","_options"];
	{
		_x params ["_class"];
		if (_class isEqualType []) then {
			_class = _class select 0;
		};
		YMF_bluforClassesToSave pushBackUnique _class;
	} forEach _options;
} forEach getArray(missionConfigFile >> "Logi_Setup" >> "bluforBuyables");

{
	YMF_bluforClassesToSave pushbackUnique (_x select 1);
} forEach getArray(missionConfigFile >> "Logi_Setup" >> "supplyCrateTypes");
publicVariable "YMF_bluforClassesToSave";

[] call YMF_fnc_addClassEventHandlers;

[] call YMF_fnc_setupLocations;
[] call YMF_fnc_createOrLoadSave;

missionNamespace setVariable ["YMF_serverReady",true,true];