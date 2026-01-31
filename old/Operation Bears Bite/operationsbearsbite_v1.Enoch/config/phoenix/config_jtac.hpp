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
            {"rhs_weap_ak74m","rhs_acc_dtk","","",{"rhs_30Rnd_545x39_7N10_AK",30},{},""},{},
            {"rhs_weap_pya","","","",{"rhs_mag_9x19_17",17},{},""},
            {"rhs_uniform_vkpo_gloves",{{"lxim_medbags_FirstAid",1},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_CableTie",4},{"ItemcTabHCam",1},{"cigs_lighter",1,100},{"cigs_morley_cigpack",1,20}}},
            {"rhs_6b45_rifleman_2",{{"rhs_30Rnd_545x39_7N10_plum_AK",11,30},{"rhs_mag_9x19_17",2,17}}},
            {"TFAR_rt1523g_green",{{"ACE_SpottingScope",1},{"ACE_RangeCard",1},{"ACE_PlottingBoard",1},{"ACE_MapTools",1},{"ItemcTabMisc",1},{"tun_tablet",1},{"rhs_mag_rgd5",2,1},{"SmokeShell",2,1},{"acex_intelitems_notepad",1,1}}},
            "rhs_6b47_emr_1","",{"rhs_pdu4","","","",{},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","rhs_1PN138"}
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