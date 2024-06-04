 /* ------------------------------------------------------------------------------------------------------------------ */
 /*                                                D O   N O T   E D I T  !                                            */
 /* ------------------------------------------------------------------------------------------------------------------ */
LXIF_dynamicGroups = getArray(missionConfigFile >> "Dynamic_Groups" >> "group_setup");
{
	_x params ["","_roles"];
	_x pushBack grpNull;

	private _roleCount = count _roles;
	private _playerArray = [];
	for "_i" from 1 to _roleCount do {
		_playerArray pushBack objNull;
	};
	_x pushBack _playerArray;
} forEach LXIF_dynamicGroups;

[LXIF_dynamicGroups] remoteExecCall ["LXIF_fnc_updateGroups",-2,"LXIF_DG_JIP"];

addMissionEventHandler ["HandleDisconnect",LXIF_fnc_handleDisconnect];

// Prevent Targets being destroyed
{_x allowDamage false;} forEach (allMissionObjects "TargetBase");