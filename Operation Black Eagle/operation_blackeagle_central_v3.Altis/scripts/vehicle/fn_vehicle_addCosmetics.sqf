#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function changes appearance for approved vehicles defined in the faction setting.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call YMF_fnc_vehicle_addCosmetics;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!isNil{_vehicle getVariable QEGVAR(VehicleFunc,Cosmetics)}) exitWith {SHOW_WARNING_2("VehicleCosmetics", "Vehicle cosmetics already applied for %1 [%2].", _vehicle, typeOf _vehicle);};
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

INFO_2("VehicleCosmetics", "Applying vehicle cosmetics to %1 [%2].", _vehicle, typeOf _vehicle);

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,type), typeOf _vehicle];

private _textureMed = "\z\addons\media\images\vehicles\label\special\reddiamond_s_ca.paa";

if (_vehicle isKindOf "rhsusf_hmmwe_base") then { // MRAP_01_base_F
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];

    _vehicle animateSource ["iff_hide", 1, true];
    _vehicle animateSource ["hide_CIP", 1, true];
    _vehicle animateSource ["snorkel_lower", 1, true];
    _vehicle animateSource ["Hide_A2Bumper", 1, true];

    switch (_vehicleType) do {
        case "rhsusf_m998_w_2dr_fulltop";
        case "rhsusf_m998_d_2dr_fulltop";
        case "MED": {
            [_vehicle, [-1.1,-0.28,-0.91] , false, _textureMed, [[1,0,0], [0,0,1]]] call FUNC(createVehicleLable);
            [_vehicle, [1.1,-0.28,-0.91] , false, _textureMed, [[-1,0,0], [0,0,1]]] call FUNC(createVehicleLable);
        };
        default {};
    };
};

if (_vehicle isKindOf "rhsusf_m1151_base") then { // MRAP_01_base_F
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];

    _vehicle animateSource ["snorkel_lower", 1, true];
    _vehicle animateSource ["iff_hide", 1, true];
    _vehicle animateSource ["dwf_kit_Hide", 1, true];
};

if (_vehicle isKindOf "rhsusf_m1152_base") then { // MRAP_01_base_F
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];

    _vehicle animateSource ["snorkel_lower", 1, true];
    _vehicle animateSource ["iff_hide", 1, true];
    _vehicle animateSource ["dwf_kit_Hide", 1, true];
};

if (_vehicle isKindOf "rhsusf_fmtv_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];
    switch (_vehicleType) do {
        case "rhsusf_M1078A1P2_B_M2_d_fmtv_usarmy";
        case "rhsusf_M1078A1P2_B_d_fmtv_usarmy";
        case "rhsusf_M1078A1P2_d_fmtv_usarmy";
        case "rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy";
        case "rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy";
        case "rhsusf_M1083A1P2_B_d_fmtv_usarmy";
        case "rhsusf_M1083A1P2_d_fmtv_usarmy";
        case "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy": {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\fmtv\FMTV_Cab_D_CO.paa"],
                [5, "\z\lxim\addons\media\images\vehicles\fmtv\FMTV_BKIT_D_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
        };
        case "rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy";
        case "rhsusf_M1078A1P2_B_wd_fmtv_usarmy";
        case "rhsusf_M1078A1P2_wd_fmtv_usarmy";
        case "rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy";
        case "rhsusf_M1083A1P2_B_wd_fmtv_usarmy";
        case "rhsusf_M1083A1P2_wd_fmtv_usarmy";
        case "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy": {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\fmtv\FMTV_Cab_CO.paa"],
                [5, "\z\lxim\addons\media\images\vehicles\fmtv\FMTV_BKIT_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
        };
        default {};
    };
};

if (_vehicle isKindOf "rhsusf_stryker_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, false];
    _vehicle animateSource ["Hide_CIP", 1, true];
    switch (_vehicleType) do {
        case "rhsusf_stryker_m1127_m2_d";
        case "rhsusf_stryker_m1127_m2_wd"; 
        case "CMD": {
            [_vehicle, [
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [17, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\6_ca.paa"],
                [18, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
        };
        case "rhsusf_stryker_m1134_d";
        case "rhsusf_stryker_m1134_d"; 
        case "CAS": {
            [_vehicle, [
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [17, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\5_ca.paa"],
                [18, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
        };
        case "rhsusf_stryker_m1132_m2_d";
        case "rhsusf_stryker_m1132_m2_d"; 
        case "ENG": {
            [_vehicle, [
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\3_ca.paa"], 
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"], 
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"], 
                [17, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"] 
            ]] call EFUNC(vehicle,applyTextures);
        };
        default {
            [_vehicle, [
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
        };
    };
};

if (_vehicle isKindOf "rhsusf_M1239_CROWS_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, false];   
    [_vehicle, [
        [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_61.paa"]
    ]] call EFUNC(vehicle,applyTextures);
};

if (_vehicle isKindOf "rhsusf_MATV_CROWS_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, false];   
    [_vehicle, [
        [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_ca.paa"]
    ]] call EFUNC(vehicle,applyTextures);
};

if (_vehicle isKindOf "rhsusf_MATV_SOF_CROWS_M2_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, false];   
    [_vehicle, [
        [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_ca.paa"]
    ]] call EFUNC(vehicle,applyTextures);
};

if (_vehicle isKindOf "RHS_M2A2_Base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];
};

if (_vehicle isKindOf "RHS_MELB_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];
};

if (_vehicle isKindOf "rhsusf_m1a1tank_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];

    [{
        (_this select 0) animateSource ["Miles_Hide", 1, true];
        (_this select 0) animateSource ["IFF_Panels_Hide", 1, true];
    }, [_vehicle]] call CBA_fnc_execNextFrame;

    switch (_vehicle getVariable [QEGVAR(Vehicle,Callsign), 0]) do {
        case 1: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\1_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\BarrelArt_wardaddy_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 1, true];
            _vehicle setVariable [QEGVAR(Vehicle,name), "WAR-DADDY", true];
        };
        case 2: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\BarrelArt_warmommy_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 2, true];
            _vehicle setVariable [QEGVAR(Vehicle,name), "WAR-MOMMY", true];
        };
        case 3: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\BarrelArt_warmommy_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 2, true];
            _vehicle setVariable [QEGVAR(Vehicle,name), "WAR-MOMMY", true];
        };
        case -1: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\1_ca.paa"],
                [12, ""]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 3, true];
            _vehicle setVariable [QEGVAR(Vehicle,name), "WAR-CHILD", true];
        };
        case -2: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"],
                [12, ""]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -2, true];
            _vehicle setVariable [QEGVAR(Vehicle,name), "WAR-MOMMY", true];
        };
        default {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\0_ca.paa"],
                [12, ""]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 0, true];
            _vehicle setVariable [QEGVAR(Vehicle,name), "", true];
        };
    };
};

if (_vehicle isKindOf "RHS_UH60_Base") then {
};

if (_vehicle isKindOf "RHS_CH_47F_base") then {
};

if (_vehicle isKindOf "RHS_AH64_base") then {
};

if (_vehicle isKindOf "rhs_m2staticmg_base") then {
};

if (_vehicle isKindOf "RHS_MK19_TriPod_base") then {
};

if (_vehicle isKindOf "RHS_TOW_TriPod_base") then {
};

if (_vehicle isKindOf "NDS_M224_mortar_base") then {
};

if (_vehicle isKindOf "RHS_C130J_Base") then {
};

if (_vehicle isKindOf "RHSGREF_A29_Base") then {
    [_vehicle, [
        [0, "rhsgref\addons\rhsgref_a29\tex\st_fuselage_usaf_co.paa"],
        [1, "rhsgref\addons\rhsgref_a29\tex\st_wingsandstabs_usaf_co.paa"],
        [2, "rhsgref\addons\rhsgref_a29\tex\st_everythingelse_usaf_co.paa"]
    ]] call EFUNC(vehicle,applyTextures);
};

_vehicle setPlateNumber "A 3/61 MECH";

// Add eventHandlers to handle death and deletion.
_vehicle addEventHandler ["Killed", {
    params["_vehicle"];
    private _labels = _vehicle getVariable [QEGVAR(Vehicle,Labels), []];
    if (count _labels != 0) then {
        {deleteVehicle _x} forEach _labels;
    };
}];
_vehicle addEventHandler ["Deleted", {
    params["_vehicle"];
    private _labels = _vehicle getVariable [QEGVAR(Vehicle,Labels), []];
    if (count _labels != 0) then {
        {deleteVehicle _x} forEach _labels;
    };
}];

_vehicle setVariable [QEGVAR(VehicleFunc,Cosmetics), true, true];
