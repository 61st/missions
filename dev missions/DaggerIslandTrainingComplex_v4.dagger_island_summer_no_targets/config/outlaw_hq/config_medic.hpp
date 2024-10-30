class medic {
    name = "Medic";
    description = "MEDIC!";
    traits[] = {
        {"Medic",true}
    };
    customVariables[] = {
        {"ace_medical_medicClass",2,true},
        {"YMF_ismed", true, true},
        {"TFAR_freq_sr",{"100.1","110","120","33","100","75","60","35"},true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","KAR_XM250_SUP","rhsusf_acc_anpeq15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp_trop",{{"ACE_CableTie",4},{"ACE_Flashlight_XL50",1},{"ACE_surgicalKit",1},{"psq42_blk",1}}},
            {"V_tweed_msv_mk2_cell_1",{{"ACE_epinephrine",6},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"lxim_sig_25Rnd_Fury",10,20},{"SmokeShell",3,1},{"HandGrenade",2,1}}},
            {"B_simc_US_Molle_sturm_OCP_thermos_od7",{{"MS_Strobe_Mag_1",1},{"B_IR_Grenade",1},{"ACE_tourniquet",4},{"ACE_splint",4},{"ACE_elasticBandage",40},{"ACE_packingBandage",20},{"ACE_salineIV",4},{"ACE_salineIV_500",10},{"ACE_epinephrine",14},{"ACE_adenosine",14},{"ACE_fieldDressing",24},{"ACE_quikclot",14},{"ACE_morphine",24},{"lxim_naloxone",14}}},
            "H_tweed_ihps_tasc_rail","G_tweed_ESS_Green",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "ACE_morphine",
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
        "ACM_BloodBag_A_1000",
        "ACM_BloodBag_A_250",
        "ACM_BloodBag_A_500",
        "ACM_BloodBag_AB_1000",
        "ACM_BloodBag_AB_250",
        "ACM_BloodBag_AB_500",
        "ACM_BloodBag_ABN_1000",
        "ACM_BloodBag_ABN_250",
        "ACM_BloodBag_ABN_500",
        "ACM_BloodBag_AN_1000",
        "ACM_BloodBag_AN_250",
        "ACM_BloodBag_AN_500",
        "ACM_BloodBag_B_1000",
        "ACM_BloodBag_B_250",
        "ACM_BloodBag_B_500",
        "ACM_BloodBag_BN_1000",
        "ACM_BloodBag_BN_250",
        "ACM_BloodBag_BN_500",
        "ACM_BloodBag_O_1000",
        "ACM_BloodBag_O_250",
        "ACM_BloodBag_O_500",
        "ACM_BloodBag_ON_1000",
        "ACM_BloodBag_ON_250",
        "ACM_BloodBag_ON_500",
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