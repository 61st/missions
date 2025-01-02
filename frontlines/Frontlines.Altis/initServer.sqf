 /* ------------------------------------------------------------------------------------------------------------------ */
 /*                                                D O   N O T   E D I T  !                                            */
 /* ------------------------------------------------------------------------------------------------------------------ */
YMF_dynamicGroups = getArray(missionConfigFile >> "Dynamic_Groups" >> "group_setup"); 
{
    _x params ["","_roles"];
    _x pushBack grpNull;

    private _roleCount = count _roles;
    private _playerArray = [];
    for "_i" from 1 to _roleCount do {
        _playerArray pushBack objNull;
    };
    _x pushBack _playerArray;
} forEach YMF_dynamicGroups;

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

missionNamespace setVariable ["YMF_activeSectors",[],true];

private _scanRadius = getNumber(missionConfigFile >> "Settings" >> "sectorActivationRange");
private _scanHeight = getNumber(missionConfigFile >> "Settings" >> "sectorActivationHeight");
[YMF_fnc_mainSectorLoop,2,[_scanRadius,_scanHeight]] call CBA_fnc_addPerFrameHandler;

private _factoryProductionInterval = getNumber(missionConfigFile >> "Settings" >> "factoryProductionInterval");
private _factories = [["factory"]] call YMF_fnc_getSectorsByType;
[YMF_fnc_factoryLoop,_factoryProductionInterval,_factories] call CBA_fnc_addPerFrameHandler;

[YMF_fnc_startSideMission,"",getNumber(missionConfigFile >> "Settings" >> "sideMissionTimer")] call CBA_fnc_waitAndExecute;

private _ambientLandCount = getNumber(missionConfigFile >> "Settings" >> "maxAmbientCivLand");
if (_ambientLandCount isNotEqualTo 0) then {
	YMF_ambientCivs = [];
	[_ambientLandCount,true] call YMF_fnc_spawnAmbientCiv;
};

private _ambientAirCount = getNumber(missionConfigFile >> "Settings" >> "maxAmbientCivAir");
if (_ambientAirCount isNotEqualTo 0 && {YMF_airportLocations isNotEqualTo []}) then {
	YMF_ambientCivAir = [];
	[_ambientAirCount,true] call YMF_fnc_spawnAmbientCivAir;
};

YMF_ambientOpfor = [];
YMF_ambientOpforHandle = -1;
[] call YMF_fnc_spawnAmbientOpfor;

private _cooldowns = [];
private _supportActions = getArray(missionConfigFile >> "Guerilla_Setup" >> "supports");
for "_i" from 1 to (count _supportActions) do {
	_cooldowns pushBack 0;
};
missionNamespace setVariable ["YMF_supportCooldowns",_cooldowns,true];

[YMF_fnc_saveGame,getNumber(missionConfigFile >> "Settings" >> "autoSaveTimer")] call CBA_fnc_addPerFrameHandler;

missionNamespace setVariable ["YMF_serverReady",true,true];

// Prevent Targets being destroyed
{_x allowDamage false;} forEach (allMissionObjects "TargetBase");