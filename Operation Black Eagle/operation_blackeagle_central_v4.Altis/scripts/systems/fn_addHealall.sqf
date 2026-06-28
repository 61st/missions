#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This adds a adda ction as well as a ACE interaction reGear selection. The script reapplyes the players start loadout.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call YMF_fnc_addHealall;
 */

params [
    ["_object", objNull, [objNull]],
    ["_category", ["ACE_MainActions"], [["ACE_MainActions"]]]
];


// Make addAction
if (!isPlayer _object) then {
    _object addAction ["   <t color='#ff3333'>Heal All Within 12M</t>", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        private _allPlayers = allPlayers;
        private _inArea = _allPlayers select {(_x distance _target) < 8};
        {
            [_x, _x] call ace_medical_treatment_fnc_fullHeal;
            [_x, _x] call ACM_core_fnc_resetVariables;
            [_x, _x] call ACM_airway_fnc_resetVariables;
            [_x, _x] call ACM_breathing_fnc_resetVariables;
            [_x, _x] call ACM_circulation_fnc_resetVariables;
            [_x, _x] call ACM_damage_fnc_resetVariables;
            [_x, _x] call ACM_disability_fnc_resetVariables;
            systemChat "Healed Everyone Except That Guy";
        } forEach _inArea;
        [[],["You have been healed"], [""], [""]] call CBA_fnc_notify;
    }, [], 1.5, true, true, "", "", 5];
};

// Make ACE Interaction for ReGear
private _Icon = "\z\ACE\addons\medical_gui\ui\cross.paa";
private _healStatement = {
    private _allPlayers = allPlayers;
    private _inArea = _allPlayers select {(_x distance _target) < 8};
    {
        [_x, _x] call ace_medical_treatment_fnc_fullHeal;
        [_x, _x] call ACM_core_fnc_resetVariables;
        [_x, _x] call ACM_airway_fnc_resetVariables;
        [_x, _x] call ACM_breathing_fnc_resetVariables;
        [_x, _x] call ACM_circulation_fnc_resetVariables;
        [_x, _x] call ACM_damage_fnc_resetVariables;
        [_x, _x] call ACM_disability_fnc_resetVariables;
        systemChat "Healed Everyone Except That Guy";
    } forEach _inArea;
    [[],["You have been healed"], [""], [""]] call CBA_fnc_notify;
};

private _healallAction = [QEGVAR(Actions,HealallAction), "Heal All Within 12M", "\z\ACE\addons\medical_gui\ui\cross.paa", _healStatement, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _healallAction] call ace_interact_menu_fnc_addActionToObject;

true