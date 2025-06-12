class sealteam2 {
    name = "Operator";
    description = "Its a grunts life";
    traits[] = {};
    customVariables[] = {
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",1,true},
        {"YMF_iscom", true, true}
    };
    icon = "z\LXIM\addons\media\images\Icons\iconman_red.paa";

    defaultLoadout[] = {
            {"rhs_weap_hk416d10_LMT_d","rhsusf_acc_rotex5_grey","rhsusf_acc_anpeq15","rhsusf_acc_eotech_552",{"rhs_mag_30Rnd_556x45_M855A1_PMAG",30},{},"rhsusf_acc_grip2_tan"},{},
            {"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","acc_flashlight_pistol","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},
            {"rhs_uniform_FROG01_wd",{{"lxim_medbags_FirstAid",1}}},
            {"V_CarrierRigKBT_01_light_EAF_F",{{"rhs_mag_30Rnd_556x45_M855_PMAG",12,30},{"rhsusf_mag_17Rnd_9x19_JHP",2,17}}},
            {"lxim_backpack_TacticalPack_Multicam_Woodland",{{"ACE_EntrenchingTool",1},{"ItemcTabMisc",1},{"ChemicalDetector_01_black_F",1},{"ACE_DefusalKit",1},{"tsp_lockpick",1},{"ACE_Clacker",1},{"ACE_Flashlight_XL50",1},{"rhs_mag_m67",2,1},{"rhs_grenade_anm8_mag",2,1},{"ACE_M84",2,1},{"MS_Strobe_Mag_1",2,1},{"DemoCharge_Remote_Mag",2,1}}},
            "H_HelmetB_light_snakeskin","G_Bandanna_sport",{"lxim_equipment_Vector_Designator_NVG","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ACE_Altimeter","psq42_blk"}
    };
    // for 1-1
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
        "rhs_weap_m32",
        "rhs_weap_M320",
        "rhsusf_acc_ARDEC_M240",
        "UGL_FlareGreen_F"
    };
};
