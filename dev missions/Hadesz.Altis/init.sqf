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


/* Environment Control Event Handlers ------------------------------------------------------------------------------- */

[{
    [QGVAR(setTime), {
        ["Environment changing..."] call CBA_fnc_notify;

        if (isServer) then {
            skipTime ((_this select 0) - daytime); // Skip time (Server Execution)
        };
        forceWeatherChange;
    }] call CBA_fnc_addEventHandler;

    [QGVAR(setDate), {
        ["Environment changing..."] call CBA_fnc_notify;
        setDate (_this select 0); // Set date (Local Execution)

        if (isServer) then {
            forceWeatherChange;
        };
    }] call CBA_fnc_addEventHandler;

    [QGVAR(setFog), {
        ["Environment changing..."] call CBA_fnc_notify;

        if (isServer) then {
            0 setFog (_this select 0); // Set fog (Server Execution)
            forceWeatherChange;
        };
    }] call CBA_fnc_addEventHandler;

    [QGVAR(setOvercast), {
        ["Environment changing..."] call CBA_fnc_notify;
        0 setOvercast (_this select 0); // Set overcast (Local Execution)

        if (isServer) then {
            forceWeatherChange;
        };
    }] call CBA_fnc_addEventHandler;

    [QGVAR(setRain), {
        ["Environment changing..."] call CBA_fnc_notify;

        if (isServer) then {
            0 setRain (_this select 0); // Set rain (Server Execution)
            forceWeatherChange;
        };
    }] call CBA_fnc_addEventHandler;
}] call CBA_fnc_directCall;


INFO("init", "Initialization completed.");
