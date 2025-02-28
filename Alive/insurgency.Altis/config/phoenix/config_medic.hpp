class medicp {
    name = "Flight Medic";
    description = "MEDIC!";
    traits[] = {
        {"Medic",true}
    };
    customVariables[] = {
        {"ace_medical_medicClass",2,true},
        {"YMF_ismed", true, true},
        {"ace_isEngineer",0,true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7_G","","","optic_Hamr",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_microDAGR",1},{"ACE_Flashlight_XL50",1},{"ACE_MapTools",1},{"ACE_CableTie",3},{"ACE_EarPlugs",1},{"ACM_Stethoscope",1},{"ACM_PulseOximeter",3},{"ACM_PressureCuff",1},{"ACM_PocketBVM",1},{"lxim_medbags_mopp",1},{"ACE_surgicalKit",1},{"ACM_IV_16g",20},{"ACM_IV_14g",10},{"ACM_NCDKit",6},{"ACM_SAMSplint",4},{"ACM_Spray_Naloxone",2},{"MHS_21rnd_9MM_124FMJ_M17",1,21},{"ACM_Paracetamol",1,10},{"ACM_AmmoniaInhalant",1,8},{"ACM_Inhaler_Penthrox",2,8}}},
            {"V_tweed_msv_mk2_1",{{"ItemcTabHCam",1},{"ACM_Syringe_1",20},{"ACM_Syringe_3",10},{"ACM_Syringe_5",12},{"ACM_Syringe_10",10},{"ACM_Vial_Adenosine",4},{"ACM_Vial_Amiodarone",10},{"ACM_ChestTubeKit",6},{"ACE_epinephrine",4},{"ACM_Vial_Epinephrine",10},{"ACM_IO_FAST",6},{"ACM_Vial_Fentanyl",8},{"ACM_IGel",6},{"ACM_Vial_Ketamine",4},{"ACM_Vial_Lidocaine",10},{"ACM_Spray_Naloxone",4},{"ACM_NPA",10},{"ACM_Vial_Ondansetron",6},{"ACE_tourniquet",8},{"ACM_Vial_TXA",15},{"ACM_ACCUVAC",1},{"ACM_EmergencyTraumaDressing",1},{"lxim_sig_25Rnd_Fury",5,25}}},
            {"lxim_backpack_Backpack_Kitbag_Medic_Coyote",{{"ACM_AED",1},{"ACM_BloodBag_ON_500",8},{"ACM_ChestSeal",10},{"lxim_medbags_DrugKit",1},{"ACM_ElasticWrap",20},{"ACM_EmergencyTraumaDressing",19},{"ACM_PressureBandage",18},{"ACE_salineIV_250",8},{"ACE_plasmaIV_500",10},{"ACM_GuedelTube",4},{"ACE_salineIV_500",6},{"lxim_medbags_Fluid",1},{"ACM_BVM",1},{"ACRE_PRC152",1},{"ACRE_PRC148",1},{"ACRE_PRC117F",1}}},"H_CrewHelmetHeli_I_E","",{"Laserdesignator_03","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemGPS","","ItemCompass","ACE_Altimeter","psq42_blk"}
    };
    arsenalitems[] = {
        "JCA_smg_UMP_black_F",
        "JCA_smg_UMP_olive_F",
        "JCA_smg_UMP_sand_F",
        "JCA_smg_UMP_AFG_black_F",
        "JCA_smg_UMP_AFG_olive_F",
        "JCA_smg_UMP_AFG_sand_F",
        "JCA_smg_UMP_VFG_black_F",
        "JCA_smg_UMP_VFG_olive_F",
        "JCA_smg_UMP_VFG_sand_F",
        "JCA_smg_MP5_VFG_sand_F",
        "JCA_smg_MP5_VFG_black_F",
        "JCA_smg_MP5_AFG_sand_F",
        "JCA_smg_MP5_AFG_olive_F",
        "JCA_smg_MP5_AFG_black_F",
        "JCA_smg_MP5_FL_olive_F",
        "JCA_smg_MP5_FL_black_F",
        "JCA_smg_MP5_FL_sand_F",
        "JCA_smg_MP5_VFG_olive_F",
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
        "ACE_plasmaIV",
        "ACE_plasmaIV_250",
        "ACE_plasmaIV_500",
        "ACE_salineIV",
        "ACE_salineIV_250",
        "ACE_salineIV_500",
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
        "B_simc_US_Molle_sturm_OCP_RTO",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "FIR_HGU56P_Skull",
        "FIR_HGU56P_Skull_Death",
        "H_CrewHelmetHeli_B",
        "H_CrewHelmetHeli_I_E",
        "H_PilotHelmetHeli_B",
        "H_PilotHelmetHeli_I_E",
        "lxim_backpack_Backpack_Kitbag_Medic_Black",
        "lxim_backpack_Backpack_Kitbag_Medic_Coyote",
        "lxim_backpack_Backpack_Kitbag_Medic_Green",
        "lxim_backpack_Backpack_Kitbag_Medic_MTP",
        "lxim_backpack_Backpack_Kitbag_Medic_RGR",
        "lxim_backpack_Backpack_Kitbag_Medic_Sage",
        "lxim_backpack_Backpack_Kitbag_Medic_Tan",
        "lxim_backpack_Backpack_Kitbag_Medic_White",
        "H_PilotHelmetHeli_B",
        "H_CrewHelmetHeli_B",
        "H_PilotHelmetHeli_I_E",
        "H_CrewHelmetHeli_I_E",
        "ACE_NVG_Wide_Black",
        "ACE_NVG_Wide_Black_WP",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "U_B_HeliPilotCoveralls",
        "E22_H_Helmet_Heli_JTF_VisorUp_woodland_F",
        "E22_H_Helmet_Heli_JTF_woodland_F",
        "E22_H_Helmet_Heli_JTF_VisorUp_desert_F",
        "E22_H_Helmet_Heli_JTF_desert_F",
        "E22_H_Helmet_Heli_JTF_VisorUp_black_F",
        "E22_H_Helmet_Heli_JTF_black_F",
        "E22_H_Helmet_Fighter_JTF_F",
        "H_PilotHelmetFighter_B",
        "E22_H_Helmet_Heli_JTF_crew_woodland_F",
        "E22_H_Helmet_Heli_JTF_crew_desert_F",
        "E22_H_Helmet_Heli_JTF_crew_black_F",
        "U_B_PilotCoveralls"
    };
};
