class jtac2 {
	name = "JTAC";
	description = "Big bada boom";
	traits[] = {
		{"UAVHacker",true}
	};
	customVariables[] = {
		{"YMF_iscom", true, true},
		{"draWhitelisted",TRUE,TRUE},
		{"TFAR_freq_sr",{"100.1","120","120.1","33","100","75","60","35"},true},
        {"YMF_teamcolor", "YELLOW", true}
	};
    
	icon = "a3\ui_f\data\map\vehicleicons\iconmanexplosive_ca.paa";

	defaultLoadout[] = {
            {"SPS_hk417_13_afg_ral8000_f","","CUP_acc_ANPEQ_15","sps_vortex_spitfire_gen2_x5_RMR_tan",{"SPS_20Rnd_762x51mm_M80A1_EPR",20},{},""},{},
			{"CUP_hgun_M17_Black","","","",{"CUP_17Rnd_9x19_M17_Black",17},{},""},
			{"U_tweed_acu_summer_ocp_tuck_jedi",{{"HandGrenade",2,1}}},{"V_tweed_iotv_mk4_cell_45_1",{{"ItemcTabHCam",1},{"CUP_17Rnd_9x19_M17_Black",3,17},{"SPS_20Rnd_762x51mm_M80A1_EPR",12,20}}},
			{"B_simc_US_Molle_sturm_OCP_RTO_wasser",{{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ItemcTabMisc",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"kat_IFAK",1},{"ACE_EarPlugs",2},{"ACE_CableTie",5},{"kat_gasmaskFilter",2},{"kat_mask_M50",1},{"ACE_MapTools",1},{"ACE_PlottingBoard",1},{"ACE_RangeCard",1},{"ACE_artilleryTable",1},{"CUP_NVG_PVS15_black",1},{"acex_intelitems_notepad",1,1},{"Chemlight_blue",2,1},{"Chemlight_green",2,1},{"SmokeShellRed",3,1},{"SmokeShellGreen",3,1},{"SmokeShell",2,1},{"SmokeShellBlue",2,1}}},"H_tweed_ihps_g_tasc_rail","G_oak_1_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
			{"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch",""}
    };
	arsenalitems[] = {
		"B_simc_US_Molle_sturm_OCP_RTO_wasser",
		"B_simc_US_Molle_sturm_OCP_RTO",
		"ACE_artilleryTable",
		"ACE_PlottingBoard",
		"acex_intelitems_notepad",
		"B_UavTerminal",
		"ItemcTabMisc",
		"ACE_RangeCard",
		"lxim_vs17_vs17"
	};
};