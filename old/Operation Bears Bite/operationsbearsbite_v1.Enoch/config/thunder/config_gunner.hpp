class gunner {
    name = "Crew Gunner";
    description = "Send HE down range to cuddle the enemy";
    traits[] = {
        {"Engineer",true}
    };
    customVariables[] = {
        {"ace_isEngineer",1,true},
        {"ace_medical_medicClass",0,true}
    };
    icon = "z\LXIM\addons\media\images\Icons\gunner.paa";

    defaultLoadout[] = {
            {"rhs_weap_aks74u","rhs_acc_dtk","","",{"rhs_30Rnd_545x39_7N10_AK",30},{},""},{},
            {"rhs_weap_pya","","","",{"rhs_mag_9x19_17",17},{},""},
            {"FIR_USMC_Mechanic_Coverall",{{"lxim_medbags_FirstAid",1},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_CableTie",4},{"ItemcTabHCam",1}}},
            {"PRACS_SLA_6sh92",{{"rhs_30Rnd_545x39_7N10_plum_AK",11,30}}},
            {"lxim_backpack_Kitbag_Solid_Ranger_Green",{{"ToolKit",1},{"rhs_mag_rgd5",2,1},{"SmokeShell",2,1}}},
            "H_Tank_eaf_F","",{"rhs_pdu4","","","",{},{},""},{"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","rhs_1PN138"}
    };
    arsenalitems[] = {
        "lxim_headgear_H_HelmetCrew_green",
        "lxim_headgear_H_HelmetCrew_sand",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "ToolKit",
        "SatchelCharge_Remote_Mag",
        "rhs_weap_m4"
    };
};