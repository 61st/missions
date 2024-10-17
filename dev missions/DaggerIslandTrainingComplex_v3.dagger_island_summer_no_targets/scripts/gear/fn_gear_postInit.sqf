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

if (hasInterface) then {
    ["ace_arsenal_displayClosed", {
        [player, 'BIS'] call EFUNC(player,setRank);
        call EFUNC(player,setRankpatch);
        call LXIM_w28fixes_fnc_player_set_name;
        player linkItem "ItemCompass";
        YMF_savedLoadout = [player] call CBA_fnc_getLoadout;
    }] call CBA_fnc_addEventHandler;
};