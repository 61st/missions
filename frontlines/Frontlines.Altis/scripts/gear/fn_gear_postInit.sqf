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
        [player, 'BIS'] call EFUNC(player,setRank);
        call EFUNC(player,setRankpatch);
        call LXIM_w28fixes_fnc_player_set_name;
        player linkItem "ItemCompass";
        if ("B_UavTerminal" in (player getSlotItemName 612)) then { 
            if !([player, "ItemAndroidMisc"] call ace_common_fnc_hasItem)  
                then {player addItem "ItemAndroidMisc"}; 
            } else { 
                if !([player, "ItemAndroid"] call ace_common_fnc_hasItem) then {player linkItem "ItemAndroid"}; 
        };
        if (YMF_autoSaveLoadout) then {
		YMF_savedLoadout = [player] call CBA_fnc_getLoadout;
		["Loadout saved."] call YMF_fnc_notify;
	};
    if (parseNumber([player] call ace_common_fnc_getWeight) > YMF_weightWarningThreshold) then {["You are carrying a lot of equipment which will affect your ability to operate. It may be worth reviewing your loadout to reduce your weight."] call YMF_fnc_notify};
    }] call CBA_fnc_addEventHandler;
};