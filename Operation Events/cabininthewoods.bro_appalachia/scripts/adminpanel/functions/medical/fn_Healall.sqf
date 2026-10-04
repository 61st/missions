{
    [_x, _x] call ace_medical_treatment_fnc_fullHeal;
    [_x, _x]  call ACM_core_fnc_resetVariables;
    [_x, _x]  call ACM_airway_fnc_resetVariables;
    [_x, _x]  call ACM_breathing_fnc_resetVariables;
    [_x, _x]  call ACM_circulation_fnc_resetVariables;
    [_x, _x]  call ACM_damage_fnc_resetVariables;
    [_x, _x]  call ACM_disability_fnc_resetVariables;
    systemChat "Thy lord almighty Admin: Healed everyone";
} forEach allPlayers;