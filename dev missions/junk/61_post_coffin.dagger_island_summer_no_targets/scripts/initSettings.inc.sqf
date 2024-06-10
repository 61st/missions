// Make settings name
private _Lxifettings = "Lxif Mission Settings";


 /* Ai setting ------------------------------------------------------------------------------------------------------- */
[ 
    QEGVAR(Settings,setAiSystemDifficulty),
    "LIST",
    ["AI Setting", "This adjustes the ai and make them less godlike and more arcade to play against."],
    [_Lxifettings, "Mission"],
    [[0,1,2], ["Arma Default", "Adjusted", "Faction Based"], 2],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ 
    QEGVAR(Settings,AllowAILoadouts),
    "CHECKBOX",
    ["AI Loadouts (Experimental)", "Allow gear system to apply loadouts to AI units as well as player."],
    [_Lxifettings, "Mission"],
    false,
    true,
    {},
    true
] call CBA_fnc_addSetting;

/* Vehicle ---------------------------------------------------------------------------------------------------------- */
[ // Enable
    QEGVAR(Settings,enableVehicleSystem),
    "CHECKBOX",
    ["Enable", "Enables scripted settings and functions to apply to vehicles."],
    [_Lxifettings, "Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Loadouts
    QEGVAR(Settings,enableVehicleInventory),
    "CHECKBOX",
    ["Inventory", "Enables scripted inventory to be applied to vehicles based on faction"],
    [_Lxifettings, "5; Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
/* Item Replacement system ------------------------------------------------------------------------------------------ */
[ // Enable
    QEGVAR(Settings,allowReplaceItem),
    "CHECKBOX",
    ["Enable","Allow objects to be replaced with streamlined gear for consistency."],
    [_Lxifettings, "Item Replacement"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Medical Items
    QEGVAR(Settings,replaceMedical),
    "LIST",
    ["Medical Items","Allow medical items to be replaced with our custom ones.\nNote: this system will not be disabled if the ace medical convert items is enabled."],
    [_Lxifettings, "Item Replacement"],
    [[0,1], ["Disabled", "Convert medical equipment"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Staging
[ // Enable
    QEGVAR(Settings,enableStagingSystem),
    "CHECKBOX",
    ["Enable","Enables the staging system."],
    [_Lxifettings, "Staging"],
    true,
    true,
    {},
    false
] call CBA_fnc_addSetting;

[ // Factions
    QEGVAR(Settings,vehicleFactions),
    "EDITBOX",
    ["Factions","Array of factions allowing system loadout and pylon changes"],
    [_Lxifettings, "Vehicle"],
    '["BLU_W_F","BLU_T_F","BLU_NATO_lxWS","BLU_F"]',
    true,
    {},
    true
] call CBA_fnc_addSetting;
