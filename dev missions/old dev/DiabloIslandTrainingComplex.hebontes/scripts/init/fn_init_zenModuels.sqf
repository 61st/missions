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

INFO("init", "Initializing custom Zen Modules.");

["61st AI", "Enable Unit Simulation",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,EnableUnitSimulation);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconManVirtual_ca.paa"
] call zen_custom_modules_fnc_register;


["61st Logistics", "Staging Zone",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos]  call EFUNC(zenModule,createStaging);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

["61st Logistics", "Add Staging",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos]  call EFUNC(zenModule,addStaging);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

["61st Logistics", "Spawn Re-supply Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CreateSupplyCrate);
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

["61st Mission", "Call Endex",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CallEndex);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["61st Mission", "Take attendance",
    {
        private _playerLog = missionNamespace getVariable [QEGVAR(log,players), []];
        ["All attended players have been saved to your RPT log"] call zen_common_fnc_showMessage;
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["61st Mission", "Staging Zones",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,stagingZones);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

INFO("init", "Custom Zen Modules initialization complete");
