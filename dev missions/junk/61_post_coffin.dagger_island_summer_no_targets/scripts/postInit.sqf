#include "script_component.hpp";
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */
if (is3DEN) exitWith {};

INFO("postInit", "Initializing...");

// Change inventory content of supply crates on mission start.
call EFUNC(init,vehicle);

// item replacement
if (EGVAR(Settings,allowReplaceItem)) then {
    call EFUNC(init,aceItemReplace);
};

// staging
call EFUNC(init,staging);

// messages
call EFUNC(init,message);


//rank stuff
[player, 'BIS'] call EFUNC(player,setRank);
call EFUNC(player,setRankpatch);

//Name Stuff
call LXIM_w28fixes_fnc_player_set_name;

onPlayerConnected { 
    [QEGVAR(log,player), [name player]] call CBA_fnc_serverEvent;
};

INFO("postInit", "Initialization completed.");