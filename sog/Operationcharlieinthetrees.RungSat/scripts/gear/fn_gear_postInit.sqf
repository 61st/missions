#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function runs on postInit unsceduled via made sure by postInitProxy
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Example:
 * call YMF_fnc_gear_postInit
 *
 */
if (isServer) then {
    if (isMultiplayer) then {
        GVAR(Radio) = false;
        call EFUNC(gear,setupRadios);
        GVAR(Radio) = true;
    } else {
        SHOW_CHAT_WARNING("Gear_PostInit", "Mission in singelplayer environment radio setup will not be performed");
    };
};


if (hasInterface) then {
    ["ace_arsenal_displayClosed", {
        player linkItem "ItemCompass";
        YMF_savedLoadout = [player] call CBA_fnc_getLoadout;
    }] call CBA_fnc_addEventHandler;
};