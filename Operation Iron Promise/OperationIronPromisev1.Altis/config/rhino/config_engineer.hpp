class engineerr {
    name = "Combat Engineer";
    description = "Makes things go boom or not to go boom";
    traits[] = {
        {"Engineer",true},
        {"explosiveSpecialist",true}
    };
    customVariables[] = {
        {"ace_isEngineer",2,true},
        {"ace_medical_medicClass",0,true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmanengineer_ca.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","ICM_SLX_Suppressor_Arid_F","rhsusf_acc_anpeq15side","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ItemcTabHCam",1},{"lxim_medbags_mopp",1},{"lxim_medbags_FirstAid",1},{"ACE_MapTools",1},{"",1,0}}},
            {"V_tweed_msv_mk2_1",{{"ACE_CableTie",4},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"SmokeShell",2,1},{"HandGrenade",2,1},{"lxim_sig_25Rnd_Fury",12,25}}},
            {"B_simc_US_Molle_sturm_OCP_etool",{{"ACE_EntrenchingTool",1},{"MS_Strobe_Mag_1",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_CableTie",5},{"psq42_blk",1}}},
            "H_tweed_ihps_g_tasc_rail","G_oak_2_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
    };
    
    arsenalitems[] = {
        "Rev_Demine",
        "Rev_Roller",
        "ACE_M26_Clacker",
        "ACE_Clacker",
        "ACE_DefusalKit",
        "B_UavTerminal",
        "ToolKit",
        "lxim_breaching_BreachingCharge_Mag",
        "ACE_VMH3",
        "ACE_VMM3",
        "DemoCharge_Remote_Mag",
        "ATMine_Range_Mag",
        "SatchelCharge_Remote_Mag",
        "ClaymoreDirectionalMine_Remote_Mag",
        "SLAMDirectionalMine_Wire_Mag",
        "ACE_Fortify",
        "tsp_breach_package_mag",
        "tsp_breach_popper_auto_mag",
        "tsp_breach_popper_mag",
        "tsp_breach_linear_auto_mag",
        "tsp_breach_linear_mag",
        "tsp_breach_block_auto_mag",
        "tsp_breach_block_mag",
        "rhs_weap_M590_8RD",
        "rhs_weap_M590_5RD",
        "Rev_Demine",
        "Rev_UAV_IED",
        "Rev_Roller"
    };
};