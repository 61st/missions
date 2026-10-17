#include "..\script_component.hpp";
/*
 * Author: YonV
 * This function provides post init player set up.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call YMF_fnc_init_playerpost
 *
 * Public: No


 */// Change inventory content of supply crates on mission start.
call EFUNC(init,vehicle);

// item replacement
if (EGVAR(Settings,allowReplaceItem)) then {
    call EFUNC(init,aceItemReplace);
};

// staging
call EFUNC(init,staging);

// messages
call EFUNC(init,message);

// diary records
if (EGVAR(Settings,showDiaryRecords)) then {
    call EFUNC(init,diary);
};

onPlayerConnected { 
    [QEGVAR(log,player), [getPlayerUID player, player]] call CBA_fnc_serverEvent;
};

//radio
call EFUNC(gear,setupRadios);