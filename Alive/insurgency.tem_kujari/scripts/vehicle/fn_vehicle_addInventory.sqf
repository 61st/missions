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
            [_vehicle, 4, 20, false, false] call FUNC(setCargoAttributes);
        };
    };
    
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

    // Interior
    switch (_vehicleType) do {
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("vehicle_medicalAtlas")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER("crate_medicalAtlas"),
                _vehicle
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

if (_vehicle isKindOf "APC_Tracked_02_base_F") then {
        switch (_vehicleType) do {
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


// Rotary Wing
if (_vehicle isKindOf "Helicopter_Base_H") then {
    switch (_vehicleType) do {
        case "CFP_B_USARMY_1991_UH_60M_MEV_WDL_01";
        case "CFP_B_USARMY_1991_UH_60M_MEV_Des_01";
        case "CFP_B_USMC_UH_1Y_Venom_MEV_DES_01";
        case "CFP_B_USARMY_2003_UH_60M_MEV_DES_01";
        case "B_Heli_Transport_01_medevac_F";
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

