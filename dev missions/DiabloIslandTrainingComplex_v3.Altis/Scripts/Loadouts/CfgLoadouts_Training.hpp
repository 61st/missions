class Mech_B_Training_base_F: Mech_B_Seventh_Cavalry_Base_F {
    category[] = {"Scripts_Loadout_Cat_Training"};
    scope = 0;

    role = "training";
};

class Mech_B_Training_Cadre_F: Mech_B_Training_base_F {
    displayName = "Instructor";
    scope = 2;

    icon = "iconManOfficer";

    loadout = [["rhs_weap_m16a4_carryhandle","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],[],["rhs_uniform_cu_ocp_1stcav",[["ACE_MapTools",1],["ACE_fieldDressing",1],["ACE_quikclot",4],["ACE_splint",1],["ACE_tourniquet",1]]],["rhsusf_iotv_ocp",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],[],"rhsusf_patrolcap_ocp","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
};
class Mech_B_Training_Cadet_F: Mech_B_Training_base_F {
    displayName = "Student";
    scope = 2;

    icon = "iconMan";

    loadout = [["rhs_weap_m16a4_carryhandle","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],[],["rhs_uniform_cu_ocp_1stcav",[["ACE_MapTools",1],["ACE_fieldDressing",1],["ACE_quikclot",4],["ACE_splint",1],["ACE_tourniquet",1]]],["rhsusf_iotv_ocp",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],[],"rhsusf_patrolcap_ocp","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
};

// Not used
class Mech_B_Training_Drill_Instructor_F: Mech_B_Training_base_F {
    displayName = "$STR_Mech_Troops_Training_Drill_Instructor";
    scope = 1;

    loadout = [["rhs_weap_m16a4_carryhandle","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],[],["rhs_uniform_cu_ocp_1stcav",[["ACE_MapTools",1],["ACE_fieldDressing",1],["ACE_quikclot",4],["ACE_splint",1],["ACE_tourniquet",1]]],["rhsusf_iotv_ocp",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],[],"rhsusf_patrolcap_ocp","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
};
// Depricated (For backwards compatibility)
class Mech_B_Training_DrillInstructor_F: Mech_B_Training_Drill_Instructor_F { scope = 1; };