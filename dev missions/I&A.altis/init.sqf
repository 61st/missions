#include "scripts\script_component.hpp"
/* ------------------------------------------------------------------------------------------------------------------ */
/*                                                D O   N O T   E D I T  !                                            */
/* ------------------------------------------------------------------------------------------------------------------ */
/*                    This is the mission init.sqf this is run witout exceptions on mission start.                    */
/*       Some sections in this script only run when your on a multiplayer enviroment to avoid errors and issues.      */
/*        Read more about Initzialisation order here: https://community.bistudio.com/wiki/Initialization_Order        */
/* ------------------------------------------------------------------------------------------------------------------ */
// Run evannex gamemode
execVM "core\evannexInit.sqf";


if (!isMultiplayer) then {SHOW_CHAT_WARNING("", "Mission is running on singelplayer environment!");};
#ifdef DEBUG_MODE
    SHOW_INFO("init", "Initializing...");
    SHOW_CHAT_INFO_1("init", "YMF Version %1 is running.", VERSION);
    SHOW_CHAT_WARNING("init", "Debug mode is currently active.");
    logEntities;
#endif

enableSaving [false, false];
enableSentences false;

// To Turns off or on ambient Wildelife, Ambient Sounds and wind sound strenght.
enableEnvironment [false, true, 1];

ACE_maxWeightCarry = 800;
ACE_maxWeightDrag = 12000;

minviewdistance = 500;
maxviewdistance = 10000;


// Some misc configuration
0 enableChannel [true, false]; 	// GLOBAL
1 enableChannel [true, false]; 	// SIDE
2 enableChannel [true, false]; 	// COMMAND
3 enableChannel [true, false]; 	// GROUP
4 enableChannel [true, false];	// VEHICLE
5 enableChannel [true, false];	// DIRECT

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

// Random Weather
if (isServer) then {
    _setRandom = [0,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5,0.55,0.6,0.65,0.7,0.75,0.8,0.85,0.9,0.95,1.0];
    // Initial Weather
    0 setOvercast selectRandom _setRandom; // Initial Weather Set  Values: 0 = Sunny, clear skies   1 = Stormy, complete overcast
    sleep 0.1; // Keep this at or above 0.1, or else simulWeatherSync command will not work properly.
    simulWeatherSync; // This command will sync the selected weather pattern to appear as it should right away instead of having to wait.
    
    while { true } do {
        300 setOvercast selectRandom _setRandom; // selectRandom is the new engine solution to BIS_fnc_selectRandom. This will select a random weather pattern from the array. Values: 0 = Sunny, clear skies   1 = Stormy, complete overcast.
        sleep 0.1;
    };
};

/* ------------------------------------------------------------------------------------------------------------------ */
/*                                    ALL DONE, you did not edit anything did you                                    */
/* ------------------------------------------------------------------------------------------------------------------ */
INFO("init", "Initialization completed.");
YMF_INIT_COMPLETE = true;