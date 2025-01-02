#include "scripts\script_component.hpp"

 /* ------------------------------------------------------------------------------------------------------------------ */
 /*                                                D O   N O T   E D I T  !                                            */
 /* ------------------------------------------------------------------------------------------------------------------ */

waitUntil {missionNamespace getVariable ["YMF_serverReady",false] && {!isNull player && {!isNull (findDisplay 46)}}};

addMissionEventHandler ["Map",YMF_fnc_checkMap];

[missionNamespace, "arsenalOpened", {
    player setVariable ["PlayerReady",false,true];
}] remoteExecCall ["BIS_fnc_addScriptedEventHandler", [0, -2] select isDedicated];
[missionNamespace, "arsenalClosed", {
    player setVariable ["PlayerReady",true,true];
}] remoteExecCall ["BIS_fnc_addScriptedEventHandler", [0, -2] select isDedicated];
player setVariable ["PlayerReady",true,true];


// if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

/* Shut the hell up  - Mute Orders and Reports ---------------------------------------------------------------------- */
{_x setSpeaker "NoVoice"} forEach playableUnits;
{_x setVariable ["BIS_noCoreConversations", true]} forEach allUnits; 
0 fadeRadio 0;
enableSentences false;

/* Disable CUP street lights based on lighting levels (bad performance script) -------------------------------------- */
CUP_stopLampCheck = true;

/* view other actions ----------------------------------------------------------------------------------------------- */
[{alive player}, {
    call FUNC(playerActions);
}, [], -1] call CBA_fnc_waitUntilAndExecute;

//rank stuff
[player, 'BIS'] call EFUNC(player,setRank);
call EFUNC(player,setRankpatch);

//Name Stuff
call LXIM_w28fixes_fnc_player_set_name;

/* groups ----------------------------------------------------------------------------------------------------------- */
player addEventHandler ["Respawn",FUNC(onRespawn)];

["ace_treatmentSucceded",{
	params ["_caller","_target","_selectionName","_className","_itemUser","_usedItem"];

	private _medicalItems = [
		"ACM_PressureBandage","ACM_EmergencyTraumaDressing","ACM_ElasticWrap","ACE_tourniquet",
		"ACE_splint","ACM_SAMSplint","ACE_surgicalKit","ACE_suture",
		"ACM_BloodBag_ON_250","ACM_BloodBag_ON_500","ACM_BloodBag_ON_1000",
		"ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_plasmaIV",
		"ACE_salineIV_250","ACE_salineIV_500","ACE_salineIV"
	];

	if (([typeOf _target] call YMF_fnc_getConfigSide) isEqualTo civilian && {_usedItem in _medicalItems}) then {
		private _nearestSector = [_target,["town","city","factory"]] call YMF_fnc_getNearestSector;
		[_nearestSector,getNumber (missionConfigFile >> "Settings" >> "healedCivRepGain")] remoteExecCall ["YMF_fnc_updateCivRep",2];
		[format["%1 thanks you for the treatment.",name _target]] call YMF_fnc_notify;
	};
}] call CBA_fnc_addEventHandler;

[] call YMF_fnc_addAceActions;

deleteMarkerLocal "manualFobMarker";
658 cutRsc ["YMF_HUD","PLAIN",-1];
YMF_uiHandle = [YMF_fnc_updateUI,YMF_uiUpdateInterval,[true,""]] call CBA_fnc_addPerFrameHandler;

[] call YMF_fnc_initGroupMenu;
[] call YMF_fnc_initDeployMenu;

/* welcome ---------------------------------------------------------------------------------------------------------- */
createDialog ["RscDisplayWelcome",true];
private _display = findDisplay 999999;
private _text = _display displayCtrl 1100;
#include "config\config_welcome.hpp"
_text ctrlSetStructuredText (parseText _message);
(ctrlPosition _text) params ["_xPos","_yPos","_width"];
private _height = ctrlTextHeight _text;
_text ctrlSetPosition [_xPos,_yPos,_width,_height];
_text ctrlCommit 0;
