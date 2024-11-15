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
    ["rhsusf_m1a2sep2_base", "Thunder-1 Desert (War Daddy)", [
        "z\lxim\addons\media\images\vehicles\abrams\wardaddy_br.paa",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_d_01_co.paa"],
                [1, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_d_02_co.paa"],
                [2, "\rhsusf\addons\rhsusf_m1a1\data\rhsusf_m1a1aim_d_03_co.paa"],
                [3, "\rhsusf\addons\rhsusf_m1a1\loaderspintle\data\loaderspintle_d_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_tuskia2_d_co.paa"],
                [5, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1slat_d_co.paa"],
                [6, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_co.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_crows_co.paa"],
                [11, "\z\lxim\addons\media\images\vehicles\abrams\th_d_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\wardaddy_br.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 2, true];
        }
    ]],
    ["rhsusf_m1a2sep2_base", "Thunder-2 Desert (War Mommy)", [
        "z\lxim\addons\media\images\vehicles\abrams\warmommy_br.paa",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_d_01_co.paa"],
                [1, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_d_02_co.paa"],
                [2, "\rhsusf\addons\rhsusf_m1a1\data\rhsusf_m1a1aim_d_03_co.paa"],
                [3, "\rhsusf\addons\rhsusf_m1a1\loaderspintle\data\loaderspintle_d_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_tuskia2_d_co.paa"],
                [5, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1slat_d_co.paa"],
                [6, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_co.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_crows_co.paa"],
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\5_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\warmommy_br.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 3, true];
        }
    ]],
    ["rhsusf_m1a2sep2_base", "Thunder-3 Desert (War Child)", [
        "z\lxim\addons\media\images\vehicles\abrams\BarrelArt_warchild_ca.paa",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_d_01_co.paa"],
                [1, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_d_02_co.paa"],
                [2, "\rhsusf\addons\rhsusf_m1a1\data\rhsusf_m1a1aim_d_03_co.paa"],
                [3, "\rhsusf\addons\rhsusf_m1a1\loaderspintle\data\loaderspintle_d_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_tuskia2_d_co.paa"],
                [5, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1slat_d_co.paa"],
                [6, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_co.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_crows_co.paa"],
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\6_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\warchild_br.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 3, true];
        }
    ]],

    ["rhsusf_m1a2sep2_base", "Thunder-1 (War Daddy)", [
        "z\lxim\addons\media\images\vehicles\abrams\wardaddy_br.paa",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_wd_01_co.paa"],
                [1, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_wd_02_co.paa"],
                [2, "\rhsusf\addons\rhsusf_m1a1\data\rhsusf_m1a1aim_wd_03_co.paa"],
                [3, "\rhsusf\addons\rhsusf_m1a1\loaderspintle\data\loaderspintle_wd_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_tuskia2_wd_co.paa"],
                [5, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1slat_wd_co.paa"],
                [6, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_wd_co.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_crows_co.paa"],
                [11, "\z\lxim\addons\media\images\vehicles\abrams\th_ca.paa"],
                [12, "\z\lxim\addons\media\images\vehicles\abrams\wardaddy_br.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 2, true];
        }
    ]],
    ["rhsusf_m1a2sep2_base", "Thunder-2 (War Mommy)", [
        "z\lxim\addons\media\images\vehicles\abrams\warmommy_br.paa",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_wd_01_co.paa"],
                [1, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_wd_02_co.paa"],
                [2, "\rhsusf\addons\rhsusf_m1a1\data\rhsusf_m1a1aim_wd_03_co.paa"],
                [3, "\rhsusf\addons\rhsusf_m1a1\loaderspintle\data\loaderspintle_wd_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_tuskia2_wd_co.paa"],
                [5, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1slat_wd_co.paa"],
                [6, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_wd_co.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_crows_co.paa"],
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_WD\5_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\warmommy_br.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 3, true];
        }
    ]],
    ["rhsusf_m1a2sep2_base", "Thunder-3 (War Child)", [
        "z\lxim\addons\media\images\vehicles\abrams\BarrelArt_warchild_ca.paa",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_wd_01_co.paa"],
                [1, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2_wd_02_co.paa"],
                [2, "\rhsusf\addons\rhsusf_m1a1\data\rhsusf_m1a1aim_wd_03_co.paa"],
                [3, "\rhsusf\addons\rhsusf_m1a1\loaderspintle\data\loaderspintle_wd_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_tuskia2_wd_co.paa"],
                [5, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1slat_wd_co.paa"],
                [6, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_wd_co.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a2\data\rhsusf_m1a2sepv2_crows_co.paa"],
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_WD\6_ca.paa"],
                [12, "z\lxim\addons\media\images\vehicles\abrams\warchild_br.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 3, true];
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
        }
    ]],

    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-1 Desert", [
        "",
        {
            [_vehicle, [
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_d_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_d_11.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_d_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_d_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"],
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_d_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-2 Desert", [
        "",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_d_co.paa"],
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_d_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_d_12.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_d_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_d_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\2_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-6 Desert", [
        "",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_d_co.paa"],
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_d_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_d_6.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_d_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_d_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\6_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-5 Desert", [
        "",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_d_co.paa"],
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_d_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_d_5.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_d_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_d_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\5_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-1 Dirty", [
        "",
        {
            [_vehicle, [
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_od_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_od_11.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_od_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_od_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_od_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_od_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_od_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-2 Dirty", [
        "",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_od_co.paa"],
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_od_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_od_12.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_od_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_od_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_od_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_od_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\2_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-6 Dirty", [
        "",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_od_co.paa"],
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_od_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_od_6.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_od_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_od_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_od_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_od_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\6_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-5 Dirty", [
        "",
        {
            [_vehicle, [
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_od_co.paa"],
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_od_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_od_5.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_od_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_od_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_od_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_od_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\5_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-1 Olive", [
        "",
        {
            [_vehicle, [
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_11.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-2 Olive", [
        "",
        {
            [_vehicle, [
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_12.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [0, "rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\2_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-6 Olive", [
        "",
        {
            [_vehicle, [
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_6.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\6_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_stryker_m1126_m2_base", "Outlaw 1-5 Olive", [
        "",
        {
            [_vehicle, [
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_5.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_ca.paa"],
                [7, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [8, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_co.paa"],
                [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\5_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [16, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["LXIM_vehicles_m1132_m2_wd", "Rhino Desert", [
        "",
        {
            [_vehicle, [
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_d_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_d_rhino.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_d_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_d_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1132_d_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa"],
                [7, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_d_co.paa"],
                [8, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_d_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"],
                [12, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_d_co.paa"],
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_d_co.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\2_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [17, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["LXIM_vehicles_m1132_m2_wd", "Rhino Olive ", [
        "",
        {
            [_vehicle, [
                [1, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_parts_co.paa"],
                [2, "\z\lxim\addons\media\images\vehicles\stryker\lxim_m1126_slat_rhino.paa"],
                [3, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_crows_co.paa"],
                [4, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_wheels_co.paa"],
                [5, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1132_co.paa"],
                [6, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_co.paa"],
                [7, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_acc_ca.paa"],
                [8, "\rhsusf\addons\rhsusf_m1a1\DUKE\data\duke_antennae_c_co.paa"],
                [9, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [10, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMFC\data\rhsusf_mfc_od_co.paa"],
                [11, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [12, "\rhsusf\addons\rhsusf_props\jerrycans\scepterMWC\data\rhsusf_mwc_od_co.paa"],
                [0, "\rhsusf\addons\rhsusf_stryker\data\rhsusf_m1126_hull_co.paa"],
                [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\2_ca.paa"],
                [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
                [15, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
                [16, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\Misc\no_ca.paa"],
                [17, "\z\lxim\addons\media\images\vehicles\stryker\lxim_hulldecal_catD_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],


    ["rhsusf_MATV_CROWS_base", "Outlaw 1-1A Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-1B Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-2A Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-2B Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-5 Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_15_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-6 Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_16_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Rhino Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_rhino_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["rhsusf_MATV_CROWS_base", "Outlaw 1-1A Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-1B Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-2A Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-2B Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-5 Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_15_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-6 Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_16_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Rhino Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_rhino_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["rhsusf_MATV_CROWS_base", "Outlaw 1-1A Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11a_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-1B Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11b_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-2A Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12a_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-2B Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12b_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-5 Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_15_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_CROWS_base", "Outlaw 1-6 Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_16_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOrhsusf_MATV_CROWS_baseF_CROWS_M2_base", "Rhino Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_rhino_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],


    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-1A Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-1B Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-2A Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-2B Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-5 Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_15_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-6 Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_16_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Rhino Woodland", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_rhino_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_wd_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_o_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-1A Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-1B Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-2A Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-2B Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-5 Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_15_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-6 Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_16_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Rhino Olive", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_rhino_wd.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_o_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretwd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_wdl_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_w_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_wd_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_wd_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_wd_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-1A Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11a_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-1B Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_11b_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-2A Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12a_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-2B Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_12b_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-5 Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_15_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Outlaw 1-6 Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_16_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_MATV_SOF_CROWS_M2_base", "Rhino Desert", [
        "",
        {
            [_vehicle, [
                [3, "\z\lxim\addons\media\images\vehicles\matv\lxim_matv_decal_rhino_ca.paa"],
                [0, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_ext_co.paa"],
                [1, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_wheel_co.paa"],
                [2, "rhsusf\addons\rhsusf_rg33l\data\rg33_turretd_co.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\data\rhsusf_camonet_des_co.paa"],
                [5, "rhsusf\addons\rhsusf_hmmwv\textures\mk64mount_d_co.paa"],
                [6, "rhsusf\addons\rhsusf_caiman\data\m153_co.paa"],
                [7, "rhsusf\addons\rhsusf_matv\data\rhsusf_matv_sof_d_co.paa"],
                [8, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1_CO.paa"],
                [9, "rhsusf\addons\rhsusf_matv\data\rhsusf_matvA1QNet_CA.paa"],
                [10, "rhsusf\addons\rhsusf_m1165\data\rhsusf_m11165a1_gmv_h246mount_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],


    ["rhsusf_RG33_CROWS_base", "Outlaw 1-1A Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_11a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Outlaw 1-1B Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_11b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Outlaw 1-2A Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_12a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Outlaw 1-2B Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_12b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Outlaw 1-5 Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_5_wd.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Outlaw 1-6 Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_6_wd.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Rhino Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_rhino_wd.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Perseus Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_Perseus_wd.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Thunder Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_thunder_wd.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["rhsusf_RG33_CROWS_base", "Outlaw 1-1A Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_11a.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Outlaw 1-1B Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_11b.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Outlaw 1-2A Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_12a.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Outlaw 1-2B Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_12b.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Outlaw 1-5 Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_5.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Outlaw 1-6 Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_6.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Rhino Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_rhino.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Perseus Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_Perseus.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_RG33_CROWS_base", "Thunder Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\M1238A1_Markings_thunder.paa"],
                [0, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["rhsusf_RG33_CROWS_base", "Toggle Duke", [
        "",
        {
            private _hide_rhinoAreAttached = _vehicle animationSourcePhase "hide_rhino";
            if (_hide_rhinoAreAttached == 1) then {
                _vehicle animateSource ["hide_rhino",0, true];
            } else {
                _vehicle animateSource ["hide_rhino",1, true];
            };
        }
    ]],


    ["rhsusf_M1239_CROWS_base", "Outlaw 1-1A Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_11a.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Outlaw 1-1B Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_11b.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Outlaw 1-2A Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_12a.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Outlaw 1-2B Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_12b.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Outlaw 1-5 Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_5.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Outlaw 1-6 Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_6.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Rhino Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_rhino.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Thunder Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_thunder.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Perseus Desert", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_Perseus.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_CO.paa"],
                [1, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Wheels_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_des_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["rhsusf_M1239_CROWS_base", "Outlaw 1-1A Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_11a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_wdl_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Outlaw 1-1B Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_11b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_wdl_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Outlaw 1-2A Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_12a_wd.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_wdl_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Outlaw 1-2B Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_12b_wd.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_wdl_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Outlaw 1-5 Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_5_wd.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_wdl_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Outlaw 1-6 Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_6_wd.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_wdl_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Rhino Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_rhino_wd.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_wdl_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Thunder Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_thunder_wd.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_wdl_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["rhsusf_M1239_CROWS_base", "Perseus Woodland", [
        "",
        {
            [_vehicle, [
                [2, "\z\lxim\addons\media\images\vehicles\matv\AUV_SOCOM_Decal_Perseus_wd.paa"],
                [0, "rhsusf\addons\rhsusf_SOCOMAUV\data\M1239_Main_WD_CO.paa"],
                [1, "rhsusf\addons\rhsusf_rg33\data\M1238A1_Wheels_WD_CO.paa"],
                [3, "rhsusf\addons\rhsusf_caiman\data\M153_WD_CO.paa"],
                [4, "rhsusf\addons\rhsusf_rg33l\Data\rhsusf_camonet_wdl_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],


    ["RHS_M2A3_BUSKIII", "Thunder-6 Olive (War Daddy)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_wardaddy_wd_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\BUSKIII_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a1\duke\data\duke_antennae_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["RHS_M2A3_BUSKIII", "Thunder-1 Olive (War Mommy)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_warmommy_wd_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\BUSKIII_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a1\duke\data\duke_antennae_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["RHS_M2A3_BUSKIII", "Thunder-2 Olive (War Child)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_warchild_wd_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\BUSKIII_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a1\duke\data\duke_antennae_wd_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["RHS_M2A3_BUSKIII", "Thunder-6 Desert (War Daddy)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_wardaddy_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\buskiii\a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\buskiii_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a1\duke\data\duke_antennae_d_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["RHS_M2A3_BUSKIII", "Thunder-1 Desert (War Mommy)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_warmommy_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\buskiii\a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\buskiii_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a1\duke\data\duke_antennae_d_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["RHS_M2A3_BUSKIII", "Thunder-2 Desert (War Child)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_warchild_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\buskiii\a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\buskiii_co.paa"],
                [4, "\rhsusf\addons\rhsusf_m1a1\duke\data\duke_antennae_d_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["RHS_M6", "Thunder-6 Olive (War Daddy)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_wardaddy_wd_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_base_co.paa"],
                [4, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_base_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["RHS_M6", "Thunder-1 Olive (War Mommy)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_warmommy_wd_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_base_co.paa"],
                [4, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_base_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["RHS_M6", "Thunder-2 Olive (War Child)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_warchild_wd_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_base_co.paa"],
                [4, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\woodland\m6_base_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["RHS_M6", "Thunder-6 Desert (War Daddy)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_wardaddy_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\base_co.paa"],
                [4, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\base_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["RHS_M6", "Thunder-1 Desert (War Mommy)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_warmommy_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\base_co.paa"],
                [4, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\base_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["RHS_M6", "Thunder-2 Desert (War Child)", [
        "",
        {
            [_vehicle, [
                [0, "\z\lxim\addons\media\images\vehicles\brad\base_warchild_co.paa"],
                [1, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\a3_co.paa"],
                [2, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\ultralp_co.paa"],
                [3, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\base_co.paa"],
                [4, "\rhsusf\addons\rhsusf_a2port_armor\m2a2_bradley\data\base_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
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
