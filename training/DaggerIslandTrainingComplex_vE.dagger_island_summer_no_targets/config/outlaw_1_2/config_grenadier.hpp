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
            {"lxim_sig_XM7","ICM_SLX_Suppressor_Arid_F","rhsusf_acc_anpeq15side","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"rhs_weap_M320","","","",{"rhs_mag_M441_HE",1},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_CableTie",3},{"ACE_EarPlugs",2},{"ACE_Chemlight_HiGreen",2,1}}},
            {"V_tweed_iotv_mk4_cell_4cm_1",{{"ItemcTabHCam",1},{"lxim_sig_25Rnd_Fury",8,25},{"rhs_mag_M433_HEDP",10,1},{"rhs_mag_m714_White",5,1},{"rhs_mag_m67",2,1},{"SmokeShell",2,1}}},
            {"B_simc_US_Molle_sturm_OCP",{{"psq42_blk",1},{"ACM_ChestSeal",2},{"lxim_medbags_FirstAid",2},{"ACM_SAMSplint",2},{"ACE_EntrenchingTool",1},{"ACE_Fortify",1},{"JCA_G_AirPurifyingRespirator_03_black_clear_F",1},{"ACE_IR_Strobe_Item",1},{"ACE_SpraypaintBlue",1}}},
            "H_tweed_ihps_tasc_rail","",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "1Rnd_HE_Grenade_shell",
        "ACE_HuntIR_M203",
        "ACE_LAMG_SpareBarrel",
        "ACE_LWAMG_SpareBarrel",
        "launch_MRAWS_green_F",
        "launch_MRAWS_olive_F",
        "launch_MRAWS_sand_F",
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
        "UGL_FlareGreen_F"
    };
};