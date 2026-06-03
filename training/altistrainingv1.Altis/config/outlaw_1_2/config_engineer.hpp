class engineer12 {
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
            {"rhs_weap_m4a1_carryhandle_mstock_grip3","","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_USMC",{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",30},{},"rhsusf_acc_grip3"},{"rhs_weap_M136","","","",{},{},""},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp_tuck_trop",{}},
            {"V_tweed_msv_mk2_1",{{"ItemcTabHCam",1},{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",12,30},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"rhs_mag_m67",4,1},{"SmokeShell",4,1},{"rhs_mag_mk84",4,1},{"MS_Strobe_Mag_1",2,1}}},
            {"B_simc_US_Molle_sturm_OCP_thermos_OCP",{{"ACE_EntrenchingTool",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_CableTie",5},{"lxim_medbags_FirstAid",1},{"ACM_SAMSplint",5},{"ACE_tourniquet",5},{"ACE_Flashlight_XL50",1},{"ACE_SpraypaintBlue",1},{"lxim_medbags_mopp",1},{"ACM_Paracetamol",2,10},{"tsp_breach_linear_mag",2,1},{"tsp_breach_popper_mag",2,1}}},
            "H_tweed_ihps_g_tasc_rail","",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152_1","ItemCompass","ACE_Altimeter",""}
    };
    
    arsenalitems[] = {
        "Rev_Demine",
        "Rev_Roller",
        "ACE_M26_Clacker",
        "B_UavTerminal",
        "ACE_Clacker",
        "ACE_DefusalKit",
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
        "Rev_Roller",
        "iedd_item_notebook"
    };
};