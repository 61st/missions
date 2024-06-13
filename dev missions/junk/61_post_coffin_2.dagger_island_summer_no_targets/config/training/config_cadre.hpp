class Cadre {
    name = "Cadre";
    description = "Black Hat";
    traits[] = {
		{"Engineer",true},
        {"Medic",true}
	};
	customVariables[] = {
        {"lxif_iscom", true, true},
		{"draWhitelisted",TRUE,TRUE},
        {"ace_medical_medicClass",2,true},
        {"ace_isEngineer",2,true},
        {"TFAR_freq_sr",{"500","71","72","73","74","75","76","70"},true},
		// {"diwako_dui_indicators_customIcon", "a3\ui_f\data\map\vehicleicons\iconmanvirtual_ca.paa", true},
        {"lxif_teamcolor", "YELLOW", true},
        {"cav_ranges_instructor", true, true}
	};
    icon = "a3\ui_f\data\map\vehicleicons\iconmanvirtual_ca.paa";

    defaultLoadout[] = {
            {}, 
            {}, 
            {"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""}, 
            {"U_tweed_acu_summer_ocp_tuck_trop",{{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"16Rnd_9x21_Mag",2,17}}},
            {"V_Rangemaster_belt",{{"SPS_HKG3PMAG_30Rnd_300BLK_110_B",2,30}}}, 
            {},"H_Cap_headphones","G_comba_1",
            {"ACE_Vector","","","",{},{},""}, 
            {"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_HMNVS_Hide"}
    };
    arsenalWeapons[] = {};
    arsenalMagazines[] = {};
    arsenalItems[] = {
        "ToolKit",
        "ACE_wirecutter",
        "CUP_NVG_HMNVS_Hide",
        "H_Cap_headphones",
        "V_Rangemaster_belt",
    };
    arsenalBackpacks[] = {
		"B_simc_US_Molle_sturm_OCP_RTO",
		"B_simc_US_Molle_sturm_OCP_RTO_wasser"
	};
};



