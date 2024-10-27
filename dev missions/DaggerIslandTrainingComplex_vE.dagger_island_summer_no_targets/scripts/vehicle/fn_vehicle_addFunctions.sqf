#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function apply functions to local vehicles.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call YMF_fnc_vehicle_addFunctions;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!isNil{_vehicle getVariable QEGVAR(VehicleFunc,Functions)}) exitWith {SHOW_WARNING_1("VehicleFunctions", "Vehicle functions already applied for %1 [%2].", _vehicle, typeOf _vehicle);};

INFO_2("VehicleFunctions", "Applying vehicle functions to %1 (%2)", _vehicle, typeOf _vehicle);

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,type), typeOf _vehicle];

_vehicle setVariable [QEGVAR(VehicleFunc,Functions), true];


// Jump and get out systems universal for all airframes and non nato factions.
if (_vehicle isKindOf "Heli_Transport_01_base_F") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "RHS_UH60_Base") then {
    switch (_vehicleType) do {
        case "RHS_UH60M_MEV2_d";
        case "RHS_UH60M_MEV_d";
        case "RHS_UH60M_MEV2";
        case "RHS_UH60M_MEV";
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};
if (_vehicle isKindOf "rhs_uh1h_base") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addEscapeWreck);
};
if (_vehicle isKindOf "RHS_UH1_Base") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "RHS_Mi24_base") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "RHS_Mi8_base") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "Heli_Transport_02_base_F") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "RHS_C130J_Base") then {
    [_vehicle,nil,nil,nil,nil,true] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "USAF_C130J") then {
    [_vehicle,nil,nil,nil,nil,true] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "USAF_C17") then {
    [_vehicle,nil,nil,nil,nil,true] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if ((_vehicle isKindOf "USAF_F22_Heavy") || (_vehicle isKindOf "USAF_F35A") || (_vehicle isKindOf "USAF_A10")) then {
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "CUP_B_UH60M_US") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "CUP_B_UH60M_FFV_US") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "CUP_B_UH60M_Unarmed_FFV_MEV_US") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "CUP_B_AH6J_USA") then {
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "CUP_B_MH6M_USA") then {
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "CUP_B_MH6J_OBS_USA") then {
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "CUP_B_CH47F_VIV_USA") then {
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "CUP_B_CH47F_USA") then {
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "CUP_B_AH64D_DL_USA") then {
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "vtx_MH60M") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "TF373_SOAR_MH47G_Base") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "B_Plane_Transport_01_infantry_F") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle isKindOf "VTOL_01_infantry_base_F") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

