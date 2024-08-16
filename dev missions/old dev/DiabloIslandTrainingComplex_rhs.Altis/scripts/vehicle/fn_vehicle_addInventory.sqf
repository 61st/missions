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

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,Type), typeOf _vehicle];


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
if (_vehicle iskindOf "lxim_outlaw_base_F") then {
    [_vehicle, 15, 38, false, false] call FUNC(setCargoAttributes);
    
    // Emergency kit in case of tire damage and fuel loss.
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["FlexibleTank_01_forest_F", _vehicle, true] call ace_cargo_fnc_loadItem; // Emergency Fuel Tank

    switch (_vehicleType) do {

        case "lxim_outlaw_g";
        case "lxim_outlaw_d";
        case "lxim_outlaw_g_V11";
        case "lxim_outlaw_g_V12";
        case "lxim_outlaw_d_V11";
        case "lxim_outlaw_d_V12";
        case "lxim_outlaw_g_Vhq";
        case "lxim_outlaw_d_Vhq": {
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf")
            ] call FUNC(setCargo);
            
            // KAC_LWAMG with sight into vehicle inventory and missles
            _vehicle addWeaponWithAttachmentsCargoGlobal [["SPS_KAC_LWAMG_Black_F","","","sps_vortex_spitfire_gen2_x5_RMR_black",["SPS_KAC_LWAMG_100rnd_Box_M80A1",100],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fgm148","","","",["rhs_fgm148_magazine_AT",1],[],""],2]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fim92","","","",[],[],""],1]; 

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_resupply_general"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
        };

        case "lxim_outlaw_Unarmed_d";
        case "lxim_outlaw_Unarmed_g";
        case "MED": {
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf_med")
            ] call FUNC(setCargo);
            
            // Supply Crate
            ["ace_medicalSupplyCrate",
                GET_CONTAINER("crate_medicalInfantry"),
                _vehicle, nil, "Medical Supply Crate"
            ] call FUNC(createCargoCrate);
        };

        case "lxim_outlaw_repair_d";
        case "lxim_outlaw_repair_g": {
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf_sup")
            ] call FUNC(setCargo);
            
            // KAC_LWAMG with sight into vehicle inventory and missles
            _vehicle addWeaponWithAttachmentsCargoGlobal [["SPS_KAC_LWAMG_Black_F","","","sps_vortex_spitfire_gen2_x5_RMR_black",["SPS_KAC_LWAMG_100rnd_Box_M80A1",100],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fgm148","","","",["rhs_fgm148_magazine_AT",1],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fim92","","","",["CUP_Stinger_M",1],[],""],1]; 

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_resupply_general"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
        };

        default {
            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf")
            ] call FUNC(setCargo);

            // KAC_LWAMG with sight into vehicle inventory
            _vehicle addWeaponWithAttachmentsCargoGlobal [["SPS_KAC_LWAMG_Black_F","","","sps_vortex_spitfire_gen2_x5_RMR_black",["SPS_KAC_LWAMG_100rnd_Box_M80A1",100],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fgm148","","","",["rhs_fgm148_magazine_AT",1],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fim92","","","",[],[],""],1]; 


            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_resupply_general"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
        };
        

    };
};

if (_vehicle iskindOf "lxim_outlaw_eng_base_F") then {
    [_vehicle, 15, 38, false, false] call FUNC(setCargoAttributes);
    
    // Emergency kit in case of tire damage and fuel loss.
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["FlexibleTank_01_forest_F", _vehicle, true] call ace_cargo_fnc_loadItem; // Emergency Fuel Tank

    switch (_vehicleType) do {

        case "lxim_outlaw_d_rino";
        case "lxim_outlaw_g_rino": {
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf_eng")
            ] call FUNC(setCargo);
            
            // KAC_LWAMG with sight into vehicle inventory and missles
            _vehicle addWeaponWithAttachmentsCargoGlobal [["SPS_KAC_LWAMG_Black_F","","","sps_vortex_spitfire_gen2_x5_RMR_black",["SPS_KAC_LWAMG_100rnd_Box_M80A1",100],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fgm148","","","",["rhs_fgm148_magazine_AT",1],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fim92","","","",[],[],""],1]; 

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_resupply_general"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
        };

        default {
            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf")
            ] call FUNC(setCargo);

            // KAC_LWAMG with sight into vehicle inventory
            _vehicle addWeaponWithAttachmentsCargoGlobal [["SPS_KAC_LWAMG_Black_F","","","sps_vortex_spitfire_gen2_x5_RMR_black",["SPS_KAC_LWAMG_100rnd_Box_M80A1",100],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fgm148","","","",["rhs_fgm148_magazine_AT",1],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fim92","","","",[],[],""],1]; 


            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_resupply_general"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
        };
        

    };
};

if (_vehicle iskindOf "lxim_outlaw_AA_base_F") then {
    [_vehicle, 15, 38, false, false] call FUNC(setCargoAttributes);
    
    // Emergency kit in case of tire damage and fuel loss.
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["FlexibleTank_01_forest_F", _vehicle, true] call ace_cargo_fnc_loadItem; // Emergency Fuel Tank

    switch (_vehicleType) do {

        case "lxim_outlaw_AA_g";
        case "lxim_outlaw_AA_d";
        case "lxim_outlaw_AA_g_V11";
        case "lxim_outlaw_AA_g_V12";
        case "lxim_outlaw_AA_d_V11";
        case "lxim_outlaw_AA_d_V12",
        case "lxim_outlaw_AA_d_Vhq",
        case "lxim_outlaw_AA_g_Vhq": {
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf")
            ] call FUNC(setCargo);
            
            // KAC_LWAMG with sight into vehicle inventory and missles
            _vehicle addWeaponWithAttachmentsCargoGlobal [["SPS_KAC_LWAMG_Black_F","","","sps_vortex_spitfire_gen2_x5_RMR_black",["SPS_KAC_LWAMG_100rnd_Box_M80A1",100],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fgm148","","","",["rhs_fgm148_magazine_AT",1],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fim92","","","",[],[],""],2]; 

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_resupply_general"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
        };

        default {
            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_ampf")
            ] call FUNC(setCargo);

            // KAC_LWAMG with sight into vehicle inventory
            _vehicle addWeaponWithAttachmentsCargoGlobal [["SPS_KAC_LWAMG_Black_F","","","sps_vortex_spitfire_gen2_x5_RMR_black",["SPS_KAC_LWAMG_100rnd_Box_M80A1",100],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fgm148","","","",["rhs_fgm148_magazine_AT",1],[],""],1]; 
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_fim92","","","",[],[],""],1]; 


            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_resupply_general"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
        };
    };
};

if (_vehicle iskindOf "MRAP_01_base_F") then {
        switch (_vehicleType) do {
        default {
            [_vehicle, 4, 20, false, false] call FUNC(setCargoAttributes);
        };
    };
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

    // Interior
    switch (_vehicleType) do {
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("wheeled_medical")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER("crate_medicalInfantry"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_Wheeled")
            ] call FUNC(setCargo);
            // missles
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_M136","","","",[],[],""],2]; 
        };
    };
};

if (_vehicle iskindOf "APC_Tracked_01_base_F") then {
        switch (_vehicleType) do {
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_Tracked")
            ] call FUNC(setCargo);
        };
    };
};

if (_vehicle iskindOf "APC_Wheeled_01_base_F") then {
    switch (_vehicleType) do {
        case "B_APC_Wheeled_01_medical_F";
        case "rhsusf_M1230a1_usarmy_wd";
        case "rhsusf_M1230a1_usarmy_d";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("wheeled_medical")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
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

if (_vehicle iskindOf "rhsusf_fmtv_base") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_Wheeled")
    ] call FUNC(setCargo);
};

if (_vehicle iskindOf "Truck_01_base_F") then {
    switch (_vehicleType) do {
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("wheeled_medical")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
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

if (_vehicle iskindOf "rhsusf_stryker_base") then {
    [_vehicle, 6, 38, false, false] call FUNC(setCargoAttributes);

    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    
    switch (_vehicleType) do {
        case "rhsusf_stryker_m1126_m2_d";
        case "rhsusf_stryker_m1126_m2_wd";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("wheeled_medical")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER("crate_medical"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_stryker")
            ] call FUNC(setCargo);
        };
    };
    ["FlexibleTank_01_forest_F", false, _vehicle, 1] call FUNC(createCargoCrate);
};

if (_vehicle iskindOf "RHS_M2A2_Base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        GET_CONTAINER("vehicle_bradley")
    ] call FUNC(setCargo);

    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;
};

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);
    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;

    [_vehicle, 
        GET_CONTAINER("vehicle_bradley")
    ] call FUNC(setCargo);
};

if (_vehicle iskindOf "RHS_MELB_base") then {
    [_vehicle, []] call FUNC(setCargo);
};


/* water toys ------------------------------------------------------------------------------------------------------- */
if (_vehicle iskindOf "Boat_F") then {
        switch (_vehicleType) do {
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_boat")
            ] call FUNC(setCargo);
        };
    };
};

// Deployable
if (_vehicle iskindOf "rhs_m2staticmg_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

if (_vehicle iskindOf "RHS_MK19_TriPod_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

if (_vehicle iskindOf "RHS_TOW_TriPod_base") then {
    [_vehicle, []] call FUNC(setCargo);
};


// Rotary Wing
if (_vehicle iskindOf "Helicopter_Base_H") then {
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

            ["ace_medicalSupplyCrate",
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

if (_vehicle iskindOf "Heli_Transport_01_base_F") then {
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

            ["ace_medicalSupplyCrate",
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

if (_vehicle iskindOf "Heli_Transport_03_base_F") then {
    switch (_vehicleType) do {
        case "YMF_helicopters_B_Heli_Medevac_031_F";
        case "YMF_helicopters_B_Heli_Medevac_03dazt_F";
        case "YMF_helicopters_B_Heli_Medevac_03daz_F"; 
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("helo_medical")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
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
        
if (_vehicle iskindOf "Heli_EC_01_base_RF") then {
    switch (_vehicleType) do {
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("helo_medical")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
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

if (_vehicle iskindOf "Heli_Transport_02_base_F") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_heliTransport")
    ] call FUNC(setCargo);
};


if (_vehicle iskindOf "TF373_SOAR_MH47G_Base") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_heliTransport")
    ] call FUNC(setCargo);
};

if (_vehicle iskindOf "vtx_MH60M") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_heliTransport")
    ] call FUNC(setCargo);
};

if (_vehicle iskindOf "RHS_AH64_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

// Fixed Wing
if (_vehicle iskindOf "Plane_Transport_01_base_F") then {
    [_vehicle, 45, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        GET_CONTAINER("vehicle_planeTransport")
    ] call FUNC(setCargo);
};

if (_vehicle iskindOf "VTOL_01_unarmed_base_F") then {
    [_vehicle, 45, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        GET_CONTAINER("vehicle_planeTransport")
    ] call FUNC(setCargo);
};

if (_vehicle iskindOf "RHS_C130J_Base") then {
    [_vehicle, 45, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        GET_CONTAINER("vehicle_planeTransport")
    ] call FUNC(setCargo);
};

/* drones ----------------------------------------------------------------------------------------------------------- */
if (_vehicle iskindOf "UAV_06_base_F") then {
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

if (_vehicle iskindOf "UGV_01_base_F") then {
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

