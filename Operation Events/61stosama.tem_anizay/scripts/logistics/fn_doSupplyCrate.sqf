#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, J.Turn
 * This populats a given object with items.
 * Use for mission resupplies.
 *
 * Arguments:
 * 0: Module Position <ARRAY> (Default: [0.0,0.0,0.0])
 * 1: Crate Type <STRING> (Default: "crate_resupply_general")
 *
 * Example:
 * [[0.0,0.0,0.0],"crate_resupply_general"] call YMF_fnc_doSupplyCrate;
 * [[0.0,0.0,0.0],"crate_medical"] call YMF_fnc_doSupplyCrate;
 */

if (!isServer) exitWith {};

params [
    ["_modulePos", [0.0,0.0,0.0], [[0.0,0.0,0.0]]], 
    ["_crateType","crate_resupply_general",[""]]
];

// Crate model changes based on container of the crate
private _crateModel = "";

switch (_crateType) do {
    case "crate_medical": {
        _crateModel = "Land_PortableCabinet_01_medical_F";
    };
    case "crate_medicalInfantry": {
        _crateModel = "Box_B_UAV_06_medical_F";
    };
    case "crate_resupply_general": {
        _crateModel = "lxim_equipment_outlawHQ";
    };
    case "crate_outlaw_1-1": {
        _crateModel = "lxim_equipment_outlaw11";
    };
    case "crate_outlaw_1-2": {
        _crateModel = "lxim_equipment_outlaw12";
    };
    case "crate_stinger": {
        _crateModel = "lxim_equipment_AA";
    };
    case "crate_javelin": {
        _crateModel = "lxim_equipment_javlen";
    };
    case "crate_eng": {
        _crateModel = "lxim_equipment_eng";
    };
    case "crate_m2": {
        _crateModel = "lxim_equipment_50cal";
    };
    case "crate_mo": {
        _crateModel = "lxim_equipment_252";
    };
    case "crate_mopp": {
        _crateModel = "lxim_equipment_MOPP";
    };
    case "crate_tow": {
        _crateModel = "lxim_equipment_TOW";
    };
    default {
        _crateModel = "B_CargoNet_01_ammo_F";
    };
};

// Create crate at module position
INFO_2("Logistics", "Spawning %1 on %2", _crateType, _modulePos);
private _crate = _crateModel createVehicle _modulePos;

// Add items from logistics database entry
if (isServer) then {
    [{!isNil{EGVAR(DATABASE,DONE)} && EGVAR(DATABASE,DONE);}, {
        _this params ["_crate","_crateType"];
        private _container = GET_CONTAINER(_crateType);
        [_crate, _container] call FUNC(setCargo);
}, [_crate, _crateType]] call CBA_fnc_waitUntilAndExecute;
};

// Change ace characteristics of crate
[_crate, 1] call ace_cargo_fnc_setSize;
[_crate, true] call ace_dragging_fnc_setDraggable;
[_crate, true] call ace_dragging_fnc_setCarryable;

// If a correct classname add texture
private _smallBox = [
    "Box_T_East_Ammo_F",
    "Box_East_Ammo_F",
    "Box_NATO_Ammo_F",

    "Box_T_East_WpsSpecial_F",
    "Box_East_WpsSpecial_F",
    "Box_T_NATO_WpsSpecial_F",
    "Box_NATO_WpsSpecial_F",

    "Box_East_AmmoOrd_F",
    "Box_NATO_AmmoOrd_F",

    "Box_T_East_Wps_F",
    "Box_East_Wps_F",
    "Box_T_NATO_Wps_F",
    "Box_NATO_Wps_F",

    "Box_East_Grenades_F",
    "Box_NATO_Grenades_F",

    "Box_East_WpsLaunch_F",
    "Box_NATO_WpsLaunch_F"
];
private _largeBox = [
    "B_CargoNet_01_ammo_F"
];
if (typeOf _crate in _smallBox) then {
    _crate setObjectTextureGlobal  [0, "\scripts\data\Images\AmmoBox_signs_YMF_ammo_CA.paa"];
};
if (typeOf _crate in _largeBox) then {
    _crate setObjectTextureGlobal  [1, "\scripts\data\Images\AmmoBox_signs_YMF_ammo_CA.paa"];
};

// Add object to the curator for all Zeuses
_crate call ace_zeus_fnc_addObjectToCurator;
