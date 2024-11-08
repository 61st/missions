#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add cosmetic customization action to vehicles
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call YMF_fnc_vehicle_addCosmeticSelection;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

private _textures = [
    ["rhsusf_m1a1tank_base", "Thunder (120mm IV)", [
      "z\lxim\addons\media\images\vehicles\abrams\BarrelArt_120mmIV_ca.paa",
        {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\BarrelArt_120mmIV_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 1, true];
        }
    ]],
    ["rhsusf_m1a1tank_base", "Thunder-1 (War Daddy)", [
      "z\lxim\addons\media\images\vehicles\abrams\wardaddy_br.paa",
        {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\wardaddy_br.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 2, true];
        }
    ]],
    ["rhsusf_m1a1tank_base", "Thunder-2 (War Mommy)", [
      "z\lxim\addons\media\images\vehicles\abrams\warmommy_br.paa",
        {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\warmommy_br.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 3, true];
        }
    ]],
    ["rhsusf_m1a1tank_base", "Thunder-3 (War CHILD)", [
      "z\lxim\addons\media\images\vehicles\abrams\BarrelArt_warchild_ca.paa",
        {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\warchild_br.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 3, true];
        }
    ]],
    ["B_AFV_Wheeled_01_up_cannon_F", "Woodland Paint", [
      "",
        {
            [_vehicle,[
                [0, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext1_green_co.paa"],
                [1, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext2_green_co.paa"],
                [2, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_wheel_green_co.paa"],
                [3, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext3_co.paa"],
                [4, "a3\armor_f_tank\afv_wheeled_01\data\afv_commander_tow_co.paa"],
                [5, "a3\armor_f\data\camonet_nato_green_co.paa"],
                [6, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext3_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["B_AFV_Wheeled_01_up_cannon_F", "Desert Paint", [
      "",
        {
            [_vehicle, [
                [0, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext1_co.paa"],
                [1, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext2_co.paa"],
                [2, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_wheel_co.paa"],
                [3, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext3_sand_co.paa"],
                [4, "a3\armor_f_tank\afv_wheeled_01\data\afv_commander_tow_sand_co.paa"],
                [5, "a3\armor_f\data\camonet_nato_desert_co.paa"],
                [6, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext3_sand_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["B_AFV_Wheeled_01_cannon_F", "Woodland Paint", [
      "",
        {
            [_vehicle,[
                [0, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext1_green_co.paa"],
                [1, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext2_green_co.paa"],
                [2, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_wheel_green_co.paa"],
                [3, "a3\armor_f\data\camonet_nato_green_co.paa"],
                [4, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext3_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["B_AFV_Wheeled_01_cannon_F", "Desert Paint", [
      "",
        {
            [_vehicle,[
                [0, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext1_co.paa"],
                [1, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext2_co.paa"],
                [2, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_wheel_co.paa"],
                [3, "a3\armor_f\data\camonet_nato_desert_co.paa"],
                [4, "a3\armor_f_tank\afv_wheeled_01\data\afv_wheeled_01_ext3_sand_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
        // USAF_A10
    ["USAF_A10", "Clean", [
      "",
        {
            _vehicle animateSource ["serial_nose",1, true];
            _vehicle animateSource ["serial_gear",0, true];
            [_vehicle, [
                [0, "\usaf_a10\skins\a10_01_worn_co.paa"],

                // Tail Number
                [25, ""], //tail_art
                [26, "z\lxim\addons\media\images\logo_512.paa"],
                [27, "\usaf_main\characters\u_dg.paa"],
                [28, "\usaf_main\characters\s_dg.paa"],

                [29,"\usaf_main\data\tail\fy\70_d.paa"],

                [30, "\usaf_main\characters\numbers\n_0_dg.paa"],
                [21, "\usaf_main\characters\numbers\n_6_dg.paa"],
                [22, "\usaf_main\characters\numbers\n_1_dg.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["USAF_A10", "Shark", [
      "",
        {
            _vehicle animateSource ["serial_nose",0, true];
            _vehicle animateSource ["serial_gear",1, true];
            [_vehicle, [
                [0, "\usaf_a10\skins\a10_01_worn_shark_co.paa"],

                // Tail Number
                [25, ""], //tail_art
                [26, "z\lxim\addons\media\images\logo_512.paa"],
                [27, "\usaf_main\characters\u_dg.paa"],
                [28, "\usaf_main\characters\s_dg.paa"],

                [29,"\usaf_main\data\tail\fy\70_d.paa"],

                [30, "\usaf_main\characters\numbers\n_0_dg.paa"],
                [21, "\usaf_main\characters\numbers\n_6_dg.paa"],
                [22, "\usaf_main\characters\numbers\n_1_dg.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-1", [
      "",
        {
            [_vehicle, [
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-2", [
      "",
        {
            [_vehicle, [
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\2_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-6", [
      "",
        {
            [_vehicle, [
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\6_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-5", [
      "",
        {
            [_vehicle, [
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\5_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1127_base", "Outlaw 1-1", [
      "",
        {
            [_vehicle, [
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [17, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [18, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1127_base", "Outlaw 1-2", [
      "",
        {
            [_vehicle, [
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\2_ca.paa"],
                [17, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [18, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1127_base", "Outlaw 1-6", [
      "",
        {
            [_vehicle, [
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\6_ca.paa"],
                [17, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [18, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1127_base", "Outlaw 1-5", [
      "",
        {
            [_vehicle, [
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\5_ca.paa"],
                [17, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [18, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1134_base", "Outlaw 1-1", [
      "",
        {
            [_vehicle, [
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [17, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [18, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1134_base", "Outlaw 1-2", [
      "",
        {
            [_vehicle, [
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\2_ca.paa"],
                [17, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [18, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1134_base", "Outlaw 1-6", [
      "",
        {
            [_vehicle, [
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\6_ca.paa"],
                [17, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [18, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1134_base", "Outlaw 1-5", [
      "",
        {
            [_vehicle, [
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\5_ca.paa"],
                [17, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [18, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-1A", [
      "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11a_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-1B", [
      "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11b_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-2A", [
      "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12a_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-2B", [
      "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12b_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-5", [
      "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_15_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-6", [
      "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_16_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Rhino", [
      "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_rhino_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "1/61 MECH";
        }
    ]]
];

{
    _x params ["_classname", "_displayName", "_textureCode"];
    if (_vehicle isKindOf _classname) then {

        private _statement = {
            params ["_vehicle", "_player", "_params"];
            _params params [["_texture", "", [""]], ["_code", {}, [{}]]];

            call _code;
            [
                [],
                ["Vehicle art have been changed"],
                [_texture, 10],
                [""]
            ] call CBA_fnc_notify;
        };

        private _category = ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat), QEGVAR(Actions_Vehicle,Cosmetic_Cat)];
        private _action = [format ["YMF_Cosmetic_%1_%2", _classname, _forEachIndex], _displayName, "", _statement, {true}, nil, _textureCode] call ace_interact_menu_fnc_createAction;
        [_vehicle, 1, _category, _action] call ace_interact_menu_fnc_addActionToObject;

        INFO_4("VehicleCosmeticSelector", "Selector for classname '%1' named '%2' added to %3 (%4)", typeOf _vehicle, _displayName, _vehicle, typeOf _vehicle);
    };
} forEach _textures;
