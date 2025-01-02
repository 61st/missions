class medic12 {
    name = "medic";
    description = "MEDIC!";
    traits[] = {
        {"Medic",true}
    };
    customVariables[] = {
        {"ace_medical_medicClass",2,true},
        {"YMF_ismed", true, true},
        {"starting_148_channel", 16, true},
        {"starting_343_channel", 33, true}
    };
    icon = "z\LXIM\addons\media\images\Icons\iconmanmedic_green.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","KAR_XM250_SUP","rhsusf_acc_anpeq15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"lxim_medbags_mopp",1},{"lxim_medbags_FirstAid",1},{"ACE_MapTools",1},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"ACRE_PRC148",2},{"",1,0}}},
            {"V_tweed_msv_mk2_1",{{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"SmokeShell",2,1},{"HandGrenade",2,1},{"ACE_IR_Strobe_Item",1},{"lxim_sig_25Rnd_Fury",10,25}}},
            {"lxim_backpack_Backpack_Kitbag_Medic_Green",{{"ACE_CableTie",5},{"psq42_blk",1},{"ACE_epinephrine",8},{"ACE_salineIV_500",4},{"ACE_salineIV",4},{"ACE_surgicalKit",1},{"ACE_tourniquet",8},{"ACM_BVM",1},{"ACM_ChestSeal",8},{"ACM_ChestTubeKit",4},{"ACM_ElasticWrap",30},{"ACM_EmergencyTraumaDressing",20},{"ACM_GuedelTube",8},{"ACM_IGel",8},{"ACM_IO_FAST",8},{"ACM_IV_14g",8},{"ACM_IV_16g",8},{"ACM_NCDKit",8},{"ACM_NPA",8},{"ACM_PressureBandage",30},{"ACM_PressureCuff",1},{"ACM_PulseOximeter",4},{"ACM_SAMSplint",6},{"ACM_Spray_Naloxone",8},{"ACM_SuctionBag",4},{"ACM_Vial_Adenosine",8},{"ACM_Vial_Amiodarone",8},{"ACM_Vial_Epinephrine",8},{"ACM_Vial_Ketamine",4},{"ACM_Vial_Lidocaine",4},{"ACM_Vial_Morphine",8},{"ACM_Vial_TXA",8},{"ACM_Stethoscope",1},{"ACM_PocketBVM",1},{"ACM_Syringe_5",2},{"ACM_Syringe_3",2},{"ACM_Syringe_10",2},{"ACM_Syringe_1",2},{"ACM_AmmoniaInhalant",4,8},{"ACM_Inhaler_Penthrox",2,8},{"ACM_Paracetamol",2,10}}},
            "H_tweed_ihps_g_tasc_rail","G_oak_2_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "ACM_FieldBloodTransfusionKit_500",
        "ACM_FieldBloodTransfusionKit_250",
        "lxim_medbags_DrugKit",
        "lxim_medbags_Fluid",
        "ACM_Vial_Ondansetron",
        "ACM_Vial_CalciumChloride",
        "ACM_Vial_Esmolol",
        "ACM_Vial_Ertapenem",
        "ACE_epinephrine",
        "ACE_suture",
        "ACE_tourniquet",
        "ACE_plasmaIV",
        "ACE_plasmaIV_250",
        "ACE_plasmaIV_500",
        "ACE_salineIV",
        "ACE_salineIV_250",
        "ACE_salineIV_500",
        "ACE_surgicalKit",
        "ACM_ACCUVAC",
        "ACM_AED",
        "ACM_AmmoniaInhalant",
        "ACM_BVM",
        "ACM_ChestSeal",
        "ACM_ChestTubeKit",
        "ACM_ElasticWrap",
        "ACM_EmergencyTraumaDressing",
        "ACM_GuedelTube",
        "ACM_IGel",
        "ACM_Inhaler_Penthrox",
        "ACM_IO_EZ",
        "ACM_IO_FAST",
        "ACM_IV_14g",
        "ACM_IV_16g",
        "ACM_NCDKit",
        "ACM_NPA",
        "ACM_OxygenTank_425",
        "ACM_Paracetamol",
        "ACM_PocketBVM",
        "ACM_PressureBandage",
        "ACM_PressureCuff",
        "ACM_PulseOximeter",
        "ACM_SAMSplint",
        "ACM_Spray_Naloxone",
        "ACM_Stethoscope",
        "ACM_SuctionBag",
        "ACM_Syringe_1",
        "ACM_Syringe_10",
        "ACM_Syringe_3",
        "ACM_Syringe_5",
        "ACM_Vial_Adenosine",
        "ACM_Vial_Amiodarone",
        "ACM_Vial_Epinephrine",
        "ACM_Vial_Ketamine",
        "ACM_Vial_Lidocaine",
        "ACM_Vial_Morphine",
        "ACM_Vial_TXA",
        "lxim_backpack_Backpack_Kitbag_Medic_Green",
        "lxim_backpack_Backpack_Kitbag_Medic_MTP",
        "lxim_backpack_Backpack_Kitbag_Medic_Coyote",
        "lxim_backpack_Backpack_Kitbag_Medic_Tan",
        "lxim_backpack_Backpack_Kitbag_Medic_RGR",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "lxim_backpack_Backpack_Kitbag_Medic_Black",
        "lxim_backpack_Backpack_Kitbag_Medic_Sage",
        "lxim_backpack_Backpack_Kitbag_Medic_White"
    };
};