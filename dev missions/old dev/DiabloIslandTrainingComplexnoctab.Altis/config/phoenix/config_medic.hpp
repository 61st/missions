class medicp {
	name = "Flight Medic";
	description = "MEDIC!";
	traits[] = {
		{"Medic",true}
	};
	customVariables[] = {
		{"ace_medical_medicClass",2,true},
		{"TFAR_freq_sr",{"100.1","82","35.1","33","100","75","60","35"},true}
	};
	icon = "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa";

	defaultLoadout[] = {
            {"CUP_arifle_M4A1_standard_short_black","","CUP_acc_ANPEQ_15","SPS_EOTech_Black",{"SPS_HKG3PMAG_30Rnd_556x45_M855A1_B",30},{},""},
            {},
            {"CUP_hgun_M17_Coyote","","","",{"CUP_21Rnd_9x19_M17_Coyote",21},{},""},
            {"U_tweed_acu_summer_ocp_unbl_trop",{{"G_Aviator",1},{"CUP_G_WristWatch",1},{"ACE_MRE_MeatballsPasta",1},{"ACE_splint",2},{"acex_intelitems_notepad",1,1},{"kat_Painkiller",1,10},{"Chemlight_red",1,1},{"ACE_Chemlight_HiRed",4,1},{"ACE_Chemlight_HiGreen",4,1},{"ACE_Chemlight_HiBlue",4,1},{"CUP_HandGrenade_M67",1,1}}},
            {"V_tweed_msv_mk2_1",{{"CUP_21Rnd_9x19_M17_Coyote",2,21},{"SPS_HKG3PMAG_30Rnd_556x45_M856A1_B",7,30}}},
            {"B_simc_US_Molle_sturm_OCP_thermos_od7",{{"kat_EACA",4},{"ACE_IR_Strobe_Item",1},{"B_IR_Grenade",1},{"ACE_tourniquet",4},{"ACE_splint",4},{"ACE_elasticBandage",40},{"ACE_packingBandage",20},{"kat_X_AED",1},{"kat_aatKit",5},{"kat_ncdKit",6},{"ACE_salineIV",4},{"ACE_salineIV_500",10},{"kat_atropine",10},{"kat_chestSeal",5},{"kat_lidocaine",6},{"kat_nitroglycerin",4},{"kat_norepinephrine",4},{"kat_accuvac",1}}},
            "H_PilotHelmetHeli_B","CUP_G_Tan_Scarf_GPS",{"Laserdesignator_03","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch",""}
    };
    arsenalitems[] = {
		"kat_accuvac",
		"kat_pocketBVM",
		"kat_oxygenTank_300_Item",
		"kat_oxygenTank_150_Item",
		"CUP_arifle_M4A1_standard_short_black",
        "H_PilotHelmetHeli_B",
        "H_CrewHelmetHeli_B",
        "FIR_HGU56P_Skull_Death",
        "FIR_HGU56P_Skull",
        "H_PilotHelmetHeli_I_E",
        "H_CrewHelmetHeli_I_E",
        "kat_AFAK",
        "CUP_NVG_GPNVG_black_WP",
        "CUP_NVG_GPNVG_black",
        "ACE_NVG_Wide_Black",
        "ACE_NVG_Wide_Black_WP",
        "SPS_HKG3PMAG_30Rnd_556x45_M855A1_B",
        "SPS_HKG3PMAG_30Rnd_556x45_M856A1_B",
        "SPS_HKG3PMAG_30Rnd_556x45_B_M995",
        "SPS_HKG3PMAG_30Rnd_556x45_M855A1_FDE",
        "SPS_HKG3PMAG_30Rnd_556x45_M856A1_FDE",
        "SPS_HKG3PMAG_30Rnd_556x45_FDE_M995",
        "SPS_HKG3PMAG_30Rnd_556x45_S_M995",
        "SPS_HKG3PMAG_30Rnd_556x45_M856A1_S",
        "SPS_HKG3PMAG_30Rnd_556x45_M855A1_S",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
		"kat_AFAK",
		"ACE_salineIV_500",
		"ACE_salineIV_250",
		"ACE_salineIV",
		"kat_X_AED",
		"kat_aatKit",
		"kat_atropine",
		"ACE_epinephrine",
		"kat_EACA",
		"kat_etomidate",
		"kat_lidocaine",
		"kat_norepinephrine",
		"kat_nitroglycerin",
		"kat_ncdKit",
		"kat_MFAK",
		"ACE_surgicalKit",
		"kat_stethoscope",
		"kat_Pulseoximeter",
		"kat_pocketBVM",
		"kat_phenylephrine",
		"kat_PervitinItem",
		"kat_PenthroxItem",
		"kat_PainkillerItem",
		"lxim_naloxone",
		"kat_naloxone",
		"kat_nalbuphine",
		"ACE_morphine",
		"kat_lorazepam",
		"kat_larynx",
		"kat_ketamine",
		"kat_guedel",
		"kat_IO_FAST",
		"kat_fentanyl",
		"kat_vacuum",
		"kat_CarbonateItem",
		"kat_amiodarone",
		"kat_BVM",
		"kat_plate",
		"kat_clamp",
		"kat_flumazenil",
		"kat_suction",
		"kat_retractor",
		"kat_scalpel",
		"ACE_suture",
		"kat_TXA",
		"lxim_backpack_Backpack_Kitbag_Medic_Green",
		"lxim_backpack_Backpack_Kitbag_Medic_MTP",
		"lxim_backpack_Backpack_Kitbag_Medic_Coyote",
		"lxim_backpack_Backpack_Kitbag_Medic_Tan",
		"lxim_backpack_Backpack_Kitbag_Medic_RGR",
		"B_simc_US_Molle_sturm_OCP_RTO_wasser",
		"B_simc_US_Molle_sturm_OCP_RTO"
	};
};