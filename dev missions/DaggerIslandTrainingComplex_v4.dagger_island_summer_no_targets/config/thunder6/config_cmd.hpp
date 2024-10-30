class cmd6 {
    name = "Vehicle CMD";
    description = "Daddy's here";
    traits[] = {
        {"Engineer",true}
    };
    customVariables[] = {
        {"ace_isEngineer",2,true},
        {"YMF_iscmd", true, true},
        {"TFAR_freq_sr",{"100.1","110","120","230","100","75","60","35"},true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmancommander_ca.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","KAR_XM250_SUP","rhsusf_acc_anpeq15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","optic_MRD_black",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ACE_MapTools",1},{"kat_IFAK",1},{"ACE_fieldDressing",4},{"ACE_tourniquet",4},{"kat_Painkiller",1,4}}},
            {"V_tweed_msv_mk2_1",{{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"ACE_CableTie",4},{"SmokeShell",2,1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"HandGrenade",2,1},{"lxim_sig_25Rnd_Fury",12,25}}},
            {"B_simc_US_Molle_sturm_OCP_RTO_wasser",{{"psq42_blk",1},{"ToolKit",1},{"MS_Strobe_Mag_1",1},{"B_IR_Grenade",1},{"ACE_EntrenchingTool",1}}},"lxim_headgear_H_HelmetCrew_green","G_tweed_ESS_Green",{"ACE_Vector","","","",{},{},""},
            {"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "lxim_headgear_H_HelmetCrew_green",
        "lxim_headgear_H_HelmetCrew_sand",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "H_HelmetCrew_I",
        "ToolKit",
        "MineDetector",
        "SatchelCharge_Remote_Mag",
        "lxim_sig_M250",
        "lxim_sig_M250_BLK"
    };
};