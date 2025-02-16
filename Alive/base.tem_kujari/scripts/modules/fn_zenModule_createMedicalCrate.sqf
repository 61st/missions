#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
 * This module function spawn a supply medical crate.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call YMF_fnc_zenModule_createMedicalCrate
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

// The crate type that will be passed to the supply crate spawner.
private _crateTypeList = [
    'crate_medical', 
    'crate_medicalInfantry'
];

// Display text for the crate list selection. This is what the zeus sees.
private _displayTextList = 
[
    ['CCP', "Contains enough supplies to sustain a CCP."],
    ['Infantry Plt', "Contains enough medical supplies for one infantry platoon."]
];


[
    "61st Mechanized Infantry Battalion Medical Crate", 
    [
        ["LIST", ["Crate Type", "Select the type of unit you are supplying with this crate"],
            [
                _crateTypeList,
                _displayTextList,
                0,
                2
            ], false]
    ], 
    {
        params ["_arg", "_pos"];
        _arg params ["_crateType"];
        _pos params ["_modulePos"];
        
        _crateContents = [_crateType] call EFUNC(logistics,getContainer);
        private _groundLevel = ASLToAGL _modulePos;
        [
            "ace_medicalSupplyCrate", 
            _crateContents,
            _groundLevel
        ] remoteExec [QFUNC(createCargoCrate),2]; 
    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;
