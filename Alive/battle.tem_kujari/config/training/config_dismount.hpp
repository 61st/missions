class recruit {
    name = "Recruit";
    description = "BOLO";
    traits[] = {

    };
    customVariables[] = {
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",0,true}
    };
    icon = "z\LXIM\addons\media\images\Icons\iconman_red.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","ICM_SLX_Suppressor_Arid_F","ACE_DBAL_A3_Red","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ItemcTabHCam",1},{"lxim_medbags_mopp",1},{"lxim_medbags_FirstAid",1},{"ACE_MapTools",1},{"ACRE_PRC148",1},{"",1,0}}},
            {"V_tweed_msv_mk2_1",{{"ACE_CableTie",4},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"SmokeShell",2,1},{"HandGrenade",2,1},{"lxim_sig_25Rnd_Fury",12,25}}},
            {"B_simc_US_Molle_sturm_OCP",{{"ACE_EntrenchingTool",1},{"MS_Strobe_Mag_1",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_CableTie",5},{"psq42_blk",1}}},
            "H_tweed_ihps_g_tasc_rail","G_oak_2_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""}
    };
    // for 1-2
    arsenalitems[] = {
        "launch_MRAWS_sand_F",
        "launch_MRAWS_green_F",
        "ACE_HuntIR_M203",
        "lxim_sig_M250",
        "lxim_sig_M250_BLK",
        "UGL_FlareGreen_F",
        "1Rnd_HE_Grenade_shell",
        "vtf_MK13",
        "vtf_MK13_black",
        "E22_launch_Titan_short_green_F",
        "launch_B_Titan_short_F",
        "launch_B_Titan_F",
        "E22_launch_Titan_green_F"
    };
};
