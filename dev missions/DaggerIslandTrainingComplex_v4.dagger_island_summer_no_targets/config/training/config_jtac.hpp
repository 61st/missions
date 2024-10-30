class jtacs {
    name = "jtac";
    description = "Big bada boom";
    traits[] = {
        {"UAVHacker",true}
    };
    customVariables[] = {
        {"YMF_iscom", true, true},
        {"draWhitelisted",TRUE,TRUE},
        {"TFAR_freq_sr",{"100.1","150","150.1","33","100","75","60","35"},true}
    };
    
    icon = "a3\ui_f\data\map\vehicleicons\iconmanexplosive_ca.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","KAR_XM250_SUP","rhsusf_acc_anpeq15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ACE_MapTools",1},{"kat_IFAK",1},{"ACE_fieldDressing",4},{"ACE_tourniquet",4},{"kat_Painkiller",1,4}}},
            {"V_tweed_msv_mk2_1",{{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"ACE_CableTie",4},{"SmokeShell",2,1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"HandGrenade",2,1},{"lxim_sig_25Rnd_Fury",12,25}}},
            {"B_simc_US_Molle_sturm_OCP_RTO_wasser",{{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"MS_Strobe_Mag_1",1},{"B_IR_Grenade",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_EarPlugs",2},{"ACE_CableTie",5},{"ACE_MapTools",1},{"ACE_PlottingBoard",1},{"ACE_RangeCard",1},{"ACE_artilleryTable",1},{"psq42_blk",1},{"acex_intelitems_notepad",1,1},{"Chemlight_blue",2,1},{"Chemlight_green",2,1},{"SmokeShellRed",3,1},{"SmokeShellGreen",3,1},{"SmokeShell",2,1},{"SmokeShellBlue",2,1}}},"H_tweed_ihps_g_tasc_rail","G_oak_1_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "Rev_Pelican",
        "Rev_darter",
        "Rev_Designator",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "ACE_artilleryTable",
        "ACE_PlottingBoard",
        "acex_intelitems_notepad",
        "B_UavTerminal",
        // "ItemGPSMisc",
        "ACE_RangeCard",
        "uh60_jvmf_tablet",
        "lxim_vs17_vs17"
    };
};