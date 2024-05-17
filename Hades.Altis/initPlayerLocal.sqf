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

_ShortRange = ["50"];
_shortscrib = ["Detachmnet"];
player setVariable ["TFAR_freq_sr", _ShortRange, true];
player setVariable ["TFAR_scrib_sr", _shortscrib, true];
[true, _shortscrib] remoteExec  ["Rev_TFAR_fnc_setDefaultScribbles",player];


if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

/* kill the rabbits ------------------------------------------------------------------------------------------------- */
// Fixing warning spam from ambientLife. Also, if I hear "Look a bunny!" one more bloody time...
sleep 0.2;
[{time > 0}, {enableEnvironment [false, true];}] call CBA_fnc_waitUntilAndExecute;


/* Shut the hell up  - Mute Orders and Reports ---------------------------------------------------------------------- */
{_x setSpeaker "NoVoice"} forEach playableUnits;
{_x setVariable ["BIS_noCoreConversations", true]} forEach allUnits; 
0 fadeRadio 0;
enableSentences false;

/* Initialize BIS group menu ---------------------------------------------------------------------------------------- */
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

/* Disable CUP street lights based on lighting levels (bad performance script) -------------------------------------- */
CUP_stopLampCheck = true;

// Safety first
[Player, currentWeapon Player, true] call ace_safemode_fnc_setWeaponSafety;


/* optionals ------------------------------------------------------------------------------------------------------ */
call compile preprocessFileLineNumbers "scripts\opt\insideEffects.sqf";
[] call compile preprocessFileLineNumbers "scripts\opt\ambientCombat.sqf";

/* BFT -------------------------------------------------------------------------------------------------------------- */
// [] execVM "scripts\opt\QS_icons.sqf";

/* groups ----------------------------------------------------------------------------------------------------------- */
player addEventHandler ["Respawn",FUNC(onRespawn)];