#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
 * This function load all modules. Requires Zen Mod to run propperly. The function will terminate if not.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call Scripts_fnc_init_zenModuels
 *
 * Public: No
 */

if !(EGVAR(patches,usesZen)) exitWith {};
if !(EGVAR(Settings,enable61STZeusModules)) exitWith {};

INFO("init", "Initializing custom Zen Modules.");

["61ST AI", "Enable Unit Simulation",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,EnableUnitSimulation);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconManVirtual_ca.paa"
] call zen_custom_modules_fnc_register;


["61ST Logistics", "Spawn Starter Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CreateStarterCrate);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

["61ST Logistics", "Spawn Re-supply Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CreateSupplyCrate);
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;


["61ST Utilities", "Apply Loadout",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,ApplyLoadout);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["61ST Utilities", "Regear Soldier",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,RegearSoldier);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["61ST Mission", "Call Endex",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CallEndex);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["61ST Mission", "Take attendence",
    {
        [QGVAR(getAttendance)] call CBA_fnc_localEvent;
        ["All attended players have been saved to your RPT log"] call zen_common_fnc_showMessage;
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["61ST Mission", "Staging Zones",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,stagingZones);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

INFO("init", "Custom Zen Modules initialization complete");
