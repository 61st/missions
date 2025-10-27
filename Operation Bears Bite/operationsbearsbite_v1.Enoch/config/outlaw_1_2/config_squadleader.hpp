class squadlead12 {
    name = "Squad Leader";
    description = "The one who looks for who to blame";
    traits[] = {};
    customVariables[] = {
        {"YMF_iscom", true, true},
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",0,true},
        {"YMF_is12", true, true}
    };

    icon = "\A3\ui_f\data\map\vehicleicons\iconmanofficer_ca.paa";

    defaultLoadout[] = {
            {"rhs_weap_ak74m","rhs_acc_dtk","","",{"rhs_30Rnd_545x39_7N10_AK",30},{},""},{},
            {"rhs_weap_pya","","","",{"rhs_mag_9x19_17",17},{},""},
            {"rhs_uniform_vkpo_gloves",{{"lxim_medbags_FirstAid",1},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_CableTie",4},{"ItemcTabHCam",1},{"cigs_lighter",1,100},{"cigs_morley_cigpack",1,20}}},
            {"rhs_6b45_off",{{"rhs_30Rnd_545x39_7N10_plum_AK",11,30},{"rhs_mag_9x19_17",2,17}}},
            {"TFAR_rt1523g_fabric",{{"ACE_HuntIR_monitor",1},{"ItemcTabMisc",1},{"tun_tablet",1},{"rhs_mag_rgd5",2,1},{"SmokeShell",2,1}}},
            "rhs_6b47_emr_1","",{"rhs_pdu4","","","",{},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","rhs_1PN138"}
    };
    arsenalitems[] = {
        "1Rnd_HE_Grenade_shell",
        "ACE_HuntIR_M203",
        "ACE_LAMG_SpareBarrel",
        "ACE_LWAMG_SpareBarrel",
        "launch_MRAWS_green_F",
        "launch_MRAWS_olive_F",
        "launch_MRAWS_sand_F",
        "lxim_backpack_Carryall_Multicam",
        "lxim_backpack_Carryall_Multicam_Snow",
        "lxim_backpack_Carryall_Multicam_Woodland",
        "lxim_backpack_Carryall_Solid_Black",
        "lxim_backpack_Carryall_Solid_CoyoteBrown",
        "lxim_backpack_Carryall_Solid_Olive",
        "lxim_backpack_Carryall_Solid_Ranger_Green",
        "lxim_backpack_Carryall_Solid_White",
        "lxim_backpack_Carryall_US_DCU",
        "lxim_backpack_Carryall_US_M81",
        "lxim_backpack_Carryall_US_Tigerstripe",
        "lxim_backpack_Kitbag_Multicam",
        "lxim_backpack_Kitbag_Multicam_Snow",
        "lxim_backpack_Kitbag_Multicam_Woodland",
        "lxim_backpack_Kitbag_Solid_Black",
        "lxim_backpack_Kitbag_Solid_CoyoteBrown",
        "lxim_backpack_Kitbag_Solid_Olive",
        "lxim_backpack_Kitbag_Solid_Ranger_Green",
        "lxim_backpack_Kitbag_Solid_White",
        "lxim_backpack_Kitbag_US_DCU",
        "lxim_backpack_Kitbag_US_M81",
        "lxim_backpack_Kitbag_US_Tigerstripe",
        "lxim_sig_M250",
        "lxim_sig_M250_BLK",
        "lxim_vs17_vs17",
        "rhs_fgm148_magazine_AT",
        "rhs_fim92_mag",
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
        "rhs_mag_maaws_HE",
        "rhs_mag_maaws_HEAT",
        "rhs_mag_maaws_HEDP",
        "rhs_weap_fgm148",
        "rhs_weap_fim92",
        "rhs_weap_m240B",
        "rhs_weap_m240G",
        "rhs_weap_M320",
        "rhsusf_acc_ARDEC_M240",
        "UGL_FlareGreen_F",
        "uh60_jvmf_tablet"
    };
};
