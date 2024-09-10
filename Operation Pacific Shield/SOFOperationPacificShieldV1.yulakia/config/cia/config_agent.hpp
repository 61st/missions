class Officer {
    name = "Officer";
    description = "They are not Agents";
    traits[] = {
		{"Medic",true},
		{"Engineer",true}
	};
    customVariables[] = {
		{"TFAR_freq_sr",{"100.1","110","110.2","33","100","75","60","35"},true},
		{"YMF_iscom", true, true},
		{"YMF_ismed", true, true}
	};
    icon = "a3\ui_f\data\map\vehicleicons\iconmancommander_ca.paa";

    defaultLoadout[] = {
			{"SPS_hk416_14_5_exsmr_hk_ctr_vfg_black_f","muzzle_snds_HXQD556_black_M","CUP_acc_ANPEQ_15_Flashlight_Black_L","sps_vortex_spitfire_gen2_x5_RMR_black",{"sps_30Rnd_556x45_Stanag",30},{},"bipod_01_F_blk"},{},
			{"CUP_hgun_M9","CUP_muzzle_snds_M9","","",{"CUP_15Rnd_9x19_M9",15},{},""},{"CUP_I_B_PMC_Unit_43",{{"FirstAidKit",1},{"CUP_NVG_PVS7",1},{"CUP_30Rnd_556x45_Stanag",4,30}}},
			{"CUP_V_B_Ciras_Black4",{{"ACE_Clacker",1},{"CUP_HandGrenade_M67",3,1},{"SmokeShell",2,1},{"sps_30Rnd_556x45_Stanag",10,30},{"Chemlight_blue",2,1},{"Chemlight_green",2,1},{"ACE_Chemlight_IR",2,1},{"MS_Strobe_Mag_1",2,1},{"ACE_M84",2,1},{"DemoCharge_Remote_Mag",1,1}}},
			{"B_Carryall_blk",{{{"ACE_EarPlugs",2},{"ACE_IR_Strobe_Item",1},{"ACE_SpraypaintRed",1},{"ACE_EntrenchingTool",1},{"ACE_DefusalKit",1},{"ACE_Flashlight_MX991",1},{"ACE_microDAGR",1},{"DemoCharge_Remote_Mag",2,1},{"sps_30Rnd_556x45_Stanag",3,30},{"CUP_15Rnd_9x19_M9",3,15}}},
			"CUP_H_OpsCore_Grey","CUP_G_Grn_Scarf_Shades_Beard_Blonde",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
			{"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","CUP_NVG_GPNVG_black_WP"}
    };
    arsenalitems[] = {
		"kat_accuvac",
		"kat_pocketBVM",
		"kat_AFAK",
		"ACE_salineIV_500",
		"ACE_salineIV_250",
		"ACE_salineIV",
		"kat_X_AED",
		"ACE_epinephrine",
		"kat_aatKit",
		"kat_atropine",
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
		"B_simc_US_Molle_sturm_OCP_RTO",
		"ACE_adenosine",
		"kat_Carbonate",
		"kat_AED",
		"ACE_fieldDressing",
		"ACE_elasticBandage",
		"ACE_packingBandage",
		"kat_crossPanel",
		"kat_Bubble_Wrap_Item",
		"kat_chestSeal",
		"ACE_painkillers",
		"KAT_Empty_bloodIV_250",
		"KAT_Empty_bloodIV_500",
		"kat_ultrasound",
        "kat_coag_sense",
        "kat_fluidWarmer",
		"kat_nasal",
		"kat_Penthrox",
		"kat_phenylephrineAuto",
		"ACE_splint",
		"kat_reboa",
		"ACE_quikclot",
		"kat_oxygenTank_300_Item",
		"kat_oxygenTank_150_Item",
		"lxim_backpack_Backpack_Kitbag_Medic_Black",
		"lxim_backpack_Backpack_Kitbag_Medic_Sage",
		"lxim_backpack_Backpack_Kitbag_Medic_White",
		"ACE_M26_Clacker",
		"ACE_Clacker",
		"ACE_DefusalKit",
		"ToolKit",
		"MineDetector",
		"lxim_breaching_BreachingCharge_Mag",
		"ACE_VMH3",
		"ACE_VMM3",
		"DemoCharge_Remote_Mag",
		"ATMine_Range_Mag",
		"SatchelCharge_Remote_Mag",
		"ClaymoreDirectionalMine_Remote_Mag",
		"SLAMDirectionalMine_Wire_Mag",
		"ACE_Fortify",
		"SPS_hk416_14_5_exsmr_hk_ctr_vfg_black_f",
		"IS_Balaclava",
		"G_Balaclava_blk",
		"SP_Balaclava_Black",
		"CUP_RUS_Balaclava_blk",
		"SP_Balaclava_HamasBlack",
		"G_Balaclava_TI_blk_F",
		"G_Balaclava_TI_G_blk_F",
		"CFP_Beard",
		"CUP_Beard_Black",
		"CUP_Beard_Blonde",
		"CUP_Beard_Brown",
		"CFP_Beard_Grey",
		"CFP_Beard_Red",
		"CFP_Scarfbeard_green",
		"CFP_Scarfbeard_grey",
		"CFP_Scarfbeard_tan",
		"CFP_Scarfbeard_white",
		"CFP_Scarfbeardshades_green",
		"CFP_Scarfbeardshades_grey",
		"CFP_Scarfbeardshades_tan",
		"CFP_Scarfbeardshades_white",
		"CUP_G_Grn_Scarf_GPS_Beard_Blonde",
		"CUP_G_Grn_Scarf_GPS_Beard",
		"CUP_G_Tan_Scarf_GPS_Beard_Blonde",
		"CUP_G_Tan_Scarf_GPS_Beard",
		"CUP_G_White_Scarf_GPS_Beard_Blonde",
		"CUP_G_White_Scarf_GPS_Beard",
		"CUP_G_Grn_Scarf_Shades_GPSCombo_Beard_Blonde",
		"CUP_G_Grn_Scarf_Shades_GPSCombo_Beard",
		"CUP_G_Tan_Scarf_Shades_GPSCombo_Beard",
		"CUP_G_Tan_Scarf_Shades_GPSCombo_Beard_Blonde",
		"CUP_G_White_Scarf_Shades_GPSCombo_Beard",
		"CUP_G_White_Scarf_Shades_GPSCombo_Beard_Blonde",
		"CFP_Oakley_Goggles_Alp",
		"CFP_Oakley_Goggles_Blk",
		"CFP_Oakley_Goggles_Choc",
		"G_B_Diving",
		"CUP_G_ESS_BLK_Scarf_Grn_Beard",
		"CUP_G_ESS_BLK_Scarf_White_GPS",
		"G_tweed_tacticool_blauw_comba",
		"G_tweed_tacticool_blauw_peltor",
		"G_tweed_tacticool_blauw_peltor_comba",
		"G_tweed_tacticool_blauw_peltor_oak",
		"G_tweed_tacticool_blauw_peltor_nomex",
		"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
		"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
		"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
		"CUP_PMC_Facewrap_Black",
		"SP_GasMask_Black",
		"FIR_Visor_Black_covered_normal_down",
		"CFP_Shemagh_Neck_M81",
		"CUP_FR_NeckScarf5",
		"CUP_FR_NeckScarf4",
		"CUP_G_Grn_Scarf_GPS",
		"CUP_G_WatchGPSCombo",
		"G_Squares_Tinted",
		"G_Squares",
		"G_Spectacles",
		"G_Sport_Red",
		"CFP_Shemagh_Neck_Gold",
		"CFP_Shemagh_Neck_Creme",
		"CUP_FR_NeckScarf3",
		"CUP_NVG_GPNVG_black",
		"CUP_NVG_GPNVG_black_WP",
		"CUP_NVG_GPNVG_green",
		"CUP_NVG_GPNVG_green_WP",
		"CUP_NVG_GPNVG_tan",
		"CUP_NVG_GPNVG_tan_WP",
		"CUP_I_B_PMC_Unit_20",
		"CUP_I_B_PMC_Unit_21",
		"CUP_I_B_PMC_Unit_19",
		"CUP_I_B_PMC_Unit_17",
		"CUP_I_B_PMC_Unit_22",
		"CUP_I_B_PMC_Unit_13",
		"CUP_I_B_PMC_Unit_16",
		"CUP_I_B_PMC_Unit_15",
		"CUP_I_B_PMC_Unit_14",
		"CUP_I_B_PMC_Unit_12",
		"CUP_I_B_PMC_Unit_3",
		"CUP_I_B_PMC_Unit_2",
		"CUP_I_B_PMC_Unit_1",
		"CUP_I_B_PMC_Unit_4",
		"CUP_I_B_PMC_Unit_7",
		"CUP_I_B_PMC_Unit_5",
		"CUP_I_B_PMC_Unit_8",
		"CUP_I_B_PMC_Unit_6",
		"CUP_I_B_PMC_Unit_11",
		"CUP_I_B_PMC_Unit_10",
		"CUP_I_B_PMC_Unit_9",
		"CUP_I_B_PMC_Unit_42",
		"CUP_I_B_PMC_Unit_41",
		"CUP_I_B_PMC_Unit_43",
		"CUP_I_B_PMC_Unit_40",
		"CUP_I_B_PMC_Unit_39",
		"CUP_I_B_PMC_Unit_36",
		"CUP_I_B_PMC_Unit_38",
		"CUP_H_PMC_Cap_Burberry",
		"CUP_H_PMC_Cap_Back_Burberry",
		"CUP_H_PMC_Cap_Back_PRR_Burberry",
		"CUP_H_PMC_Cap_PRR_Burberry",
		"CUP_H_PMC_Cap_Grey",
		"CUP_H_PMC_Cap_Back_Grey",
		"CUP_H_PMC_Cap_Back_EP_Grey",
		"CUP_H_PMC_Cap_Back_PRR_Grey",
		"CUP_H_PMC_Cap_PRR_Grey",
		"CUP_H_PMC_Cap_Back_Tan",
		"CUP_H_PMC_Cap_Back_EP_Tan",
		"CUP_H_PMC_Cap_Back_PRR_Tan",
		"CUP_H_PMC_Cap_PRR_Tan",
		"CUP_H_PMC_Cap_Tan",
		"CUP_H_PMC_EP_Headset",
		"CUP_H_PMC_PRR_Headset",
		"CUP_H_PMC_Cap_EP_Tan",
		"CUP_H_PMC_Cap_EP_Grey",
		"CUP_I_B_PMC_Unit_37",
		"CUP_V_PMC_CIRAS_Black_Veh",
		"CUP_V_PMC_CIRAS_Coyote_Veh",
		"CUP_V_PMC_CIRAS_Khaki_Veh",
		"CUP_V_PMC_CIRAS_OD_Veh",
		"CUP_V_PMC_CIRAS_Black_Empty",
		"CUP_V_PMC_CIRAS_Coyote_Empty",
		"CUP_V_PMC_CIRAS_Khaki_Empty",
		"CUP_V_PMC_CIRAS_OD_Empty",
		"CUP_V_PMC_CIRAS_Black_Grenadier",
		"CUP_V_PMC_CIRAS_Coyote_Grenadier",
		"CUP_V_PMC_CIRAS_Khaki_Grenadier",
		"CUP_V_PMC_CIRAS_OD_Grenadier",
		"CUP_V_PMC_CIRAS_Black_Patrol",
		"CUP_V_PMC_CIRAS_Coyote_Patrol",
		"CUP_V_PMC_CIRAS_Black_TL",
		"CUP_V_PMC_CIRAS_Coyote_TL",
		"CUP_V_PMC_CIRAS_Khaki_TL",
		"CUP_V_PMC_CIRAS_OD_TL",
		"CUP_V_B_Ciras_Black",
		"CUP_V_B_Ciras_Black2",
		"CUP_V_B_Ciras_Black3",
		"CUP_V_B_Ciras_Black4",
		"CUP_V_B_Ciras_Coyote",
		"CUP_V_B_Ciras_Coyote2",
		"CUP_V_B_Ciras_Coyote3",
		"CUP_V_B_Ciras_Coyote_USSF",
		"CUP_V_B_Ciras_Khaki",
		"CUP_V_B_Ciras_Khaki2",
		"CUP_V_B_Ciras_Khaki3",
		"CUP_V_B_Ciras_MCam",
		"CUP_V_B_Ciras_MCam2",
		"CUP_V_B_Ciras_Mcam3",
		"CUP_V_B_Ciras_Khaki4",
		"CUP_V_B_Ciras_Coyote4",
		"CUP_V_B_Ciras_Mcam4",
		"CUP_V_B_Ciras_Olive",
		"CUP_V_B_Ciras_Olive2",
		"CUP_V_B_Ciras_Olive3",
		"CUP_V_B_Ciras_Olive4",
		"CUP_V_B_Ciras_Olive_USSF",
		"CUP_V_PMC_CIRAS_Coyote_Patrol_Marsoc1",
		"CUP_V_PMC_CIRAS_Coyote_Patrol_Marsoc2",
		"CUP_V_PMC_CIRAS_Khaki_Patrol_Marsoc1",
		"CUP_V_PMC_CIRAS_Khaki_Patrol",
		"CUP_V_PMC_CIRAS_OD_Patrol_Marsoc1",
		"CUP_V_PMC_CIRAS_OD_Patrol",
		"CFP_HV1_Ciras_Olive",
		"CFP_HV2_Ciras_Olive",
		"CFP_HV3_Ciras_Olive",
		"CFP_HV4_Ciras_Olive",
		"CFP_HV5_Ciras_Olive",
		"CUP_H_OpsCore_Black",
		"CUP_H_OpsCore_Black_IASF",
		"CUP_H_OpsCore_Covered_IDF",
		"CUP_H_OpsCore_Covered_IDF_SF",
		"CUP_H_OpsCore_Black_NoHS_IASF",
		"CUP_H_OpsCore_Black_SF",
		"CFP_OPS2017_Helmet_Black2",
		"CFP_OPS2017_Helmet_Black",
		"CUP_H_OpsCore_Grey",
		"CUP_H_OpsCore_Grey_SF",
		"CFP_OPS2017_Helmet_Grey",
		"CUP_H_OpsCore_Grey_NoHS",
		"CUP_H_OpsCore_Green",
		"CUP_H_OpsCore_Green_NoHS",
		"CUP_H_OpsCore_Green_SF",
		"B_Carryall_blk",
		"CUP_B_AssaultPack_Black",
		"lxim_backpack_AssaultPack_Solid_Black",
		"lxim_backpack_AssaultPack_Solid_CoyoteBrown",
		"lxim_backpack_AssaultPack_Multicam_Woodland",
		"lxim_backpack_AssaultPackEnhanced_Solid_Black",
		"lxim_backpack_AssaultPackEnhanced_Solid_Olive",
		"lxim_backpack_AssaultPackEnhanced_Solid_CoyoteBrown",
		"lxim_backpack_Carryall_Solid_Black",
		"lxim_backpack_Carryall_Solid_Olive",
		"lxim_backpack_Kitbag_Solid_Black",
		"lxim_backpack_Kitbag_Solid_Olive",
		"lxim_backpack_Backpack_Kitbag_Medic_Sage",
		"lxim_backpack_Backpack_Kitbag_Medic_Coyote",
		"lxim_backpack_Backpack_Kitbag_Medic_White",
		"lxim_backpack_Backpack_Kitbag_Medic_MTP",
		"lxim_backpack_Backpack_Kitbag_Medic_Tan",
		"lxim_backpack_Backpack_Kitbag_Medic_Green",
		"lxim_backpack_Backpack_Kitbag_Medic_RGR",
		"lxim_backpack_Backpack_Kitbag_Medic_Black",
		"lxim_backpack_TacticalPack_Solid_CoyoteBrown",
		"lxim_backpack_TacticalPack_Solid_Black",
		"lxim_backpack_B_RadioBag_01_Solid_Tan_F"
	};
};
