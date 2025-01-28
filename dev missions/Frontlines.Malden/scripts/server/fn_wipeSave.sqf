/*
	File: fn_wipeSave.sqf
	Author: Dom
	Description: Wipes the current progress on the game and prevents future saving
*/
profileNamespace setVariable ["YMF_serverSave",nil];
missionNamespace setVariable ["YMF_stopServerSave",true];
saveProfileNamespace;

["Server wiped and disabled saving."] remoteExecCall ["YMF_fnc_notify",remoteExecutedOwner];