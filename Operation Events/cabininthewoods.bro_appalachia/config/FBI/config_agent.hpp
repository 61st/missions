class agent {
    name = "Regular Agent";
    description = "I shoot dogs";
    traits[] = {};
    customVariables[] = {
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",2,true},
        {"YMF_iscom", true, true}
    };
    icon = "z\LXIM\addons\media\images\Icons\iconman_red.paa";

    defaultLoadout[] = {
            {},
            {"FBI_Pistol","","","",{"JCA_17Rnd_9x19_P320_Mag",17},{},""},
            {"lockeFeds_V_CarrierRigKBT_01_Security_Blu_F",{{"lxim_medbags_FirstAid",1},{"JCA_17Rnd_9x19_P320_Mag",4,17}}},
            {"B_LegStrapBag_black_F",{{"ACE_CableTie",6},{"ACE_WaterBottle",1},{"cigs_lighter",1,100},{"cigs_morley_cigpack",1,20}}},
            {"V_tweed_msv_mk2_1",{{"ACE_CableTie",4},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"SmokeShell",2,1},{"HandGrenade",2,1},{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",14,30}}},
            "lockeFeds_h_cap_blu2","JCA_G_Glasses_Tactical_tinted_olive_F",{},
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch",""}
    };
    // for 1-1
    arsenalitems[] = {
    "JCA_17Rnd_9x19_P320_Mag",
    "FBI_Pistol",
    "lockeFeds_V_CarrierRigKBT_01_Security_Blu_F",
    "B_LegStrapBag_black_F",
    "lockeFeds_h_cap_blu2",
    "lockeFeds_h_cap_blk",
    "lockeFeds_h_cap_blu2",
    "lockeFeds_h_cap_blu1",
    "fedAgentBlue",
    "fedAgentStriped",
    "fedAgentWhite",
    "lockeFeds_V_CarrierRigKBT_01_Blk_F",
    "lockeFeds_V_CarrierRigKBT_01_Blu_F",
    "lockeFeds_V_CarrierRigKBT_01_Blu2_F",
    "fedWindbreakerWht",
    "fedWindbreakerERT",
    "fedWindbreakerJTTF"
    };
};
