class grenadier12 {
    name = "Grenadier";
    description = "The one who lobs the boom";
    traits[] = {};
    customVariables[] = {
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",0,true},
    };

    icon = "z\LXIM\addons\media\images\Icons\iconman_red.paa";

    defaultLoadout[] = {
            {"rhs_weap_m4a1_m320","","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_USMC",{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",30},{},"rhsusf_acc_grip3"},{"rhs_weap_M136","","","",{},{},""},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp_tuck_trop",{}},
            {"V_tweed_msv_mk2_1",{{"ItemcTabHCam",1},{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",12,30},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"rhs_mag_m67",4,1},{"SmokeShell",4,1},{"rhs_mag_mk84",4,1},{"MS_Strobe_Mag_1",2,1}}},
            {"B_simc_US_Molle_sturm_OCP_thermos_OCP",{{"ACE_EntrenchingTool",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_CableTie",5},{"lxim_medbags_FirstAid",1},{"ACM_SAMSplint",5},{"ACE_tourniquet",5},{"ACE_Flashlight_XL50",1},{"ACE_SpraypaintBlue",1},{"lxim_medbags_mopp",1},{"ACM_Paracetamol",2,10},{"tsp_breach_linear_mag",2,1},{"tsp_breach_popper_mag",2,1}}},
            "H_tweed_ihps_g_tasc_rail","",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152_1","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "1Rnd_HE_Grenade_shell",
        "ACE_HuntIR_M203",
        "ACE_LAMG_SpareBarrel",
        "ACE_LWAMG_SpareBarrel",
        "lxim_sig_M250",
        "lxim_sig_M250_BLK",
        "rhs_mag_M397_HET",
        "rhs_mag_m4009",
        "rhs_mag_M433_HEDP",
        "rhs_mag_M441_HE",
        "rhs_mag_m576",
        "rhs_mag_M583A1_white",
        "rhs_mag_M585_white_cluster",
        "rhs_mag_m661_green",
        "rhs_mag_m662_red",
        "rhs_mag_M663_green_cluster",
        "rhs_mag_M664_red_cluster",
        "rhs_mag_m713_Red",
        "rhs_mag_m714_White",
        "rhs_mag_m715_Green",
        "rhs_mag_m716_yellow",
        "rhs_weap_fgm148",
        "rhs_weap_fim92",
        "rhs_weap_m240B",
        "rhs_weap_m240G",
        "rhs_weap_M320",
        "rhsusf_acc_ARDEC_M240",
        "UGL_FlareGreen_F",
        "rhs_weap_m4_m320",
        "rhs_weap_m4a1_m320",
    };
};