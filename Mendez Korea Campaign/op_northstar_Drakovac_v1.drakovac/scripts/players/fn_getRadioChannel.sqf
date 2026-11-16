#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function fetch a squad radio channel based on radio type and squad name.
 *
 * Arguments:
 * 0: Group name <STRING>
 * 1: Radio type <STRING> (Optional) (Default; ACRE_PRC343) 
 *
 * Return Value:
 * Radio Channel <NUMBER>
 *
 * Example:
 * ["BANDIT-1", "ACRE_PRC343"] call ymf_fnc_getRadioChannel
 *
 * Public: No
 */

params [
    ["_group", "", [""]],
    ["_radio", "ACRE_PRC148", ["ACRE_PRC148"]]
];

if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {nil};

if (_group isEqualTo "") exitWith {0};
_group = toUpper(_group);

private _radioMod = if (EGVAR(Patches,usesACRE)) then {"ACRE"} else {"TFAR"};
_radio = toUpper(_radio);

_radioType = switch (_radio) do {
    case "ACRE_PRC148";
    case "SR": {"SR"};
    case "ACRE_PRC152";
    case "MR": {"MR"};
    default {"LR"};
};

#include "..\..\config\config_comms.hpp"

private _radioHashMap = createHashMapFromArray [
    ["SR", createHashMapFromArray _srHashMap],
    ["MR", createHashMapFromArray _mrHashMap],
    ["LR", createHashMapFromArray _lrHashMap],
    ["CR", createHashMapFromArray _crHashMap]
];  
private _radioMap = _radioHashMap get _radioType;
private _groupNameChannel = _radioMap getOrDefault [_group, [["ACRE", 0], ["TFAR", 0]]];
private _modRadio = createHashMapFromArray _groupNameChannel;

_modRadio getOrDefault [_radioMod, 0];