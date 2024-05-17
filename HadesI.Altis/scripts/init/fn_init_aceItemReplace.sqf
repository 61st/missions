#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function enables standardization of item use by swaping items to desired item.
 *
 * Example:
 * call sixone_fnc_init_aceItemReplace
 *
 * Public: No
 */

if (!EGVAR(patches,usesACE)) exitWith {};

INFO("init", "Initializing Item replacement system.");

if (!isNil {ace_medical_treatment_convertItems == 2}) then {
    switch (EGVAR(Settings,replaceMedical)) do {
        case (1): {
            ["FirstAidKit",[
                "sixone_medbags_FirstAid"
            ]] call ace_common_fnc_registerItemReplacement;
            ["Medikit",[
                "sixone_medbags_MedicKit"
            ]] call ace_common_fnc_registerItemReplacement;
        };
    };
};

INFO("init", "Item replacement initialization completed.");
