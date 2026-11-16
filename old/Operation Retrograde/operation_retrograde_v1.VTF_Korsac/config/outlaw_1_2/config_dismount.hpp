class dismount12 {
    name = "dismount";
    description = "Its a grunts life";
    traits[] = {};
    customVariables[] = {
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",0,true}
    };
    icon = "z\LXIM\addons\media\images\Icons\iconman_red.paa";

    defaultLoadout[] = {
            {"rhs_weap_m4a1_carryhandle_mstock","","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_USMC",{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",30},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"rhs_uniform_FROG01_wd",{{"ItemcTabHCam",1},{"lxim_medbags_mopp",1},{"lxim_medbags_FirstAid",1},{"ACE_MapTools",1}}},
            {"rhsusf_spc_squadleader",{{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",12,30},{"MHS_21rnd_9MM_124FMJ_M17",2,21},{"HandGrenade",1,1},{"SmokeShell",1,1}}},
            {"lxim_backpack_Kitbag_Solid_CoyoteBrown",{{"ACE_EntrenchingTool",1},{"ACE_CableTie",5},{"ACE_EarPlugs",1},{"ACE_IR_Strobe_Item",1},{"cigs_morley_cigpack",1,20},{"cigs_lighter",1,100}}},
            "rhsusf_lwh_helmet_marpatwd","G_oak_2_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
    };
    // for 1-1
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
        "UGL_FlareGreen_F"
    };
};
