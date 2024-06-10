#include "scripts\script_component.hpp"

 /* ------------------------------------------------------------------------------------------------------------------ */
 /*                                                D O   N O T   E D I T  !                                            */
 /* ------------------------------------------------------------------------------------------------------------------ */

enableSaving [false, false];

/* To Turns off or on ambient Wildelife, Ambient Sounds and wind sound strenght. ------------------------------------ */
enableEnvironment [false, true, 1];
[{
    // Disable Ambient Animals
    [{time > 0}, {enableEnvironment [false, false];}] call CBA_fnc_waitUntilAndExecute;
}] call CBA_fnc_directCall;

ACE_maxWeightCarry = 7500;
ACE_maxWeightDrag = 10000;

minviewdistance = 500;
maxviewdistance = 10000;

/* Start times selected randomly throughout the daylight hours between sunrise and one hour before sunset ----------- */
if (isServer) then {
waitUntil { time > 0 }; // Allow time subsystem to initialize so that missionStart is correct
private _date = missionStart select [0, 5];

private _times = [_date] call BIS_fnc_sunriseSunsetTime;
private _startTime = (_times select 0) + (random ((_times select 1) - (_times select 0) - 1));
private _startHour = floor _startTime;
private _startMinute = (_startTime - _startHour) * 60;

_date set [3, _startHour];
_date set [4, _startMinute];

setDate _date;
};

/* ------------------------------------------------------------------------------------------------------------------ */
/*                                    ALL DONE, you did not edit any thign did you                                    */
/* ------------------------------------------------------------------------------------------------------------------ */
INFO("init", "Initialization completed.");
