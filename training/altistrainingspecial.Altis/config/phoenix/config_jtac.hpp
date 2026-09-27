class fac {
    name = "FAC";
    description = "Big bada boom";
    traits[] = {
        {"UAVHacker",true}
    };
    customVariables[] = {
        {"YMF_iscom", true, true},
        {"draWhitelisted",TRUE,TRUE},
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",0,true}
    };
    
    icon = "a3\ui_f\data\map\vehicleicons\iconmanexplosive_ca.paa";

    defaultLoadout[] = {
            {"rhs_weap_m4a1_carryhandle_mstock","","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_USMC",{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",30},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ItemcTabHCam",1},{"lxim_medbags_mopp",1},{"lxim_medbags_FirstAid",1},{"ACE_MapTools",1},{"",1,0}}},
            {"V_tweed_msv_mk2_1",{{"ACE_CableTie",4},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"SmokeShell",2,1},{"HandGrenade",2,1},{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",14,30}}},
            {"B_simc_US_Molle_sturm_OCP_RTO_wasser",{{"ACRE_PRC117F",1},{"ACE_EntrenchingTool",1},{"MS_Strobe_Mag_1",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_CableTie",5},{"psq42_blk",1}}},
            "H_tweed_ihps_g_tasc_rail","G_oak_2_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152_1","ItemCompass","ACE_Altimeter",""}
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
        "lxim_vs17_vs17",
        "rhs_weap_m4",
        "rhs_weap_M320",
        "B_UavTerminal"
    };
};