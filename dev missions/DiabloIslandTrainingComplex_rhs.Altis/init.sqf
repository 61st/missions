#include "scripts\script_component.hpp"
/* ------------------------------------------------------------------------------------------------------------------ */
/*                                                D O   N O T   E D I T  !                                            */
/* ------------------------------------------------------------------------------------------------------------------ */
/*                    This is the mission init.sqf this is run witout exceptions on mission start.                    */
/*       Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.      */
/*        Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order        */
/* ------------------------------------------------------------------------------------------------------------------ */

if (!isMultiplayer) then {SHOW_CHAT_WARNING("", "Mission is running on singelplayer enviroment!");};
#ifdef DEBUG_MODE
    SHOW_INFO("init", "Initializing...");
    SHOW_CHAT_INFO_1("init", "YMF Version %1 is running.", VERSION);
    SHOW_CHAT_WARNING("init", "Debug mode is currently active.");
    logEntities;
#endif

enableSaving [false, false];

// To Turns off or on ambient Wildelife, Ambient Sounds and wind sound strenght.
enableEnvironment [false, true, 1];

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;

minviewdistance = 500;
maxviewdistance = 10000;

// if(isServer) then {
//     {
//         _x setObjectTextureGlobal    [0, "scripts\data\target.paa"];
//     } foreach allMissionObjects "TargetP_Inf_F";
//     {
//         _x setObjectTextureGlobal    [0, "scripts\data\target.paa"];
//     } foreach allMissionObjects "TargetP_Inf3_Acc2_NoPop_F";
// };

// /* Start times selected randomly throughout the daylight hours between sunrise and one hour before sunset ----------- */
// if (isServer) then {
// waitUntil { time > 0 }; // Allow time subsystem to initialize so that missionStart is correct
// private _date = missionStart select [0, 5];

// private _times = [_date] call BIS_fnc_sunriseSunsetTime;
// private _startTime = (_times select 0) + (random ((_times select 1) - (_times select 0) - 1));
// private _startHour = floor _startTime;
// private _startMinute = (_startTime - _startHour) * 60;

// _date set [3, _startHour];
// _date set [4, _startMinute];

// setDate _date;
// };

/* ------------------------------------------------------------------------------------------------------------------ */
/*                                    ALL DONE, you did not edit any thign did you                                    */
/* ------------------------------------------------------------------------------------------------------------------ */
INFO("init", "Initialization completed.");
