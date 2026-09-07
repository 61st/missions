#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, J.Turn
 * This module function spawn a supply crate.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call YMF_fnc_zenModule_createSupplyCrate
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];
// The crate type that will be passed to the supply crate spawner.
private _crateTypeList = [
    'crate_resupply_general',
    'crate_outlaw_1-1',
    'crate_outlaw_1-2',
    'crate_medical',
    'crate_medicalInfantry',
    'crate_stinger',
    'crate_mopp',
    'crate_tow',
    'crate_mo',
    'crate_eng',
    'crate_m2',
    'crate_javelin'
];

// Display text for the crate list selection. This is what the zeus sees.
private _displayTextList = 
[
    ['Outlaw Resupply', "Contains weapons, ammo, and supplies for one infantry platoon"],
    ['Outlaw 1-1 Resupply', "Contains weapons, ammo, and supplies for one infantry squad"],
    ['Outlaw 1-2  Resupply', "Contains weapons, ammo, and supplies for one infantry squad"],
    ['Casualty Collection Point', "Contains enough supplies to sustain a CCP as well supplementing one infantry platoon."],
    ['Infantry Medical', "Contains enough medical supplies for one infantry Squad."],
    ['Stinger MANPAD', "Contains 1 launcher and 2 missiles."],
    ['MOPP Crate', "A crate for all your NBC needs"],
    ['TOW Box', "About 5 minutes worth of TOW missiles"],
    ['Mortar Box', "Medium bada boom box"],
    ['Engineering Box', "Demo, and other boom stuff"],
    ['M2 Box', "M2 Ammo, About 2 minutes worth"],
    ['Javelin Box', "Contains 1 launcher and 8 missiles."]
    ];
[
    "61st Mechanized Infantry Battalion Supply Crates", 
    [
        ["LIST", ["Crate Type", "Select the type of unit you are supplying with this crate"],
            [
                _crateTypeList,
                _displayTextList,
                0,
                4
            ], false]
    ], 
    {
        params ["_arg", "_pos"];
        _arg params ["_crateType"];
        _pos params ["_modulePos"];
        
        [_modulePos, _crateType] remoteExec [QFUNC(doSupplyCrate), 2, false];
    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;