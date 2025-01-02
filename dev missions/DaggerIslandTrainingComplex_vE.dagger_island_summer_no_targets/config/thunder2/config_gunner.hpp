class gunner2 {
    name = "Crew Gunner";
    description = "Let the hate fly";
    traits[] = {
        {"Engineer",true}
    };
    customVariables[] = {
        {"ace_isEngineer",1,true},
        {"starting_343_channel", 65, true}
    };
    icon = "z\LXIM\addons\media\images\Icons\gunner.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","KAR_XM250_SUP","rhsusf_acc_anpeq15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ItemcTabHCam",1},{"lxim_medbags_mopp",1},{"lxim_medbags_FirstAid",1},{"ACE_MapTools",1},{"ACRE_PRC148",1},{"",1,0}}},
            {"V_tweed_msv_mk2_1",{{"ACE_CableTie",4},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"SmokeShell",2,1},{"HandGrenade",2,1},{"lxim_sig_25Rnd_Fury",12,25}}},
            {"B_simc_US_Molle_sturm_OCP",{{"ACE_EntrenchingTool",1},{"MS_Strobe_Mag_1",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_CableTie",5},{"psq42_blk",1}}},
            "lxim_headgear_H_HelmetCrew_sand","G_oak_2_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "lxim_headgear_H_HelmetCrew_green",
        "lxim_headgear_H_HelmetCrew_sand",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "H_HelmetCrew_I",
        "ToolKit",
        "SatchelCharge_Remote_Mag"
    };
};