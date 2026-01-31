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
            {"rhs_weap_ak74m_gp25","rhs_acc_dtk","","",{"rhs_30Rnd_545x39_7N10_AK",30},{"rhs_VOG25",1},""},{},
            {"rhs_weap_pya","","","",{"rhs_mag_9x19_17",17},{},""},
            {"rhs_uniform_vkpo_gloves",{{"lxim_medbags_FirstAid",1},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_CableTie",4},{"ItemcTabHCam",1},{"cigs_lighter",1,100},{"cigs_morley_cigpack",1,20}}},
            {"rhs_6b45_grn",{{"rhs_30Rnd_545x39_7N10_plum_AK",11,30},{"rhs_mag_9x19_17",2,17},{"rhs_VOG25",8,1},{"rhs_GDM40",2,1}}},
            {"lxim_backpack_Kitbag_Solid_Ranger_Green",{{"rhs_mag_rgd5",2,1},{"SmokeShell",2,1}}},
            "rhs_6b47_emr_1","",{"rhs_pdu4","","","",{},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","rhs_1PN138"}
    };
    arsenalitems[] = {
        "1Rnd_HE_Grenade_shell",
        "ACE_HuntIR_M203",
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
        "UGL_FlareGreen_F"
    };
};