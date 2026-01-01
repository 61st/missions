class cmd {
    name = "Vehicle CMD";
    description = "Never fear War Mommy is here";
    traits[] = {
        {"Engineer",true}
    };
    customVariables[] = {
        {"ace_isEngineer",2,true},
        {"ace_medical_medicClass",0,true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmancommander_ca.paa";

    defaultLoadout[] = {
            {"rhs_weap_m4a1_carryhandle_mstock","","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_USMC",{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",30},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ItemcTabHCam",1},{"lxim_medbags_mopp",1},{"lxim_medbags_FirstAid",1},{"lxim_medbags_cls",1},{"ACE_MapTools",1}}},
            {"V_tweed_msv_mk2_1",{{"ACE_CableTie",4},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"SmokeShell",2,1},{"HandGrenade",2,1},{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",14,30}}},
            {"B_simc_US_Molle_sturm_OCP",{{"ACE_EntrenchingTool",1},{"MS_Strobe_Mag_1",1},{"ToolKit",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_CableTie",5},{"psq42_blk",1}}},
            "lxim_headgear_H_HelmetCrew_sand","G_oak_2_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152_1","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "lxim_headgear_H_HelmetCrew_green",
        "lxim_headgear_H_HelmetCrew_sand",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "ToolKit",
        "SatchelCharge_Remote_Mag",
        "lxim_sig_M250",
        "lxim_sig_M250_BLK",
        "rhs_weap_m4"
    };
};


