/*
	Faction: Crewman
	Author: Dom
*/
class crewman {
	name = $STR_B_CREW_F0;
	rank = "Private";
	description = $STR_DT_Crewman_Description;
	traits[] = {
		{"Engineer",true}
	};
	customVariables[] = {
		{"ace_isEngineer",1,true}
	};
	icon = "a3\ui_f\data\map\vehicleicons\iconMan_ca.paa";

	defaultLoadout[] = {
		{"arifle_Katiba_F","","acc_pointer_IR","optic_MRCO",{"30Rnd_65x39_caseless_green",30},{},""},
		{},
		{"hgun_Rook40_F","","","",{"16Rnd_9x21_Mag",17},{},""},
		{"U_O_CombatUniform_ocamo",{{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_packingBandage",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_EarPlugs",1},{"ACE_epinephrine",2},{"ACE_IR_Strobe_Item",2},{"ACE_Flashlight_XL50",1},{"ACE_morphine",2},{"ACE_splint",2}}},
		{"V_HarnessO_brn",{{"30Rnd_65x39_caseless_green",8,30},{"16Rnd_9x21_Mag",2,17},{"SmokeShell",2,1},{"HandGrenade",2,1}}},
		{},
		"H_HelmetCrew_O","",{},
		{"ItemMap","ItemGPS","TFAR_fadak","ItemCompass","ItemWatch","O_NVGoggles_hex_F"}
	};

	arsenalItems[] = {

	};
};