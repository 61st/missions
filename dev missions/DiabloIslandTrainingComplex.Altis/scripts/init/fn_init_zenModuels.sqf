#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
 * This function load all 61st modules. Requires Zen Mod to run propperly. The function will terminate if not.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call YMF_fnc_init_zenModuels
 *
 * Public: No
 */

if !(EGVAR(patches,usesZen)) exitWith {};
if !(EGVAR(Settings,enableYMFZeusModules)) exitWith {};

INFO("init", "Initializing custom Zen Modules.");

["YMF AI", "Enable Unit Simulation",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,EnableUnitSimulation);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconManVirtual_ca.paa"
] call zen_custom_modules_fnc_register;


["YMF Logistics", "Spawn Starter Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CreateStarterCrate);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

// ["YMF Logistics", "Rekit Vehicle",
//     {
//         params ["_modulePos", "_objectPos"];
//         [_modulePos, _objectPos] call EFUNC(zenModule,RekitVehicle);    
//     },
//     "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
// ] call zen_custom_modules_fnc_register;

// Check if increase training on location is true then add option.
// if (ace_medical_treatment_locationsBoostTraining) then {
//     ["YMF Logistics", "Field Hospital",
//         {
//             params ["_modulePos", "_objectPos"];
//             [_modulePos, _objectPos] call EFUNC(zenModule,CreateFieldHospital);
//         },
//         "\z\ACE\addons\medical_gui\ui\cross.paa"
//     ] call zen_custom_modules_fnc_register;
// };

["YMF Logistics", "Spawn Re-supply Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CreateSupplyCrate);
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

["YMF Mission", "Call Endex",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CallEndex);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["YMF Mission", "Take attendence",
    {
        private _playerLog = missionNamespace getVariable [QEGVAR(log,players), []];
        ["All attended players have been saved to your RPT log"] call zen_common_fnc_showMessage;
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["YMF Mission", "Staging Zones",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,stagingZones);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

INFO("init", "Custom Zen Modules initialization complete");
