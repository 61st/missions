#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function apply globla functions to vehicles.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call YMF_fnc_vehicle_addFunctionsGlobal
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!isNil{_vehicle getVariable QEGVAR(VehicleFunc,FunctionsGlobal)}) exitWith {SHOW_WARNING_1("VehicleFunctionsGlobal", "Vehicle functions already applied for %1 [%2].", _vehicle, typeOf _vehicle);};

INFO_2("VehicleFunctionsGlobal", "Applying vehicle functions to %1 (%2)", _vehicle, typeOf _vehicle);

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,type), typeOf _vehicle];

_vehicle setVariable [QEGVAR(VehicleFunc,FunctionsGlobal), true];

if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

// Airframes
if (_vehicle isKindOf "RHS_UH60_Base") then {
    switch (_vehicleType) do {
        case "RHS_UH60M_MEV2_d";
        case "RHS_UH60M_MEV_d";
        case "RHS_UH60M_MEV2";
        case "RHS_UH60M_MEV";
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
    [_vehicle] call ace_fastroping_fnc_equipFRIES;
};


// Ground vehicles
if (_vehicle isKindOf "MRAP_01_base_F") then {
    switch (_vehicleType) do {
        case "rhsusf_m998_d_2dr_fulltop";
        case "rhsusf_m998_w_2dr_fulltop";
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

if (_vehicle isKindOf "Truck_01_base_F") then {
    switch (_vehicleType) do {
        case "rhsusf_M1230a1_usarmy_wd";
        case "rhsusf_M1230a1_usarmy_d";
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

if (_vehicle isKindOf "lxim_outlaw_unarmed_base_F") then {
    switch (_vehicleType) do {
        case "lxim_outlaw_Unarmed_d";
        case "lxim_outlaw_Unarmed_g";
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

if (_vehicle isKindOf "lxim_outlaw_base_F") then {
    switch (_vehicleType) do {
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

if (_vehicle isKindOf "lxim_outlaw_eng_base_F") then {
    switch (_vehicleType) do {
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

if (_vehicle isKindOf "lxim_outlaw_AA_base_F") then {
    switch (_vehicleType) do {
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

if (_vehicle isKindOf "rhsusf_stryker_base") then {
    switch (_vehicleType) do {
        case "rhsusf_stryker_m1126_m2_d";
        case "rhsusf_stryker_m1126_m2_wd";
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

if (_vehicle isKindOf "RHS_M2A2_Base") then {
    switch (_vehicleType) do {
        default {};
    };
};
