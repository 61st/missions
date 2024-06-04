 /* ------------------------------------------------------------------------------------------------------------------ */
 /*                                                D O   N O T   E D I T  !                                            */
 /* ------------------------------------------------------------------------------------------------------------------ */
SIXONE_dynamicGroups = getArray(missionConfigFile >> "Dynamic_Groups" >> "group_setup");
{
	_x params ["","_roles"];
	_x pushBack grpNull;

	private _roleCount = count _roles;
	private _playerArray = [];
	for "_i" from 1 to _roleCount do {
		_playerArray pushBack objNull;
	};
	_x pushBack _playerArray;
} forEach SIXONE_dynamicGroups;

[SIXONE_dynamicGroups] remoteExecCall ["SIXONE_fnc_updateGroups",-2,"SIXONE_DG_JIP"];

addMissionEventHandler ["HandleDisconnect",SIXONE_fnc_handleDisconnect];