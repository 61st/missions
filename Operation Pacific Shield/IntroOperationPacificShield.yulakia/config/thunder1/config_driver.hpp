class driver1 {
    name = "Crew Driver";
    description = "vroom vroom";
    traits[] = {
        {"Engineer",true}
    };
    customVariables[] = {
        {"ace_isEngineer",1,true},
        {"TFAR_freq_sr",{"100.1","110","210","33","100","75","60","35"},true}
    };
    icon = "z\LXIM\addons\media\images\Icons\driver.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","KAR_XM250_SUP","CUP_acc_ANPEQ_15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"CUP_hgun_M17_Black","","CUP_acc_Glock17_Flashlight","optic_MRD_black",{"CUP_21Rnd_9x19_M17_Black",21},{},""},
            {"U_tweed_acu_summer_ocp_tuck_unbl_trop",{{"ACE_quikclot",5},{"ACE_packingBandage",10},{"ACE_elasticBandage",10},{"ACE_splint",2},{"ACE_tourniquet",4},{"ACE_EarPlugs",1},{"ACE_epinephrine",1},{"ACE_CableTie",1},{"ACE_painkillers",1,10}}},
            {"V_tweed_msv_mk2_cell_2",{{"ACE_M26_Clacker",1},{"G_AirPurifyingRespirator_01_F",1},{"ACE_MapTools",1},{"ACE_Flashlight_XL50",1},{"SmokeShellGreen",1,1},{"MS_Strobe_Mag_1",2,1},{"CUP_21Rnd_9x19_M17_Black",1,21},{"lxim_sig_25Rnd_Fury",6,20}}},
            {"B_simc_US_Molle_sturm_OCP_RTO_wasser",{{"psq42_blk",1},{"ToolKit",1},{"MS_Strobe_Mag_1",1},{"B_IR_Grenade",1},{"ACE_EntrenchingTool",1}}},"lxim_headgear_H_HelmetCrew_green","G_tweed_ESS_Green",{"ACE_Vector","","","",{},{},""},
            {"ItemMap","ItemcTab","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "lxim_headgear_H_HelmetCrew_green",
        "lxim_headgear_H_HelmetCrew_sand",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "H_HelmetCrew_I",
        "ToolKit",
        "MineDetector",
        "SatchelCharge_Remote_Mag"
    };
};