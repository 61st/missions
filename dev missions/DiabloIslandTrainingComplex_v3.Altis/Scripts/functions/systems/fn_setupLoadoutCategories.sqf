#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV 
* This function setup a loadout categories
 *
 * Arguments:
 * 0: Vehicle/Object/Crate <OBJECT>
 * 1: Ace Action Category <STRING>     (Optional) (Default; ACE_MainActions)
 *
 * Return Value:
 * Main category used for creation <STRING>
 *
 * Example:
 * [this, "ACE_MainActions"] call Scripts_fnc_setupLoadoutCategories;
 * [this, "ACE_SelfActions"] call Scripts_fnc_setupLoadoutCategories;
 *
 * Public: No
 */

params[
    ["_object", objNull, [objNull]],
    ["_aceCategory", "ACE_MainActions", ["ACE_MainActions"]]
];

// Setup category
private _icon      = "Scripts\Data\Icon\icon_01.paa" call FUNC(getIcon);
private _squadIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa" call FUNC(getIcon);
private _speciIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\lieutenant_gs.paa" call FUNC(getIcon);
private _leadIcon  = "\A3\Ui_f\data\GUI\Cfg\Ranks\captain_gs.paa" call FUNC(getIcon);
private _pilotIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\colonel_gs.paa" call FUNC(getIcon);
private _iconTank  = "iconTank" call FUNC(getIcon);
private _iconIfv   = "iconAPC" call FUNC(getIcon);
private _iconCrate = "iconCrateWpns" call FUNC(getIcon);
private _iconMedic = "\z\ACE\addons\medical_gui\ui\cross.paa" call FUNC(getIcon);


private _mainCategory = "";
if (_aceCategory == "ACE_SelfActions") then {
    [_object, "Scripts_Loadout_Cat_MainStage", "Staging Zone Loadouts", _icon, [_aceCategory], { call FUNC(checkStagingZone) }] call FUNC(createActionCategory);
    _mainCategory = "Scripts_Loadout_Cat_MainStage";
} else {
    [_object, "Scripts_Loadout_Cat_Main", "Loadouts", _icon, [_aceCategory]] call FUNC(createActionCategory);
    _mainCategory = "Scripts_Loadout_Cat_Main";
};

[_object, "Scripts_Loadout_Cat_Outlaw",                   "Outlaw", "",                [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "Scripts_Loadout_Cat_Outlaw_1-1",               "Outlaw 1/1", _squadIcon,     [_aceCategory, _mainCategory, "Scripts_Loadout_Cat_Outlaw"]] call FUNC(createActionCategory);
[_object, "Scripts_Loadout_Cat_Outlaw_1-2",               "Outlaw 1/2", _squadIcon,     [_aceCategory, _mainCategory, "Scripts_Loadout_Cat_Outlaw"]] call FUNC(createActionCategory);
[_object, "Scripts_Loadout_Cat_Outlaw_HQ",                "Outlaw HQ", _leadIcon,      [_aceCategory, _mainCategory, "Scripts_Loadout_Cat_Outlaw"]] call FUNC(createActionCategory);

[_object, "Scripts_Loadout_Cat_Thunder",                  "Thunder", "",                [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "Scripts_Loadout_Cat_Wardaddy",                 "WARDADDY", _iconTank,        [_aceCategory, _mainCategory, "Scripts_Loadout_Cat_Thunder"]] call FUNC(createActionCategory);
[_object, "Scripts_Loadout_Cat_Warmommy",                 "WARMOMMY", _iconTank,        [_aceCategory, _mainCategory, "Scripts_Loadout_Cat_Thunder"]] call FUNC(createActionCategory);

[_object, "Scripts_Loadout_Cat_Phoenix",                  "Phoenix", "",                [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "Scripts_Loadout_Cat_Phoenix_1-1",              "Phoenix 1/1", _speciIcon,    [_aceCategory, _mainCategory, "Scripts_Loadout_Cat_Phoenix"]] call FUNC(createActionCategory);
[_object, "Scripts_Loadout_Cat_Phoenix_1-2",              "Phoenix 1/2", _speciIcon,    [_aceCategory, _mainCategory, "Scripts_Loadout_Cat_Thunder"]] call FUNC(createActionCategory);

[_object, "Scripts_Loadout_Cat_Control",                  "Range Control", "",          [_aceCategory, _mainCategory]] call FUNC(createActionCategory);

[_object, "Scripts_Loadout_Cat_Training",                 "Training", "",               [_aceCategory, _mainCategory]] call FUNC(createActionCategory);

[_object, "Scripts_Loadout_Cat_Other",                   "Other", "",                    [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "Scripts_Loadout_Cat_Other_Russian",           "Russian", "",                  [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "Scripts_Loadout_Cat_Other_Insurgent",         "Insurgent", "",                [_aceCategory, _mainCategory]] call FUNC(createActionCategory);

_mainCategory