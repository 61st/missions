class driver11 {
	name = "Crew Driver";
    description = "vroom vroom";
    traits[] = {
		{"Engineer",true}
	};
	customVariables[] = {
		{"ace_isEngineer",1,true},
        {"TFAR_freq_sr",{"500","101","102","103","104","105","69","70"},true},
		// {"diwako_dui_indicators_customIcon", "z\LXIM\addons\media\images\Icons\driver.paa", true},
        {"lxif_teamcolor", "MAIN", true}
	};
    icon = "z\LXIM\addons\media\images\Icons\driver.paa";

    defaultLoadout[] = {
            {"SPS_hk337_t_fde_f","","","NGA_XM157",{"SPS_HKG3PMAG_30Rnd_300BLK_147_B",30},{},""}, 
            {}, 
            {"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""}, 
            {"U_tweed_acu_summer_ocp_blench",{{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"16Rnd_9x21_Mag",2,17}}},
            {"V_tweed_msv_mk2_e_1",{{"SPS_HKG3PMAG_30Rnd_300BLK_110_B",2,30}}}, 
            {},"H_HelmetCrew_B","G_tweed_ESS_Green",
            {"Binocular","","","",{},{},""}, 
            {"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","psq42_blk_icup"}
    };
    arsenalWeapons[] = {};
    arsenalMagazines[] = {};
    arsenalItems[] = {
        "ToolKit",
        "ACE_wirecutter",
        "H_HelmetCrew_B"
    };
    arsenalBackpacks[] = {};
};