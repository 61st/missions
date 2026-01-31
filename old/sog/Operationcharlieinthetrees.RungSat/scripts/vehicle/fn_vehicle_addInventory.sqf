#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function changes the inventory of the given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call YMF_fnc_vehicle_addInventory;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!EGVAR(Settings,enableVehicleInventory)) exitWith {};
if (!isNil{_vehicle getVariable QEGVAR(VehicleFunc,Inventory)}) exitWith {SHOW_WARNING_2("VehicleInventory", "Vehicle inventory already applied for %1 [%2].", _vehicle, typeOf _vehicle);};
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

INFO_2("VehicleInventory", "Applying vehicle inventory to %1 (%2)", _vehicle, typeOf _vehicle);

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,type), typeOf _vehicle];


// Remove ACE Cargo
private _cargoArray = _vehicle getVariable ["ace_cargo_loaded",[]];
{
    [_x, _vehicle] call ace_cargo_fnc_removeCargoItem;
} forEach _cargoArray;

// Do not allow renaming of vehicles
_vehicle setVariable ["ace_cargo_noRename", true, true];

_vehicle setVariable [QEGVAR(VehicleFunc,Inventory), true, true];

if (_vehicleType == "EMPTY") exitWith { [_vehicle, []] call FUNC(setCargo); };


/* Ground Vehicles -------------------------------------------------------------------------------------------------- */
if (_vehicle iskindOf "MRAP_01_base_F") then {
    
    // Cargo
    switch (true) do {
        case (_vehicle iskindOf "rhsusf_m998_w_2dr"): {
            [_vehicle, 8, 20, false, false] call FUNC(setCargoAttributes);
        };
        case (_vehicle iskindOf "rhsusf_m1152_base"): {
            [_vehicle, 20, 20, false, false] call FUNC(setCargoAttributes);
        };
        default {
            [_vehicle, 4, 20, false, false] call FUNC(setCargoAttributes);
        };
    };
    
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

    // Interior
    switch (_vehicleType) do {
        case "rhsusf_m998_d_2dr_fulltop";
        case "rhsusf_m998_w_2dr_fulltop";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("vehicle_medicalAtlas")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER("crate_medicalAtlas"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        case "rhsusf_m1165a1_gmv_m2_m240_socom_d";
        case "rhsusf_m1165a1_gmv_m2_m240_socom_w": {
            [_vehicle, 
                GET_CONTAINER("vehicle_HMMWV")
            ] call FUNC(setCargo);
        };
        case "rhsusf_M1237_MK19_usarmy_d";
        case "rhsusf_M1237_MK19_usarmy_W";
        case "rhsusf_m1165a1_gmv_mk19_m240_socom_d";
        case "rhsusf_m1165a1_gmv_mk19_m240_socom_w": {
            [_vehicle, 
                GET_CONTAINER("vehicle_HMMWV_Weapons")
            ] call FUNC(setCargo);
        };
        case "rhsusf_M1239_socom_d";
        case "rhsusf_M1239_M2_socom_d";
        case "rhsusf_M1239_MK19_socom_d";
        case "rhsusf_M1239_M2_Deploy_socom_d";
        case "rhsusf_M1239_MK19_Deploy_socom_d": {
            [_vehicle, 15, 38, false, false] call FUNC(setCargoAttributes);

            // Emergency kit in case of tire damage and fuel loss.
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["FlexibleTank_01_forest_F", _vehicle, true] call ace_cargo_fnc_loadItem; // Emergency Fuel Tank
            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf_sup")
            ] call FUNC(setCargo);

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_resupply_general"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);

            // 2 Stingers to distribute to 1 section.
            ["Box_NATO_WpsLaunch_F", 
                GET_CONTAINER("crate_stinger"), 
                _vehicle, nil, "MANPAD"
            ] call FUNC(createCargoCrate);

            ["Box_NATO_WpsLaunch_F", 
                GET_CONTAINER("crate_stinger"), 
                _vehicle, nil, "MANPAD"
            ] call FUNC(createCargoCrate);
        };
        case "rhsusf_M1238A1_socom_d";
        case "rhsusf_M1238A1_M2_socom_d";
        case "rhsusf_M1238A1_Mk19_socom_d": {
            [_vehicle, 15, 38, false, false] call FUNC(setCargoAttributes);

            // Emergency kit in case of tire damage and fuel loss.
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["FlexibleTank_01_forest_F", _vehicle, true] call ace_cargo_fnc_loadItem; // Emergency Fuel Tank

            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("crate_resupply_general")
            ] call FUNC(setCargo);

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_resupply_general"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_HMMWV")
            ] call FUNC(setCargo);
        };
    };
};

if (_vehicle isKindOf "APC_Tracked_01_base_F") then {
        switch (_vehicleType) do {
        case "rhsusf_m113d_usarmy_medical";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("tracked_medical")
            ] call FUNC(setCargo);

            ["ACM_MedicalSupplyCrate_Advanced",
                GET_CONTAINER("crate_medical"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_Tracked")
            ] call FUNC(setCargo);
        };
    };
};

if (_vehicle isKindOf "APC_Wheeled_01_base_F") then {
    switch (_vehicleType) do {
        case "B_APC_Wheeled_01_medical_F";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("wheeled_medical")
            ] call FUNC(setCargo);

            ["ACM_MedicalSupplyCrate_Advanced",
                GET_CONTAINER("crate_medical"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_Wheeled")
            ] call FUNC(setCargo);
        };
    };
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
};

if (_vehicle isKindOf "rhsusf_fmtv_base") then {
    switch (_vehicleType) do {
        case "rhsusf_M1230a1_usarmy_wd";
        case "rhsusf_M1230a1_usarmy_d";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("wheeled_medical")
            ] call FUNC(setCargo);

            ["ACM_MedicalSupplyCrate_Advanced",
                GET_CONTAINER("crate_medical"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_Wheeled")
            ] call FUNC(setCargo);
        };
    };
};

if (_vehicle isKindOf "Truck_01_base_F") then {
    switch (_vehicleType) do {
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("wheeled_medical")
            ] call FUNC(setCargo);

            ["ACM_MedicalSupplyCrate_Advanced",
                GET_CONTAINER("crate_medical"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_Wheeled")
            ] call FUNC(setCargo);
        };
    };
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
};

if (_vehicle isKindOf "lxim_mk20_base_F") then {
    [_vehicle, 8, 38, false, false] call FUNC(setCargoAttributes);
    switch (_vehicleType) do {
        case "lxim_mev_mk20";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf_med")
            ] call FUNC(setCargo);

            ["ACM_MedicalSupplyCrate_Advanced",
                GET_CONTAINER("crate_medical"),
                _vehicle
            ] call FUNC(createCargoCrate);
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
        };
        case "lxim_repair_mk20";
        case "SUP": {
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf_sup")
            ] call FUNC(setCargo);
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf")
            ] call FUNC(setCargo);
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
        };
    };
};

if (_vehicle isKindOf "rhsusf_stryker_base") then {
    [_vehicle, 10, 40, false, false] call FUNC(setCargoAttributes);

    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    
    [_vehicle, GET_CONTAINER("vehicle_stryker")] call FUNC(setCargo);
};

if (_vehicle isKindOf "RHS_M2A2_Base") then {
    [_vehicle, 6, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        GET_CONTAINER("vehicle_bradley")
    ] call FUNC(setCargo);

    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;
};

if (_vehicle isKindOf "rhsusf_m1a1tank_base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);
    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;

    [_vehicle, 
        GET_CONTAINER("vehicle_bradley")
    ] call FUNC(setCargo);
};

if (_vehicle isKindOf "RHS_MELB_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

/* water toys ------------------------------------------------------------------------------------------------------- */
if (_vehicle isKindOf "Boat_F") then {
        switch (_vehicleType) do {
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_boat")
            ] call FUNC(setCargo);
        };
    };
};

// Deployable
if (_vehicle isKindOf "rhs_m2staticmg_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

if (_vehicle isKindOf "RHS_MK19_TriPod_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

if (_vehicle isKindOf "RHS_TOW_TriPod_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

// Rotary Wing
if (_vehicle isKindOf "Helicopter_Base_H") then {
    switch (_vehicleType) do {
        case "CFP_B_USARMY_1991_UH_60M_MEV_WDL_01";
        case "CFP_B_USARMY_1991_UH_60M_MEV_Des_01";
        case "CFP_B_USMC_UH_1Y_Venom_MEV_DES_01";
        case "CFP_B_USARMY_2003_UH_60M_MEV_DES_01";
        case "B_Heli_Transport_01_medevac_F";
        case "RHS_UH60M_MEV2_d";
        case "RHS_UH60M_MEV_d";
        case "RHS_UH60M_MEV2";
        case "RHS_UH60M_MEV";
        case "B_W_Heli_Transport_01_medevac_F"; 
        case "B_T_Heli_Transport_01_medevac_F"; 
        case "B_Heli_Transport_01_medevac_F";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("helo_medical")
            ] call FUNC(setCargo);

            ["ACM_MedicalSupplyCrate_Advanced",
                GET_CONTAINER("crate_medical"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_heliTransport")
            ] call FUNC(setCargo);
        };
    };
};

if (_vehicle isKindOf "Heli_Transport_01_base_F") then {
    switch (_vehicleType) do {
        case "CFP_B_USARMY_1991_UH_60M_MEV_WDL_01";
        case "CFP_B_USARMY_1991_UH_60M_MEV_Des_01";
        case "CFP_B_USMC_UH_1Y_Venom_MEV_DES_01";
        case "CFP_B_USARMY_2003_UH_60M_MEV_DES_01";
        case "B_Heli_Transport_01_medevac_F";
        case "RHS_UH60M_MEV2_d";
        case "RHS_UH60M_MEV_d";
        case "RHS_UH60M_MEV2";
        case "RHS_UH60M_MEV";
        case "B_W_Heli_Transport_01_medevac_F"; 
        case "B_T_Heli_Transport_01_medevac_F"; 
        case "B_Heli_Transport_01_medevac_F";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("helo_medical")
            ] call FUNC(setCargo);

            ["ACM_MedicalSupplyCrate_Advanced",
                GET_CONTAINER("crate_medical"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_heliTransport")
            ] call FUNC(setCargo);
        };
    };
};

if (_vehicle isKindOf "Heli_Transport_03_base_F") then {
    switch (_vehicleType) do {
        case "YMF_helicopters_B_Heli_Medevac_031_F";
        case "YMF_helicopters_B_Heli_Medevac_03dazt_F";
        case "YMF_helicopters_B_Heli_Medevac_03daz_F"; 
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("helo_medical")
            ] call FUNC(setCargo);

            ["ACM_MedicalSupplyCrate_Advanced",
                GET_CONTAINER("crate_medical"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_heliTransport")
            ] call FUNC(setCargo);
        };
    };
};
        
if (_vehicle isKindOf "Heli_EC_01_base_RF") then {
    switch (_vehicleType) do {
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("helo_medical")
            ] call FUNC(setCargo);

            ["ACM_MedicalSupplyCrate_Advanced",
                GET_CONTAINER("crate_medical"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_heliTransport")
            ] call FUNC(setCargo);
        };
    };
};

if (_vehicle isKindOf "Heli_Transport_02_base_F") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_heliTransport")
    ] call FUNC(setCargo);
};

if (_vehicle isKindOf "TF373_SOAR_MH47G_Base") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_heliTransport")
    ] call FUNC(setCargo);
};

if (_vehicle isKindOf "vtx_MH60M") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_heliTransport")
    ] call FUNC(setCargo);
};

if (_vehicle isKindOf "RHS_AH64_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

// Fixed Wing
if (_vehicle isKindOf "Plane_Transport_01_base_F") then {
    [_vehicle, 45, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        GET_CONTAINER("vehicle_planeTransport")
    ] call FUNC(setCargo);
};

if (_vehicle isKindOf "VTOL_01_unarmed_base_F") then {
    [_vehicle, 45, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        GET_CONTAINER("vehicle_planeTransport")
    ] call FUNC(setCargo);
};

if (_vehicle isKindOf "RHS_C130J_Base") then {
    [_vehicle, 45, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        GET_CONTAINER("vehicle_planeTransport")
    ] call FUNC(setCargo);
};

/* drones ----------------------------------------------------------------------------------------------------------- */
if (_vehicle isKindOf "UAV_06_base_F") then {
    switch (_vehicleType) do {
        case "B_UAV_06_medical_F"; 
        case "Aegis_B_D_UAV_06_medical_F"; 
        case "B_T_UAV_06_medical_F"; 
        case "B_W_UAV_06_medical_F";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("droneair_medical")
            ] call FUNC(setCargo);

        };
        default {
            [_vehicle, 
                GET_CONTAINER("droneair_ammo")
            ] call FUNC(setCargo);
        };
    };
};

if (_vehicle isKindOf "UGV_01_base_F") then {
    switch (_vehicleType) do {
        case "B_T_UGV_01_medical_olive_F";
        case "B_W_UGV_01_medical_F";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("wheeled_medical")
            ] call FUNC(setCargo);

        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_Wheeled")
            ] call FUNC(setCargo);
        };
    };
};

