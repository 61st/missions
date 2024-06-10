class engineers {
	name = "Combat Engineer";
	description = "makes things go boom or not to go boom";
	traits[] = {
		{"Engineer",true}
	};
	customVariables[] = {
		{"ace_isEngineer",2,true},
		{"TFAR_freq_sr",{"500","71","72","73","74","75","76","70"},true},
		// {"diwako_dui_indicators_customIcon", "a3\ui_f\data\map\vehicleicons\iconmanengineer_ca.paa", true},
        {"lxif_teamcolor", "MAIN", true}
	};
	icon = "a3\ui_f\data\map\vehicleicons\iconmanengineer_ca.paa";

	defaultLoadout[] = {
            {"SPS_hk417_13_vfg_fde_f","","","sps_vortex_spitfire_gen2_x5_RMR_tan",{"20Rnd_762x51_Mag",20},{},""}, 
			{}, 
			{"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""}, 
			{"U_tweed_acu_summer_ocp_blench",{{"LXIM_medbags_FirstAid",1},{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"16Rnd_9x21_Mag",2,17}}},
			{"V_tweed_msv_mk2_cell_45_1",{{"LXIM_medbags_FirstAid",1}, {"SPS_20Rnd_762x51mm_M80A1_EPR",9,20},{"HandGrenade",2,1}}}, 
			{"B_simc_US_Molle_sturm_OCP_etool",{{"ACE_DefusalKit",1}, {"ACE_EntrenchingTool",1}, {"ACE_Flashlight_MX991",1}, {"ACE_Clacker",1}, {"ACE_wirecutter",1}, {"B_IR_Grenade",1,1}, {"ACE_M14",1,1}, {"SmokeShellBlue",1,1}, {"SmokeShellPurple",1,1}, {"SmokeShellRed",1,1}, {"SmokeShell",2,1}, {"ClaymoreDirectionalMine_Remote_Mag",1,1}, {"DemoCharge_Remote_Mag",2,1}, {"tsp_popperCharge_mag",3,1}, {"tsp_stickCharge_mag",1,1}}},
			"H_tweed_ihps_tasc_rail","",
			{"Binocular","","","",{},{},""}, 
			{"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","psq42_blk_icup"}
    };
	
	arsenalWeapons[] = {
		"tsp_frameCharge_mag",
		"tsp_popperCharge_mag",
		"tsp_popperCharge_auto_mag",
		"DemoCharge_Remote_Mag",
		"ATMine_Range_Mag",
		"SatchelCharge_Remote_Mag",
		"ClaymoreDirectionalMine_Remote_Mag",
		"SLAMDirectionalMine_Wire_Mag",
		"tsp_stickCharge_mag",
		"tsp_stickCharge_auto_mag",
		"ACE_FlareTripMine_Mag",
		"ACE_VMH3",
		"ACE_VMM3"
	};
	arsenalMagazines[] = {
		"tsp_frameCharge_mag",
		"tsp_popperCharge_auto_mag",
		"tsp_popperCharge_mag",
		"tsp_stickCharge_auto_mag",
		"tsp_stickCharge_mag",
		"SatchelCharge_Remote_Mag",
		"SLAMDirectionalMine_Wire_Mag",
		"ATMine_Range_Mag",
		"ClaymoreDirectionalMine_Remote_Mag",
		"DemoCharge_Remote_Mag"

	};
	arsenalItems[] = {
		"ACE_wirecutter",
        "tsp_paperclip",
        "MineDetector",
        "tsp_lockpick",
        "ACE_M26_Clacker",
		"ACE_Clacker",
		"ToolKit",
		"ACE_DefusalKit"
	};
	arsenalBackpacks[] = {};
};