class medic11r {
	name = "medic";
	description = "MEDIC!";
	traits[] = {
		{"Medic",true}
	};
	customVariables[] = {
		{"ace_medical_medicClass",2,true},
		{"TFAR_freq_sr",{"30","110","110.1","110.2","110.3","33","110.9","69"},true},
        {"YMF_teamcolor", "GREEN", true}
	};
	icon = "z\LXIM\addons\media\images\Icons\iconmanmedic_red.paa";

	defaultLoadout[] = {
            {"SPS_hk417_13_vfg_fde_f","","","sps_vortex_spitfire_gen2_x5_RMR_tan",{"20Rnd_762x51_Mag",20},{},""},
			{},
			{"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""},
			{"U_tweed_acu_summer_ocp_blench",{{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"16Rnd_9x21_Mag",2,17}}},
			{"V_tweed_msv_mk2_cell_45_1",{{"kat_IFAK",1},{"ACE_quikclot",11},{"SPS_20Rnd_762x51mm_M80A1_EPR",9,20},{"HandGrenade",2,1}}},{"lxim_backpack_Backpack_Kitbag_Medic_RGR",{{"kat_MFAK",1},{"ACE_quikclot",2},{"ACE_fieldDressing",15},{"ACE_morphine",6},{"ACE_epinephrine",6},{"ACE_salineIV_250",6},{"ACE_suture",6},{"ACE_splint",8},{"ACE_elasticBandage",14},{"ACE_packingBandage",14},{"ACE_painkillers",2,10}}},
			"H_tweed_ihps_tasc_rail","",
			{"Binocular","","","",{"Laserbatteries",1},{},""},
			{"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","psq42_blk_icup"}
    };
	arsenalWeapons[] = {
		"SPS_hk417_13_afg_black_f",
		"SPS_hk417_13_afg_fde_f",
		"SPS_hk417_13_afg_ral8000_f",
		"SPS_hk417_13_vfg_black_f",
		"SPS_hk417_13_vfg_fde_f",
		"SPS_hk417_13_vfg_ral8000_f",
		"SPS_hk417_13_glm_fde_f",
		"SPS_hk417_13_glm_ral8000_f",
		"SPS_hk417_16_afg_black_f",
		"SPS_hk417_16_afg_fde_f",
		"SPS_hk417_16_vfg_black_f",
		"SPS_hk417_16_vfg_fde_f",
		"SPS_hk417_16_vfg_ral8000_f",
		"SPS_hk417_16_glm_black_f",
		"SPS_hk417_16_glm_ral8000_f",
		"SPS_hk417_16_glm_fde_f",
		"sps_aimpoint_T1_Sand",
		"SPS_EOTech_Black50",
		"lxim_equipment_optic_DMS",
		"lxim_equipment_xm157_prototype",
		"SPS_SnB_shortdot_b",
		"SPS_EOTech_Tan",
		"SPS_SnB_shortdot_r",
		"sps_aimpoint_T1_Black_High50",
		"sps_vortex_spitfire_gen2_x5_black",
		"SPS_EOTech_Vudu_Black",
		"SPS_SnB_shortdot_p",
		"SPS_EOTech_Black_3xMAG_up",
		"sps_aimpoint_T1_High",
		"sps_aimpoint_T1_3xMAG_up",
		"sps_vortex_spitfire_gen2_x5_tan",
		"SPS_EOTech_Tan50",
		"sps_aimpoint_T1_3xMAG_up_Black",
		"sps_aimpoint_T1_Sand50",
		"sps_vortex_spitfire_gen2_x5_RMR_tan",
		"SPS_EOTech_Tan_3xMAG_up",
		"sps_aimpoint_T1_Black",
		"sps_vortex_spitfire_gen2_x5_RMR_black",
		"sps_aimpoint_T1_High50",
		"sps_aimpoint_T1_Black50",
		"sps_aimpoint_T1_Black_High",
		"DBAL_A4_IR_Pointer",
		"DBAL_A4_Top_Rwd_High_IR_Pointer",
		"sps_M300C",
		"DBAL_A4_Top_Fwd_IR_Pointer",
		"sps_M300C_MAWL_ext_IR_tan",
		"DBAL_A4_Top_Mid_IR_Pointer_Tan",
		"sps_M300C_MAWL_IR_tan",
		"DBAL_A4_Top_Mid_IR_Pointer",
		"sps_M300C_RAID_IR_tan",
		"sps_M300C_MAWL_IR",
		"sps_M300C_RAID_high_IR_tan",
		"DBAL_A4_Top_Mid_LAMG_IR_Pointer",
		"sps_M300C_RAID_high_ext_IR_tan",
		"DBAL_A4_Top_Fwd_High_IR_Pointer_Tan",
		"sps_M300C_RAID_LAMG_IR",
		"sps_M300C_MAWL_LAMG_IR_tan",
		"sps_M300C_RAID_IR",
		"sps_M300C_MAWL_smr_IR",
		"DBAL_A4_Top_Rwd_IR_Pointer_Tan",
		"DBAL_A4_Top_Rwd_IR_Pointer",
		"DBAL_A4_Top_Rwd_LAMG_IR_Pointer",
		"sps_M300C_MAWL_smr_IR_tan",
		"DBAL_A4_Top_Fwd_IR_Pointer_Tan",
		"sps_M300C_RAID_ext_IR",
		"DBAL_A4_Top_Rwd_High_IR_Pointer_Tan",
		"DBAL_A4_Top_Fwd_LAMG_IR_Pointer",
		"sps_M300C_MAWL_high_ext_IR",
		"sps_M300C_MAWL_ext_IR",
		"sps_M300C_RAID_smr_IR_tan",
		"sps_M300C_MAWL_high_IR",
		"DBAL_A4_Top_Fwd_LAMG_IR_Pointer_Tan",
		"sps_M300C_MAWL_high_IR_tan",
		"DBAL_A4_Top_Mid_High_IR_Pointer",
		"DBAL_A4_Top_Mid_High_IR_Pointer_Tan",
		"sps_M300C_MAWL_high_ext_IR_tan",
		"sps_M300C_RAID_ext_IR_tan",
		"DBAL_A4_Top_Rwd_LAMG_IR_Pointer_Tan",
		"sps_M300C_RAID_smr_IR",
		"sps_M300C_RAID_high_IR",
		"DBAL_A4_IR_Pointer_Tan",
		"sps_M300C_RAID_LAMG_IR_tan",
		"DBAL_A4_Top_Mid_LAMG_IR_Pointer_Tan",
		"sps_M300C_MAWL_LAMG_IR",
		"sps_M300C_RAID_high_ext_IR",
		"DBAL_A4_Top_Fwd_High_IR_Pointer",
		"muzzle_snds_HX762_black_H",
		"muzzle_snds_HX762_RAL8000_H",
		"muzzle_snds_HX762_raw_H",
		"muzzle_snds_HX762_grey_H",
		"muzzle_snds_HXQD762_FDE_H",
		"muzzle_snds_One_FDE_H",
		"muzzle_snds_One_Sand_H",
		"muzzle_snds_HXQD762_black_H",
		"muzzle_snds_HX762_FDE_H",
		"muzzle_snds_One_black_H",
		"sps_atlas_bipod_m_blk",
		"SPS_EOTech_Black",
		"sps_M300C_tan",
		"optic_DMS_weathered_F",
		"optic_DMS_weathered_Kir_F",
		"optic_DMS"
	};
	arsenalMagazines[] = {
		"SPS_20Rnd_762x51mm_M80A1_EPR_Tracer",
		"SPS_20Rnd_762x51mm_M80A1_EPR_IR",
		"SPS_20Rnd_762x51mm_M80A1_EPR",
		"ACE_HuntIR_M203",
		"1Rnd_HE_Grenade_shell",
		"CUP_FlareYellow_M203",
		"CUP_1Rnd_HE_M203",
		"CUP_1Rnd_HEDP_M203",
		"CUP_FlareRed_M203",
		"CUP_1Rnd_StarCluster_Green_M203",
		"CUP_1Rnd_StarCluster_Red_M203",
		"CUP_FlareWhite_M203",
		"CUP_1Rnd_StarFlare_Red_M203",
		"CUP_FlareGreen_M203",
		"CUP_1Rnd_StarFlare_White_M203",
		"CUP_1Rnd_StarFlare_Green_M203",
		"CUP_1Rnd_StarCluster_White_M203",
		"1Rnd_SmokeBlue_Grenade_shell",
		"1Rnd_SmokeGreen_Grenade_shell",
		"1Rnd_SmokeOrange_Grenade_shell",
		"1Rnd_SmokePurple_Grenade_shell",
		"1Rnd_SmokeRed_Grenade_shell",
		"1Rnd_Smoke_Grenade_shell",
		"1Rnd_SmokeYellow_Grenade_shell"
	};
	arsenalItems[] = {
		"kat_IV_16",
		"kat_aatKit",
		"kat_accuvac",
		"ACE_adenosine",
		"ACE_epinephrine",
		"kat_AFAK",
		"kat_X_AED",
		"kat_amiodarone",
		"kat_CarbonateItem",
		"kat_atropine",
		"kat_AED",
		"ACE_elasticBandage",
		"ACE_packingBandage",
		"kat_crossPanel",
		"ACE_bodyBag",
		"kat_plate",
		"kat_Bubble_Wrap_Item",
		"kat_BVM",
		"kat_CaffeineItem",
		"kat_chestSeal",
		"kat_clamp",
		"ACE_EarPlugs",
		"kat_vacuum",
		"kat_EACA",
		"kat_etomidate",
		"kat_IO_FAST",
		"kat_fentanyl",
		"KAT_Empty_bloodIV_250",
		"KAT_Empty_bloodIV_500",
		"kat_flumazenil",
		"kat_guedel",
		"ACE_fieldDressing",
		"kat_IFAK",
		"kat_ketamine",
		"kat_larynx",
		"kat_lidocaine",
		"kat_lorazepam",
		"kat_suction",
		"kat_MFAK",
		"kat_nalbuphine",
		"kat_naloxone",
		"kat_ncdKit",
		"kat_nitroglycerin",
		"kat_norepinephrine",
		"kat_PainkillerItem",
		"kat_PenthroxItem",
		"kat_PervitinItem",
		"kat_phenylephrine",
		"kat_Pulseoximeter",
		"kat_oxygenTank_300_Item",
		"kat_oxygenTank_150_Item",
		"kat_pocketBVM",
		"kat_retractor",
		"ACE_quikclot",
		"kat_scalpel",
		"kat_sealant",
		"ACE_splint",
		"kat_stethoscope",
		"ACE_surgicalKit",
		"ACE_suture",
		"ACE_tourniquet",
		"kat_TXA",
		"ACE_personalAidKit"
	};
	arsenalBackpacks[] = {
		"lxim_backpack_Backpack_Kitbag_Medic_Black",
		"lxim_backpack_Backpack_Kitbag_Medic_RGR",
		"lxim_backpack_Backpack_Kitbag_Medic_Tan",
		"lxim_backpack_Backpack_Kitbag_Medic_White",
		"lxim_backpack_Backpack_Kitbag_Medic_Coyote",
		"lxim_backpack_Backpack_Kitbag_Medic_MTP",
		"lxim_backpack_Backpack_Kitbag_Medic_Sage",
		"lxim_backpack_Backpack_Kitbag_Medic_Green"
	};
};

class medic11b {
	name = "medic";
	description = "MEDIC!";
	traits[] = {
		{"Medic",true}
	};
	customVariables[] = {
		{"ace_medical_medicClass",2,true},
		{"TFAR_freq_sr",{"30","110","110.1","110.2","110.3","33","110.9","69"},true},
		// {"diwako_dui_indicators_customIcon", "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa", true},
        {"YMF_teamcolor", "BLUE", true}
	};
	icon = "z\LXIM\addons\media\images\Icons\iconmanmedic_blue.paa";

	defaultLoadout[] = {
            {"SPS_hk417_13_vfg_fde_f","","","sps_vortex_spitfire_gen2_x5_RMR_tan",{"20Rnd_762x51_Mag",20},{},""},
			{},
			{"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""},
			{"U_tweed_acu_summer_ocp_blench",{{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"16Rnd_9x21_Mag",2,17}}},
			{"V_tweed_msv_mk2_cell_45_1",{{"kat_IFAK",1},{"ACE_quikclot",11},{"SPS_20Rnd_762x51mm_M80A1_EPR",9,20},{"HandGrenade",2,1}}},{"lxim_backpack_Backpack_Kitbag_Medic_RGR",{{"kat_MFAK",1},{"ACE_quikclot",2},{"ACE_fieldDressing",15},{"ACE_morphine",6},{"ACE_epinephrine",6},{"ACE_salineIV_250",6},{"ACE_suture",6},{"ACE_splint",8},{"ACE_elasticBandage",14},{"ACE_packingBandage",14},{"ACE_painkillers",2,10}}},
			"H_tweed_ihps_tasc_rail","",
			{"Binocular","","","",{"Laserbatteries",1},{},""},
			{"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","psq42_blk_icup"}
    };
	arsenalWeapons[] = {
		"SPS_hk417_13_afg_black_f",
		"SPS_hk417_13_afg_fde_f",
		"SPS_hk417_13_afg_ral8000_f",
		"SPS_hk417_13_vfg_black_f",
		"SPS_hk417_13_vfg_fde_f",
		"SPS_hk417_13_vfg_ral8000_f",
		"SPS_hk417_13_glm_fde_f",
		"SPS_hk417_13_glm_ral8000_f",
		"SPS_hk417_16_afg_black_f",
		"SPS_hk417_16_afg_fde_f",
		"SPS_hk417_16_vfg_black_f",
		"SPS_hk417_16_vfg_fde_f",
		"SPS_hk417_16_vfg_ral8000_f",
		"SPS_hk417_16_glm_black_f",
		"SPS_hk417_16_glm_ral8000_f",
		"SPS_hk417_16_glm_fde_f",
		"SPS_EOTech_Black50",
		"SPS_EOTech_Tan",
		"SPS_EOTech_Black",
		"SPS_EOTech_Tan50",
		"SPS_Optic_SnB_US_3_20_RMR_RAL8000",
		"sps_vortex_spitfire_gen2_x5_RMR_tan",
		"SPS_Optic_SnB_US_3_20_RMR_Black",
		"sps_vortex_spitfire_gen2_x5_RMR_black",
		"DBAL_A4_IR_Pointer",
		"DBAL_A4_Top_Rwd_High_IR_Pointer",
		"sps_M300C",
		"DBAL_A4_Top_Fwd_IR_Pointer",
		"sps_M300C_MAWL_ext_IR_tan",
		"DBAL_A4_Top_Mid_IR_Pointer_Tan",
		"sps_M300C_MAWL_IR_tan",
		"DBAL_A4_Top_Mid_IR_Pointer",
		"sps_M300C_RAID_IR_tan",
		"sps_M300C_MAWL_IR",
		"sps_M300C_RAID_high_IR_tan",
		"DBAL_A4_Top_Mid_LAMG_IR_Pointer",
		"sps_M300C_RAID_high_ext_IR_tan",
		"DBAL_A4_Top_Fwd_High_IR_Pointer_Tan",
		"sps_M300C_RAID_LAMG_IR",
		"sps_M300C_MAWL_LAMG_IR_tan",
		"sps_M300C_RAID_IR",
		"sps_M300C_MAWL_smr_IR",
		"DBAL_A4_Top_Rwd_IR_Pointer_Tan",
		"DBAL_A4_Top_Rwd_IR_Pointer",
		"DBAL_A4_Top_Rwd_LAMG_IR_Pointer",
		"sps_M300C_MAWL_smr_IR_tan",
		"DBAL_A4_Top_Fwd_IR_Pointer_Tan",
		"sps_M300C_RAID_ext_IR",
		"DBAL_A4_Top_Rwd_High_IR_Pointer_Tan",
		"sps_M300C_tan",
		"DBAL_A4_Top_Fwd_LAMG_IR_Pointer",
		"sps_M300C_MAWL_high_ext_IR",
		"sps_M300C_MAWL_ext_IR",
		"sps_M300C_RAID_smr_IR_tan",
		"sps_M300C_MAWL_high_IR",
		"DBAL_A4_Top_Fwd_LAMG_IR_Pointer_Tan",
		"sps_M300C_MAWL_high_IR_tan",
		"DBAL_A4_Top_Mid_High_IR_Pointer",
		"DBAL_A4_Top_Mid_High_IR_Pointer_Tan",
		"sps_M300C_MAWL_high_ext_IR_tan",
		"sps_M300C_RAID_ext_IR_tan",
		"DBAL_A4_Top_Rwd_LAMG_IR_Pointer_Tan",
		"sps_M300C_RAID_smr_IR",
		"sps_M300C_RAID_high_IR",
		"DBAL_A4_IR_Pointer_Tan",
		"sps_M300C_RAID_LAMG_IR_tan",
		"DBAL_A4_Top_Mid_LAMG_IR_Pointer_Tan",
		"sps_M300C_MAWL_LAMG_IR",
		"sps_M300C_RAID_high_ext_IR",
		"DBAL_A4_Top_Fwd_High_IR_Pointer",
		"muzzle_snds_HX762_black_H",
		"muzzle_snds_HX762_RAL8000_H",
		"muzzle_snds_HX762_raw_H",
		"muzzle_snds_HX762_grey_H",
		"muzzle_snds_HXQD762_FDE_H",
		"muzzle_snds_One_FDE_H",
		"muzzle_snds_One_Sand_H",
		"muzzle_snds_HXQD762_black_H",
		"muzzle_snds_HX762_FDE_H",
		"sps_atlas_bipod_m_blk",
		"muzzle_snds_One_black_H",
		"sps_vortex_spitfire_gen2_x5_black",
		"sps_vortex_spitfire_gen2_x5_tan",
		"SPS_Optic_SnB_US_3_20_RMR_FDE",
		"LXIM_equipment_ace_xm157_prototype"
	};
	arsenalMagazines[] = {
		"SPS_20Rnd_762x51mm_M80A1_EPR_Tracer",
		"SPS_20Rnd_762x51mm_M80A1_EPR_IR",
		"SPS_20Rnd_762x51mm_M80A1_EPR",
		"ACE_HuntIR_M203",
		"1Rnd_HE_Grenade_shell",
		"CUP_FlareYellow_M203",
		"CUP_1Rnd_HE_M203",
		"CUP_1Rnd_HEDP_M203",
		"CUP_FlareRed_M203",
		"CUP_1Rnd_StarCluster_Green_M203",
		"CUP_1Rnd_StarCluster_Red_M203",
		"CUP_FlareWhite_M203",
		"CUP_1Rnd_StarFlare_Red_M203",
		"CUP_FlareGreen_M203",
		"CUP_1Rnd_StarFlare_White_M203",
		"CUP_1Rnd_StarFlare_Green_M203",
		"CUP_1Rnd_StarCluster_White_M203",
		"1Rnd_SmokeBlue_Grenade_shell",
		"1Rnd_SmokeGreen_Grenade_shell",
		"1Rnd_SmokeOrange_Grenade_shell",
		"1Rnd_SmokePurple_Grenade_shell",
		"1Rnd_SmokeRed_Grenade_shell",
		"1Rnd_Smoke_Grenade_shell",
		"1Rnd_SmokeYellow_Grenade_shell"
	};
	arsenalItems[] = {
		"kat_IV_16",
		"kat_aatKit",
		"kat_accuvac",
		"ACE_adenosine",
		"ACE_epinephrine",
		"kat_AFAK",
		"kat_X_AED",
		"kat_amiodarone",
		"kat_CarbonateItem",
		"kat_atropine",
		"kat_AED",
		"ACE_elasticBandage",
		"ACE_packingBandage",
		"kat_crossPanel",
		"ACE_bodyBag",
		"kat_plate",
		"kat_Bubble_Wrap_Item",
		"kat_BVM",
		"kat_CaffeineItem",
		"kat_chestSeal",
		"kat_clamp",
		"ACE_EarPlugs",
		"kat_vacuum",
		"kat_EACA",
		"kat_etomidate",
		"kat_IO_FAST",
		"kat_fentanyl",
		"KAT_Empty_bloodIV_250",
		"KAT_Empty_bloodIV_500",
		"kat_flumazenil",
		"kat_guedel",
		"ACE_fieldDressing",
		"kat_IFAK",
		"kat_ketamine",
		"kat_larynx",
		"kat_lidocaine",
		"kat_lorazepam",
		"kat_suction",
		"kat_MFAK",
		"kat_nalbuphine",
		"kat_naloxone",
		"kat_ncdKit",
		"kat_nitroglycerin",
		"kat_norepinephrine",
		"kat_PainkillerItem",
		"kat_PenthroxItem",
		"kat_PervitinItem",
		"kat_phenylephrine",
		"kat_Pulseoximeter",
		"kat_oxygenTank_300_Item",
		"kat_oxygenTank_150_Item",
		"kat_pocketBVM",
		"kat_retractor",
		"ACE_quikclot",
		"kat_scalpel",
		"kat_sealant",
		"ACE_splint",
		"kat_stethoscope",
		"ACE_surgicalKit",
		"ACE_suture",
		"ACE_tourniquet",
		"kat_TXA",
		"ACE_personalAidKit"
	};
	arsenalBackpacks[] = {
		"lxim_backpack_Backpack_Kitbag_Medic_Black",
		"lxim_backpack_Backpack_Kitbag_Medic_RGR",
		"lxim_backpack_Backpack_Kitbag_Medic_Tan",
		"lxim_backpack_Backpack_Kitbag_Medic_White",
		"lxim_backpack_Backpack_Kitbag_Medic_Coyote",
		"lxim_backpack_Backpack_Kitbag_Medic_MTP",
		"lxim_backpack_Backpack_Kitbag_Medic_Sage",
		"lxim_backpack_Backpack_Kitbag_Medic_Green"
	};
};