#include "..\script_component.hpp"
/*
 * Author: Rory, Jonpas
 * Allows for the instructor to choose what group of targets pop up for basic LMG range.
 *
 * Arguments:
 * 0: Controller <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [this] call YMF_fnc_rangeMachineGunTargetGroups
 */

#define TARGET_GROUP_1 mg_target_l1_t1, mg_target_l1_t2, mg_target_l1_t3, mg_target_l1_t4, mg_target_l1_t5
#define TARGET_GROUP_2 mg_target_l1_t6, mg_target_l1_t7, mg_target_l1_t8, mg_target_l1_t9, mg_target_l1_t10
#define TARGET_GROUP_3 mg_target_l1_t11, mg_target_l1_t12, mg_target_l1_t13, mg_target_l1_t14, mg_target_l1_t15
#define TARGET_GROUP_4 mg_target_l1_t16, mg_target_l1_t17, mg_target_l1_t18, mg_target_l1_t19, mg_target_l1_t20
#define TARGET_GROUP_5 mg_target_l1_t21, mg_target_l1_t22, mg_target_l1_t23, mg_target_l1_t24, mg_target_l1_t25
#define TARGET_GROUP_6 mg_target_l1_t26, mg_target_l1_t27, mg_target_l1_t28, mg_target_l1_t29, mg_target_l1_t30
#define TARGET_GROUP_7 mg_target_l1_t31, mg_target_l1_t32, mg_target_l1_t33, mg_target_l1_t34, mg_target_l1_t35
#define TARGET_GROUP_8 mg_target_l1_t36, mg_target_l1_t37, mg_target_l1_t38, mg_target_l1_t39, mg_target_l1_t40


#define ALL_TARGETS TARGET_GROUP_1, TARGET_GROUP_2, TARGET_GROUP_3, TARGET_GROUP_4, TARGET_GROUP_5, TARGET_GROUP_6, TARGET_GROUP_7, TARGET_GROUP_8
#define ALL_TARGET_GROUPS [[ALL_TARGETS], [ALL_TARGETS], [TARGET_GROUP_1], [TARGET_GROUP_2], [TARGET_GROUP_3], [TARGET_GROUP_4], [TARGET_GROUP_5], [TARGET_GROUP_6], [TARGET_GROUP_7], [TARGET_GROUP_8]]

// Default targets down
{
    [_x, 1] call YMFMFUNC(shootingrange,animateTarget);
} forEach [ALL_TARGETS];
//////////////

params ["_controller"];

{
    _x params ["_interactionVariable", "_interactionName", "_state"];

    private _action = [
        _interactionVariable,
        _interactionName,
        "x\cba\addons\ai\iconinvisibletarget.paa",
        {
            (_this select 2) params ["_allTargetGroups", "_state"];
            {
                [_x, _state] call YMFMFUNC(shootingrange,animateTarget);
                _x setVariable [QYMFMGVAR(shootingrange,stayDown), true, true];
            } forEach _allTargetGroups;
        },
        {true},
        {},
        [ALL_TARGET_GROUPS select _forEachIndex, _state]
    ] call ACEFUNC(interact_menu,createAction);

    [_controller, 0, ["ACE_MainActions"], _action] call ACEFUNC(interact_menu,addActionToObject);
} forEach [
    [QGVAR(targetsUp), "All Up", 0],
    [QGVAR(targetsDown), "All Down", 1],
    [QGVAR(group1up), "Left 1", 0],
    [QGVAR(group2up), "right 2", 0],
    [QGVAR(group3up), "Left 3", 0],
    [QGVAR(group4up), "Right 4", 0],
    [QGVAR(group5up), "Left 5", 0],
    [QGVAR(group6up), "Right 6", 0],
    [QGVAR(group7up), "Left 7", 0],
    [QGVAR(group8up), "Far", 0]
];
