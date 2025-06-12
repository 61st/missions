class sealmed2 {
    name = "medic";
    description = "MEDIC!";
    traits[] = {
        {"Medic",true}
    };
    customVariables[] = {
        {"ace_medical_medicClass",2,true},
        {"ace_isEngineer",0,true},
        {"YMF_ismed", true, true}
    };
    icon = "z\LXIM\addons\media\images\Icons\iconmanmedic_green.paa";

    defaultLoadout[] = {
            {"rhs_weap_hk416d10_LMT_d","rhsusf_acc_rotex5_grey","rhsusf_acc_anpeq15","rhsusf_acc_eotech_552",{"rhs_mag_30Rnd_556x45_M855A1_PMAG",30},{},"rhsusf_acc_grip2_tan"},{},
            {"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","acc_flashlight_pistol","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},
            {"rhs_uniform_FROG01_wd",{{"lxim_medbags_FirstAid",1}}},
            {"V_CarrierRigKBT_01_light_EAF_F",{{"rhs_mag_30Rnd_556x45_M855_PMAG",12,30},{"rhsusf_mag_17Rnd_9x19_JHP",2,17}}},
            {"lxim_backpack_Backpack_Kitbag_Medic_Green",{{"ACE_CableTie",5},{"psq42_blk",1},{"ACE_epinephrine",8},{"ACE_salineIV_500",4},{"ACE_salineIV",4},{"ACE_surgicalKit",1},{"ACE_tourniquet",8},{"ACM_BVM",1},{"ACM_ChestSeal",8},{"ACM_ChestTubeKit",4},{"ACM_ElasticWrap",30},{"ACM_EmergencyTraumaDressing",20},{"ACM_GuedelTube",8},{"ACM_IGel",8},{"ACM_IO_FAST",8},{"ACM_IV_14g",8},{"ACM_IV_16g",8},{"ACM_NCDKit",8},{"ACM_NPA",8},{"ACM_PressureBandage",30},{"ACM_PressureCuff",1},{"ACM_PulseOximeter",4},{"ACM_SAMSplint",6},{"ACM_Spray_Naloxone",8},{"ACM_SuctionBag",4},{"ACM_Vial_Adenosine",8},{"ACM_Vial_Amiodarone",8},{"ACM_Vial_Epinephrine",8},{"ACM_Vial_Ketamine",4},{"ACM_Vial_Lidocaine",4},{"ACM_Vial_Morphine",8},{"ACM_Vial_TXA",8},{"ACM_Stethoscope",1},{"ACM_PocketBVM",1},{"ACM_Syringe_5",2},{"ACM_Syringe_3",2},{"ACM_Syringe_10",2},{"ACM_Syringe_1",2},{"ACM_AmmoniaInhalant",4,8},{"ACM_Inhaler_Penthrox",2,8},{"ACM_Paracetamol",2,10}}},
            "H_HelmetB_light_snakeskin","G_Bandanna_sport",{"lxim_equipment_Vector_Designator_NVG","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ACE_Altimeter","psq42_blk"}
    };
    arsenalitems[] = {
        "ACM_ThoracostomyKit",
        "ACM_FieldBloodTransfusionKit_500",
        "ACM_FieldBloodTransfusionKit_250",
        "lxim_medbags_DrugKit",
        "lxim_medbags_Fluid",
        "ACM_Vial_Ondansetron",
        "ACM_Vial_CalciumChloride",
        "ACM_Vial_Esmolol",
        "ACM_Vial_Ertapenem",
        "ACE_epinephrine",
        "ACE_plasmaIV_250",
        "ACE_plasmaIV_500",
        "ACE_plasmaIV",
        "ACE_salineIV_250",
        "ACE_salineIV_500",
        "ACE_salineIV",
        "ACE_surgicalKit",
        "ACE_suture",
        "ACE_tourniquet",
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
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "lxim_backpack_Backpack_Kitbag_Medic_Black",
        "lxim_backpack_Backpack_Kitbag_Medic_Coyote",
        "lxim_backpack_Backpack_Kitbag_Medic_Green",
        "lxim_backpack_Backpack_Kitbag_Medic_MTP",
        "lxim_backpack_Backpack_Kitbag_Medic_RGR",
        "lxim_backpack_Backpack_Kitbag_Medic_Sage",
        "lxim_backpack_Backpack_Kitbag_Medic_Tan",
        "lxim_backpack_Backpack_Kitbag_Medic_White"
    };
};
