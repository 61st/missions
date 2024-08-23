#include "scripts\script_component.hpp"

 /* ------------------------------------------------------------------------------------------------------------------ */
 /*                                                D O   N O T   E D I T  !                                            */
 /* ------------------------------------------------------------------------------------------------------------------ */

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
