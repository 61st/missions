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

// Prevent Targets being destroyed
{_x allowDamage false;} forEach (allMissionObjects "TargetBase");

// Alive initialization
[] execVM "alive\CustomFactions.sqf";
[] execVM "alive\Tasks.sqf";