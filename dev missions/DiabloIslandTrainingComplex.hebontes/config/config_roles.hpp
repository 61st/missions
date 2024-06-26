class Dynamic_Roles {
    #include "outlaw_hq\config_co.hpp"
    #include "outlaw_hq\config_xo.hpp"
    #include "outlaw_hq\config_medic.hpp"
    #include "outlaw_hq\config_jtac.hpp"
    #include "outlaw_hq\config_engineer.hpp"
    #include "outlaw_hq\config_mark.hpp"

    #include "outlaw_1_1_v\config_cmd.hpp"
    #include "outlaw_1_1_v\config_driver.hpp"
    #include "outlaw_1_1_v\config_gunner.hpp"

    #include "outlaw_1_2_v\config_cmd.hpp"
    #include "outlaw_1_2_v\config_driver.hpp"
    #include "outlaw_1_2_v\config_gunner.hpp"

    #include "outlaw_1_1\config_engineer.hpp"
    #include "outlaw_1_1\config_squadleader.hpp"
    #include "outlaw_1_1\config_teamleader.hpp"
    #include "outlaw_1_1\config_medic.hpp"
    #include "outlaw_1_1\config_jtac.hpp"
    #include "outlaw_1_1\config_dismount.hpp"

    #include "outlaw_1_2\config_engineer.hpp"
    #include "outlaw_1_2\config_squadleader.hpp"
    #include "outlaw_1_2\config_teamleader.hpp"
    #include "outlaw_1_2\config_medic.hpp"
    #include "outlaw_1_2\config_jtac.hpp"
    #include "outlaw_1_2\config_dismount.hpp"

    // #include "rhino\config_squadleader.hpp"
    // #include "rhino\config_engineer.hpp"

    #include "phoenix\config_pilot.hpp"
    #include "phoenix\config_crewchief.hpp"
    #include "phoenix\config_medic.hpp"
    #include "phoenix\config_jtac.hpp"

    #include "training\config_cadre.hpp"
    #include "training\config_dismount.hpp"
    #include "training\config_engineer.hpp"
    #include "training\config_jtac.hpp"
    #include "training\config_medic.hpp"
    #include "training\config_zeus.hpp"

};

class Common_Arsenal {
	weapons[] = {
        "sps_fk_brno_psd_3_b",
        "sps_fk_brno_psd_d_b",
        "sps_hk_vp9_stnd_black",
        "sps_hk_vp9_stnd_black_bb",
        "sps_hk_vp9_stnd_fde_black",
        "sps_hk_vp9_stnd_fde_bb",
        "sps_hk_vp9_stnd_green",
        "sps_hk_vp9_stnd_grey",
        "sps_hk_vp9_stnd_grey_bb",
        "sps_hk_vp9_stnd_ral8000_black",
        "sps_hk_vp9_stnd_ral8000_bb",
        "sps_hk_vp9_tac_black",
        "sps_hk_vp9_tac_black_bb",
        "sps_hk_vp9_tac_fde_black",
        "sps_hk_vp9_tac_fde_bb",
        "sps_hk_vp9_tac_green",
        "sps_hk_vp9_stnd_ral8000",
        "sps_hk_vp9_tac_ral8000",
        "sps_hk_vp9_tac_ral8000_bb",
        "sps_hk_vp9_tac_ral8000_black",
        "sps_hk_vp9_tac_grey_bb",
        "sps_hk_vp9_tac_grey",
        "SPS_Trijicon_RMR_FDE",
        "optic_MRD_black",
        "SPS_Trijicon_RMR_Grey",
        "optic_MRD",
        "SPS_Trijicon_RMR_ODG",
        "SPS_Trijicon_RMR_Black",
        "acc_flashlight_pistol",
        "muzzle_snds_L",
        "ACE_muzzle_mzls_smg_02"
	};
	magazines[] = {
        "16Rnd_9x21_red_Mag",
        "sps_16Rnd_75x27_FK_95gr_jhp",
        "16Rnd_9x21_Mag"
    };
	items[] = {
        "ACE_Altimeter",
        "ACE_CableTie",
        "ACE_Chemlight_HiBlue",
        "ACE_Chemlight_HiGreen",
        "ACE_Chemlight_HiRed",
        "ACE_Chemlight_HiWhite",
        "ACE_Chemlight_HiYellow",
        "ACE_Chemlight_IR",
        "ACE_Chemlight_Orange",
        "ACE_Chemlight_UltraHiOrange",
        "ACE_Chemlight_White",
        "ACE_EntrenchingTool",
        "ACE_fieldDressing",
        "ACE_Flashlight_KSF1",
        "ACE_Flashlight_MX991",
        "ACE_Flashlight_XL50",
        "ACE_Fortify",
        "ACE_HandFlare_Green",
        "ACE_HandFlare_Red",
        "ACE_HandFlare_White",
        "ACE_HandFlare_Yellow",
        "ACE_HuntIR_monitor",
        "ACE_IR_Strobe_Item",
        "ACE_Kestrel4500",
        "ACE_M84",
        "ACE_MapTools",
        "ace_marker_flags_black",
        "ace_marker_flags_blue",
        "ace_marker_flags_green",
        "ace_marker_flags_orange",
        "ace_marker_flags_purple",
        "ace_marker_flags_red",
        "ace_marker_flags_white",
        "ace_marker_flags_yellow",
        "ACE_SpraypaintBlack",
        "ACE_SpraypaintBlue",
        "ACE_SpraypaintGreen",
        "ACE_SpraypaintRed",
        "ACE_SpraypaintWhite",
        "ACE_SpraypaintYellow",
        "ACE_tourniquet",
        "ACE_wirecutter",
        "acex_intelitems_notepad",
        "ACE_packingBandage",
        "ACE_elasticBandage",
        "kat_chestSeal",
        "B_IR_Grenade",
        "Binocular",
        "ACE_Splint",
        "ChemicalDetector_01_watch_F",
        "Chemlight_blue",
        "Chemlight_green",
        "Chemlight_red",
        "Chemlight_yellow",
        "G_B_Diving",
        "G_comba_1_cut",
        "G_comba_1",
        "G_comba_2_cut",
        "G_comba_2",
        "G_Lady_Blue",
        "G_LEN_BCG",
        "G_LEN_Ess_V12",
        "G_LEN_TG1_blauw",
        "G_LEN_TG1_oranje",
        "G_LEN_TG1_weiss",
        "G_LEN_TG1",
        "G_Nomex_1_cut",
        "G_Nomex_1_fold_cut",
        "G_Nomex_1_fold",
        "G_Nomex_1_lang_cut",
        "G_Nomex_1_lang",
        "G_Nomex_1",
        "G_Nomex_2_cut",
        "G_Nomex_2_fold_cut",
        "G_Nomex_2_fold",
        "G_Nomex_2_lang_cut",
        "G_Nomex_2_lang",
        "G_Nomex_2",
        "G_Nomex_desu_2_cut",
        "G_Nomex_desu_2_fold_cut",
        "G_Nomex_desu_2_fold",
        "G_Nomex_desu_2_lang_cut",
        "G_Nomex_desu_2_lang",
        "G_Nomex_desu_2",
        "G_Nomex_desu_cut",
        "G_Nomex_desu_fold_cut",
        "G_Nomex_desu_fold",
        "G_Nomex_desu_lang_cut",
        "G_Nomex_desu_lang",
        "G_Nomex_desu",
        "G_oak_1_cut",
        "G_oak_1",
        "G_oak_2_cut",
        "G_oak_2",
        "G_tweed_ESS_Green",
        "G_tweed_ESS_tan",
        "G_tweed_peltor",
        "G_tweed_tacticool_blauw_comba",
        "G_tweed_tacticool_blauw_nomex",
        "G_tweed_tacticool_blauw_oak",
        "G_tweed_tacticool_blauw_peltor_comba",
        "G_tweed_tacticool_blauw_peltor_nomex",
        "G_tweed_tacticool_blauw_peltor_oak",
        "G_tweed_tacticool_blauw_peltor",
        "G_tweed_tacticool_blauw",
        "G_tweed_tacticool_comba",
        "G_tweed_tacticool_nomex",
        "G_tweed_tacticool_oak",
        "G_tweed_tacticool_oranje_comba",
        "G_tweed_tacticool_oranje_nomex",
        "G_tweed_tacticool_oranje_oak",
        "G_tweed_tacticool_oranje_peltor_comba",
        "G_tweed_tacticool_oranje_peltor_nomex",
        "G_tweed_tacticool_oranje_peltor_oak",
        "G_tweed_tacticool_oranje_peltor",
        "G_tweed_tacticool_oranje",
        "G_tweed_tacticool_peltor_comba",
        "G_tweed_tacticool_peltor_nomex",
        "G_tweed_tacticool_peltor_oak",
        "G_tweed_tacticool_peltor",
        "G_tweed_tacticool_weiss_comba",
        "G_tweed_tacticool_weiss_nomex",
        "G_tweed_tacticool_weiss_oak",
        "G_tweed_tacticool_weiss_peltor_comba",
        "G_tweed_tacticool_weiss_peltor_nomex",
        "G_tweed_tacticool_weiss_peltor_oak",
        "G_tweed_tacticool_weiss_peltor",
        "G_tweed_tacticool_weiss",
        "G_tweed_tacticool",
        "H_tweed_ech_nor_OCP_alt",
        "H_tweed_ech_nor_OCP_b_alt",
        "H_tweed_ech_nor_OCP_b_ESS_2",
        "H_tweed_ech_nor_OCP_b_ESS",
        "H_tweed_ech_nor_OCP_b_licht",
        "H_tweed_ech_nor_OCP_b",
        "H_tweed_ech_nor_OCP_ESS_2",
        "H_tweed_ech_nor_OCP_ESS_low_b",
        "H_tweed_ech_nor_OCP_ESS_low",
        "H_tweed_ech_nor_OCP_ESS",
        "H_tweed_ech_nor_OCP_licht",
        "H_tweed_ech_nor_OCP_scrim_ess",
        "H_tweed_ech_nor_OCP_scrim_TASC_ESS",
        "H_tweed_ech_nor_OCP_scrim_TASC",
        "H_tweed_ech_nor_OCP_scrim",
        "H_tweed_ech_nor_OCP_TASC_b_ESS_2",
        "H_tweed_ech_nor_OCP_TASC_b_ESS_3",
        "H_tweed_ech_nor_OCP_TASC_b_ESS",
        "H_tweed_ech_nor_OCP_TASC_b",
        "H_tweed_ech_nor_OCP_TASC_ESS_2",
        "H_tweed_ech_nor_OCP_TASC_ESS",
        "H_tweed_ech_nor_OCP_TASC",
        "H_tweed_ech_nor_OCP",
        "H_tweed_ech_OCP_alt",
        "H_tweed_ech_OCP_b_alt",
        "H_tweed_ech_OCP_b_ESS_2",
        "H_tweed_ech_OCP_b_ESS",
        "H_tweed_ech_OCP_b_licht",
        "H_tweed_ech_OCP_b",
        "H_tweed_ech_OCP_ESS_2",
        "H_tweed_ech_OCP_ESS_low_b",
        "H_tweed_ech_OCP_ESS_low",
        "H_tweed_ech_OCP_ESS",
        "H_tweed_ech_OCP_licht",
        "H_tweed_ech_OCP_scrim_ess",
        "H_tweed_ech_OCP_scrim_TASC_ESS",
        "H_tweed_ech_OCP_scrim_TASC",
        "H_tweed_ech_OCP_scrim",
        "H_tweed_ech_OCP_TASC_b_ESS_2",
        "H_tweed_ech_OCP_TASC_b_ESS_3",
        "H_tweed_ech_OCP_TASC_b_ESS",
        "H_tweed_ech_OCP_TASC_b",
        "H_tweed_ech_OCP_TASC_ESS_2",
        "H_tweed_ech_OCP_TASC_ESS",
        "H_tweed_ech_OCP_TASC",
        "H_tweed_ech_OCP",
        "H_tweed_ech_psq_OCP_alt",
        "H_tweed_ech_psq_OCP_b_alt",
        "H_tweed_ech_psq_OCP_b_ESS_2",
        "H_tweed_ech_psq_OCP_b_ESS",
        "H_tweed_ech_psq_OCP_b_licht",
        "H_tweed_ech_psq_OCP_b",
        "H_tweed_ech_psq_OCP_ESS_2",
        "H_tweed_ech_psq_OCP_ESS_low_b",
        "H_tweed_ech_psq_OCP_ESS_low",
        "H_tweed_ech_psq_OCP_ESS",
        "H_tweed_ech_psq_OCP_licht",
        "H_tweed_ech_psq_OCP_scrim_ess",
        "H_tweed_ech_psq_OCP_scrim_TASC_ESS",
        "H_tweed_ech_psq_OCP_scrim_TASC",
        "H_tweed_ech_psq_OCP_scrim",
        "H_tweed_ech_psq_OCP_TASC_b_ESS_2",
        "H_tweed_ech_psq_OCP_TASC_b_ESS_3",
        "H_tweed_ech_psq_OCP_TASC_b_ESS",
        "H_tweed_ech_psq_OCP_TASC_b",
        "H_tweed_ech_psq_OCP_TASC_ESS_2",
        "H_tweed_ech_psq_OCP_TASC_ESS",
        "H_tweed_ech_psq_OCP_TASC",
        "H_tweed_ech_psq_OCP",
        "H_tweed_Hat_fleece_od3",
        "H_tweed_Hat_fleece",
        "H_tweed_Hat_Patrol_ocp",
        "H_tweed_ihps_1",
        "H_tweed_ihps_bare_rail",
        "H_tweed_ihps_bare_tasc_rail",
        "H_tweed_ihps_bare",
        "H_tweed_ihps_g_bare_rail",
        "H_tweed_ihps_g_bare_tasc_rail",
        "H_tweed_ihps_g_bare",
        "H_tweed_ihps_g_rail",
        "H_tweed_ihps_g_tasc_bare",
        "H_tweed_ihps_g_tasc_rail",
        "H_tweed_ihps_g_tasc",
        "H_tweed_ihps_g",
        "H_tweed_ihps_rail",
        "H_tweed_ihps_scrim_g_rail",
        "H_tweed_ihps_scrim_g_tasc",
        "H_tweed_ihps_scrim_g",
        "H_tweed_ihps_scrim_rail",
        "H_tweed_ihps_scrim_tasc",
        "H_tweed_ihps_scrim",
        "H_tweed_ihps_tasc_bare",
        "H_tweed_ihps_tasc_rail",
        "H_tweed_ihps_tasc_scrim_g_rail",
        "H_tweed_ihps_tasc_scrim_rail",
        "H_tweed_ihps_tasc",
        "ItemAndroid",
        "ItemAndroidMisc",
        "ItemCompass",
        "ItemcTabHCam",
        "ItemcTabHCam",
        "ItemcTabMisc",
        "ItemMap",
        "ItemMicroDAGRMisc",
        "ItemWatch",
        "lxim_equipment_rebreather",
        "lxim_equipment_Wetsuit",
        "MS_Strobe_Mag_1",
        "MS_Strobe_Mag_2",
        "psq42_blk_icup",
        "psq42_blk_lenscap",
        "psq42_blk_mount",
        "psq42_blk",
        "psq42_od3_icup",
        "psq42_od3_lenscap",
        "psq42_od3_mount",
        "psq42_od3",
        "Rangefinder",
        "SmokeShell",
        "TFAR_anprc152",
        "U_tweed_acu_summer_ocp_crye_jedi",
        "U_tweed_acu_summer_ocp_crye_knee_jedi",
        "U_tweed_acu_summer_ocp_crye_knee_trop",
        "U_tweed_acu_summer_ocp_crye_knee",
        "U_tweed_acu_summer_ocp_crye_trop",
        "U_tweed_acu_summer_ocp_crye",
        "U_tweed_acu_summer_ocp_jedi",
        "U_tweed_acu_summer_ocp_trop",
        "U_tweed_acu_summer_ocp_tuck_jedi",
        "U_tweed_acu_summer_ocp_tuck_trop",
        "U_tweed_acu_summer_ocp_tuck_unbl_jedi",
        "U_tweed_acu_summer_ocp_tuck_unbl_trop",
        "U_tweed_acu_summer_ocp_tuck_unbl",
        "U_tweed_acu_summer_ocp_tuck",
        "U_tweed_acu_summer_ocp_unbl_jedi",
        "U_tweed_acu_summer_ocp_unbl_trop",
        "U_tweed_acu_summer_ocp_unbl",
        "U_tweed_acu_summer_ocp",
        "V_tweed_iotv_mk4_1",
        "V_tweed_iotv_mk4_2",
        "V_tweed_iotv_mk4_240",
        "V_tweed_iotv_mk4_249",
        "V_tweed_iotv_mk4_3",
        "V_tweed_iotv_mk4_45_1",
        "V_tweed_iotv_mk4_45_2",
        "V_tweed_iotv_mk4_4cm_1",
        "V_tweed_iotv_mk4_4cm_2",
        "V_tweed_iotv_mk4_cell_1",
        "V_tweed_iotv_mk4_cell_2",
        "V_tweed_iotv_mk4_cell_45_1",
        "V_tweed_iotv_mk4_cell_45_2",
        "V_tweed_iotv_mk4_cell_4cm_1",
        "V_tweed_iotv_mk4_e_1",
        "V_tweed_iotv_mk4_e_2",
        "V_tweed_msv_mk2_1",
        "V_tweed_msv_mk2_2",
        "V_tweed_msv_mk2_240",
        "V_tweed_msv_mk2_249",
        "V_tweed_msv_mk2_3",
        "V_tweed_msv_mk2_45_1",
        "V_tweed_msv_mk2_45_2",
        "V_tweed_msv_mk2_4cm_1",
        "V_tweed_msv_mk2_4cm_2",
        "V_tweed_msv_mk2_cell_1",
        "V_tweed_msv_mk2_cell_2",
        "V_tweed_msv_mk2_cell_45_1",
        "V_tweed_msv_mk2_cell_45_2",
        "V_tweed_msv_mk2_cell_4cm_1",
        "V_tweed_msv_mk2_e_1",
        "kat_IFAK",
        "kat_PainkillerItem",
        "kat_gasmaskFilter",
        "ACE_EarPlugs",
        "ACE_Chemlight_Shield",
        "ACE_M14",
        "SmokeShellBlue",
        "SmokeShellGreen",
        "SmokeShellOrange",
        "SmokeShellPurple",
        "SmokeShellRed",
        "SmokeShellYellow",
        "HandGrenade",
        "KAT_M7A3",
        "ACE_CTS9",
        "kat_mask_M04"
    };
	backpacks[] = {
        "B_simc_US_Molle_sturm_OCP_thermos_OCP",
        "B_simc_US_Molle_sturm_OCP_thermos_od3",
        "B_simc_US_Molle_sturm_OCP_thermos_od7",
        "B_simc_US_Molle_sturm_OCP",
        "B_simc_US_Molle_sturm_OCP_etool",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "B_simc_US_Molle_asspack_OCP_low",
        "B_simc_US_Molle_asspack_OCP_thermos_OCP",
        "B_simc_US_Molle_asspack_OCP_wasser",
        "B_simc_US_Molle_asspack_OCP_thermos_od7",
        "B_simc_US_Molle_asspack_OCP",
        "B_simc_US_Molle_asspack_OCP_thermos_od3",
        "B_tweed_pack_wasser_molle_od7_alt",
        "B_tweed_pack_wasser_molle_ocp_alt",
        "B_tweed_pack_wasser_molle_od7",
        "B_tweed_pack_wasser_molle_od3_alt",
        "B_tweed_pack_wasser_molle_ocp",
        "B_tweed_pack_wasser_molle_od3",
        "B_tweed_pack_camel_thermos_od7",
        "B_tweed_pack_camel_thermos_ocp",
        "B_tweed_pack_camel_thermos_od3"
    };
};