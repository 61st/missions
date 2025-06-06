#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function apply functions to a player.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call YMF_fnc_gear_applyFunctions
 *
 */
// Radios
if (EGVAR(Settings,enableRadios)) then {
    if (EGVAR(patches,usesACRE)) then {
        if (EGVAR(Settings,setRadio)) then {
            [{GVAR(Radio) && [] call acre_api_fnc_isInitialized}, {
                INFO_1("GearRadio" "Setting up ACRE primary radio and channels for %1...", player);
                hint "GearRadio Setting up ACRE primary radio and channels for %1...";
                [player] call FUNC(setRadioChannel);
                ["ACRE_PRC148"] call FUNC(setActiveRadio);
            }, []] call CBA_fnc_waitUntilAndExecute;
        };
    };
};

// Earplugs
if !([player] call ace_hearing_fnc_hasEarPlugsIn) then {
    [{
        [_this select 0] call ace_hearing_fnc_putInEarplugs;
    }, [player]] call CBA_fnc_execNextFrame;
};


//Server metrics
if ((call BIS_fnc_admin) >= 2) then {
    player addAction ["Server Metrics", {
        [owner player] call FUNC(getServerMetrics);
    }, [], 0, false, true];
};