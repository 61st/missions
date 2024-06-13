class driver1 {
	name = "Crew Driver";
    description = "vroom vroom";
    traits[] = {
		{"Engineer",true}
	};
	customVariables[] = {
		{"ace_isEngineer",1,true},
        {"TFAR_freq_sr",{"50","110","110.1","110.2","110.9","30","66","69"},true},
        {"YMF_teamcolor", "MAIN", true}
	};
    icon = "z\LXIM\addons\media\images\Icons\driver.paa";

    defaultLoadout[] = {
            {"SPS_hk337_t_fde_f","","","sps_vortex_spitfire_gen2_x5_RMR_tan",{"SPS_HKG3PMAG_30Rnd_300BLK_110_B",30},{},""}, 
            {}, 
            {"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""}, 
            {"U_tweed_acu_summer_ocp_blench",{{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"16Rnd_9x21_Mag",2,17}}},
            {"V_tweed_msv_mk2_e_1",{{"SPS_HKG3PMAG_30Rnd_300BLK_110_B",2,30}}}, 
            {},"H_HelmetCrew_B","G_tweed_ESS_Green",
            {"Binocular","","","",{},{},""}, 
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","psq42_blk_icup"}
    };
    arsenalWeapons[] = {
        "SPS_hk337_hk_ctr_fde_f",
        "SPS_hk337_t_afg_ral8000_f",
        "SPS_hk337_t_afg_fde_f",
        "SPS_hk337_t_afg_black_f",
        "SPS_hk337_t_ctr_afg_ral8000_f",
        "SPS_hk337_t_ctr_afg_fde_f",
        "SPS_hk337_t_ctr_afg_black_f",
        "SPS_hk337_hk_ctr_afg_ral8000_f",
        "SPS_hk337_hk_ctr_afg_fde_f",
        "SPS_hk337_hk_ctr_afg_black_f",
        "SPS_hk337_afg_ral8000_f",
        "SPS_hk337_afg_fde_f",
        "SPS_hk337_afg_black_f",
        "SPS_hk337_hk_ctr_black_f",
        "SPS_hk337_hk_ctr_ral8000_f",
        "SPS_hk337_t_ctr_black_f",
        "SPS_hk337_t_ctr_fde_f",
        "SPS_hk337_t_ctr_ral8000_f",
        "SPS_hk337_black_f",
        "SPS_hk337_fde_f",
        "SPS_hk337_ral8000_f",
        "SPS_hk337_t_black_f",
        "SPS_hk337_t_fde_f",
        "SPS_hk337_t_ral8000_f",
        "SPS_hk337_vfg_black_f",
        "SPS_hk337_vfg_fde_f",
        "SPS_hk337_vfg_ral8000_f",
        "SPS_hk337_hk_ctr_vfg_black_f",
        "SPS_hk337_hk_ctr_vfg_fde_f",
        "SPS_hk337_hk_ctr_vfg_ral8000_f",
        "SPS_hk337_t_ctr_vfg_black_f",
        "SPS_hk337_t_ctr_vfg_fde_f",
        "SPS_hk337_t_ctr_vfg_ral8000_f",
        "SPS_hk337_t_vfg_black_f",
        "SPS_hk337_t_vfg_ral8000_f",
        "SPS_hk337_t_vfg_fde_f",
        "SPS_EOTech_Black_3xMAG_up",
        "SPS_EOTech_Tan50",
        "sps_aimpoint_T1_Black",
        "SPS_EOTech_Tan_3xMAG_up",
        "ACE_optic_SOS_PIP",
        "sps_aimpoint_T1_Sand",
        "lxim_equipment_xm157_prototype",
        "sps_aimpoint_T1_3xMAG_up",
        "SPS_EOTech_Black",
        "SPS_EOTech_Tan",
        "sps_vortex_spitfire_gen2_x5_black",
        "sps_vortex_spitfire_gen2_x5_RMR_black",
        "sps_aimpoint_T1_Black50",
        "sps_aimpoint_T1_3xMAG_up_Black",
        "SPS_EOTech_Vudu_Black",
        "lxim_equipment_optic_DMS",
        "sps_aimpoint_T1_Sand50",
        "sps_vortex_spitfire_gen2_x5_RMR_tan",
        "SPS_EOTech_Black50",
        "sps_vortex_spitfire_gen2_x5_tan",
        "sps_M300C",
        "DBAL_A4_Top_Mid_IR_Pointer_Tan",
        "DBAL_A4_IR_Pointer",
        "DBAL_A4_Top_Fwd_IR_Pointer",
        "sps_M300C_MAWL_ext_IR_tan",
        "sps_M300C_MAWL_IR_tan",
        "DBAL_A4_Top_Mid_LAMG_IR_Pointer",
        "DBAL_A4_Top_Mid_IR_Pointer",
        "sps_M300C_RAID_IR_tan",
        "sps_M300C_MAWL_IR",
        "sps_M300C_MAWL_LAMG_IR_tan",
        "sps_M300C_RAID_LAMG_IR",
        "sps_M300C_RAID_IR",
        "sps_M300C_MAWL_smr_IR",
        "sps_M300C_MAWL_smr_IR_tan",
        "DBAL_A4_Top_Rwd_LAMG_IR_Pointer",
        "DBAL_A4_Top_Rwd_IR_Pointer_Tan",
        "DBAL_A4_Top_Rwd_IR_Pointer",
        "DBAL_A4_Top_Fwd_IR_Pointer_Tan",
        "sps_M300C_RAID_ext_IR",
        "DBAL_A4_Top_Fwd_LAMG_IR_Pointer",
        "sps_M300C_tan",
        "sps_M300C_MAWL_ext_IR",
        "ACE_DBAL_A3_Green",
        "sps_M300C_RAID_smr_IR_tan",
        "DBAL_A4_Top_Fwd_LAMG_IR_Pointer_Tan",
        "sps_M300C_RAID_ext_IR_tan",
        "DBAL_A4_Top_Rwd_LAMG_IR_Pointer_Tan",
        "sps_M300C_RAID_smr_IR",
        "DBAL_A4_IR_Pointer_Tan",
        "sps_M300C_RAID_LAMG_IR_tan",
        "sps_M300C_MAWL_LAMG_IR",
        "DBAL_A4_Top_Mid_LAMG_IR_Pointer_Tan",
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
        "sps_aimpoint_T1_Black_High",
        "sps_aimpoint_T1_Black_High50",
        "sps_aimpoint_T1_High",
        "sps_aimpoint_T1_High50",
        "DBAL_A4_Top_Fwd_High_IR_Pointer_Tan",
        "DBAL_A4_Top_Rwd_High_IR_Pointer_Tan",
        "DBAL_A4_Top_Fwd_High_IR_Pointer",
        "DBAL_A4_Top_Mid_High_IR_Pointer",
        "DBAL_A4_Top_Rwd_High_IR_Pointer",
        "sps_M300C_MAWL_high_ext_IR",
        "sps_M300C_MAWL_high_IR_tan",
        "sps_M300C_MAWL_high_IR",
        "sps_M300C_RAID_high_ext_IR_tan",
        "sps_M300C_RAID_high_ext_IR",
        "sps_M300C_RAID_high_IR_tan",
        "sps_M300C_RAID_high_IR",
        "sps_M300C_MAWL_high_ext_IR_tan",
        "DBAL_A4_Top_Mid_High_IR_Pointer_Tan",
        "optic_DMS_weathered_F",
        "optic_DMS_weathered_Kir_F",
        "optic_DMS"
    };
    arsenalMagazines[] = {
        "SPS_HKG3PMAG_30Rnd_300BLK_110_T",
        "SPS_HKG3PMAG_30Rnd_300BLK_110_B",
        "SPS_HKG3PMAG_30Rnd_300BLK_110_S"
    };
    arsenalItems[] = {
        "ToolKit",
        "ACE_wirecutter",
        "CUP_H_CVCH_des",
        "CUP_H_CVC",
        "MineDetector"
    };
    arsenalBackpacks[] = {};
};