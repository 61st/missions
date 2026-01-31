class crewchief {
    name = "Crew Chief";
    description = "Weeeeeeeeeeeee";
    traits[] = {
    {"Engineer",true}
    };
    customVariables[] = {
      {"ace_isEngineer",2,true},
      {"ace_medical_medicClass",0,true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconman_ca.paa";

    defaultLoadout[] = {
        {"rhs_weap_aks74u","rhs_acc_dtk","","",{"rhs_30Rnd_545x39_7N10_AK",30},{},""},{},
        {"rhs_weap_pya","","","",{"rhs_mag_9x19_17",17},{},""},
        {"rhs_uniform_df15",{{"lxim_medbags_FirstAid",1},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_CableTie",4},{"ItemcTabHCam",1},{"cigs_lighter",1,100},{"cigs_morley_cigpack",1,20}}},
        {"rhs_lifchik",{{"rhs_30Rnd_545x39_AK_green",10,30},{"rhs_mag_9x19_17",1,17}}},{},
        "rhs_zsh7a_mike_green","",{"rhs_pdu4","","","",{},{},""},
        {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","rhs_1PN138"}
    };
    arsenalitems[] = {
      "FIR_HGU56P_Skull_Death",
      "FIR_HGU56P_Skull",
      "ACE_NVG_Wide_Black",
      "ACE_NVG_Wide_Black_WP",
      "U_B_HeliPilotCoveralls",
      "TFAR_rt1523g_green",
      "TFAR_rt1523g_green",
      "rhs_weap_aks74u",
      "rhs_uniform_df15",
      "rhs_zsh7a_alt",
      "O_Rev_Darter",
      "O_UavTerminal"
    };
};
