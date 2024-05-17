
/*
 * Custom mappings for unit mods
 * Use these mappings to override difficult unit mod CfgGroup configs
 */


/*
 CUSTOM FACTION GROUP MAPPINGS
*/

ALIVE_factionCustomMappings = [] call ALIVE_fnc_hashCreate;

// EXAMPLE BLU_F_G CUSTOM CONFIG MAPPING
// ---------------------------------------------------------------------------------------------------------------------
BLU_G_F_mappings = [] call ALIVE_fnc_hashCreate;
[BLU_G_F_mappings, "Side", "WEST"] call ALIVE_fnc_hashSet;
[BLU_G_F_mappings, "GroupSideName", "WEST"] call ALIVE_fnc_hashSet;
[BLU_G_F_mappings, "FactionName", "BLU_G_F"] call ALIVE_fnc_hashSet;
[BLU_G_F_mappings, "GroupFactionName", "Guerilla"] call ALIVE_fnc_hashSet;

BLU_G_F_typeMappings = [] call ALIVE_fnc_hashCreate;
[BLU_G_F_typeMappings, "Air", "Air"] call ALIVE_fnc_hashSet;
[BLU_G_F_typeMappings, "Armored", "Armored"] call ALIVE_fnc_hashSet;
[BLU_G_F_typeMappings, "Infantry", "Infantry"] call ALIVE_fnc_hashSet;
[BLU_G_F_typeMappings, "Mechanized", "Mechanized"] call ALIVE_fnc_hashSet;
[BLU_G_F_typeMappings, "Motorized", "Motorized"] call ALIVE_fnc_hashSet;
[BLU_G_F_typeMappings, "Motorized_MTP", "Motorized_MTP"] call ALIVE_fnc_hashSet;
[BLU_G_F_typeMappings, "SpecOps", "SpecOps"] call ALIVE_fnc_hashSet;
[BLU_G_F_typeMappings, "Support", "Support"] call ALIVE_fnc_hashSet;

[BLU_G_F_mappings, "GroupFactionTypes", BLU_G_F_typeMappings] call ALIVE_fnc_hashSet;
[ALIVE_factionCustomMappings, "BLU_G_F", BLU_G_F_mappings] call ALIVE_fnc_hashSet;
// ---------------------------------------------------------------------------------------------------------------------

// ---------------------------------------------------------------------------------------------------------------------
BLU_GEN_F_mappings = [] call ALIVE_fnc_hashCreate;
[BLU_GEN_F_mappings, "Side", "WEST"] call ALIVE_fnc_hashSet;
[BLU_GEN_F_mappings, "GroupSideName", "WEST"] call ALIVE_fnc_hashSet;
[BLU_GEN_F_mappings, "FactionName", "BLU_GEN_F"] call ALIVE_fnc_hashSet;
[BLU_GEN_F_mappings, "GroupFactionName", "Gendarmerie"] call ALIVE_fnc_hashSet;

BLU_GEN_F_typeMappings = [] call ALIVE_fnc_hashCreate;
[BLU_GEN_F_typeMappings, "Air", "Air"] call ALIVE_fnc_hashSet;
[BLU_GEN_F_typeMappings, "Armored", "Armored"] call ALIVE_fnc_hashSet;
[BLU_GEN_F_typeMappings, "Infantry", "Infantry"] call ALIVE_fnc_hashSet;
[BLU_GEN_F_typeMappings, "Mechanized", "Mechanized"] call ALIVE_fnc_hashSet;
[BLU_GEN_F_typeMappings, "Motorized", "Motorized"] call ALIVE_fnc_hashSet;
[BLU_GEN_F_typeMappings, "Motorized_MTP", "Motorized_MTP"] call ALIVE_fnc_hashSet;
[BLU_GEN_F_typeMappings, "SpecOps", "SpecOps"] call ALIVE_fnc_hashSet;
[BLU_GEN_F_typeMappings, "Support", "Support"] call ALIVE_fnc_hashSet;

[BLU_GEN_F_mappings, "GroupFactionTypes", BLU_GEN_F_typeMappings] call ALIVE_fnc_hashSet;
[ALIVE_factionCustomMappings, "BLU_GEN_F", BLU_GEN_F_mappings] call ALIVE_fnc_hashSet;
// ---------------------------------------------------------------------------------------------------------------------
