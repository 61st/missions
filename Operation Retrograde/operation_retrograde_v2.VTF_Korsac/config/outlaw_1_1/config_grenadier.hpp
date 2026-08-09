class grenadier11 {
    name = "Grenadier";
    description = "The one who lobs the boom";
    traits[] = {};
    customVariables[] = {
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",0,true},
    };

    icon = "z\LXIM\addons\media\images\Icons\iconman_red.paa";

    defaultLoadout[] = {
            {"rhs_weap_m4a1_m320","","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_USMC",{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",30},{},""},{},
            {"rhsusf_weap_glock17g4","","MHS_X300U","",{"rhsusf_mag_17Rnd_9x19_FMJ",17},{},""},
            {"rhsgref_uniform_olive",{{"FirstAidKit",1},{"lxim_medbags_FirstAid",1}}},
            {"V_CarrierRigKBT_01_light_EAF_F",{{"rhsusf_mag_17Rnd_9x19_FMJ",4,17},{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",12,30}}},
            {"lxim_backpack_Kitbag_Solid_Olive",{{"ACE_EntrenchingTool",1},{"MS_Strobe_Mag_1",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_CableTie",5},{"psq42_blk",1}}},
            "H_tweed_ech_casque_base","",{"Binocular","","","",{},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152_1","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "1Rnd_HE_Grenade_shell",
        "ACE_HuntIR_M203",
        "ACE_LAMG_SpareBarrel",
        "ACE_LWAMG_SpareBarrel",
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