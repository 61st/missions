#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 * call cScripts_fnc_Doc_Info
 */

    // Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)
    player createDiaryRecord["trainobj",
        ["MOUNT",
            "<img image='z\lxim\addons\media\images\dagger\moutgrg.paa' width='760' />"
        ]
    ];
    
    player createDiaryRecord["trainobj",
        ["Map Overview",
            "<img image='z\lxim\addons\media\images\dagger\drcmap9.paa' width='760' />"
        ]
    ];
    
    player createDiaryRecord["trainobj",
        ["Camp Dagger",
            "<img image='z\lxim\addons\media\images\dagger\daggermap1.paa' width='760' />"
        ]
    ];
    
    player createDiaryRecord["trainobj",
        ["Victory Air Base",
            "<img image='z\lxim\addons\media\images\dagger\airfieldmap.paa' width='760' />"
        ]
    ];
    
    player createDiaryRecord["trainobj",
        ["Range's",
            "<img image='z\lxim\addons\media\images\dagger\rangecomplexmap.paa' width='760' />"
        ]
    ];