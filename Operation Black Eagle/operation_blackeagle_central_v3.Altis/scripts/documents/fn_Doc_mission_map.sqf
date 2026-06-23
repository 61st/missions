#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function write a diary record.
 *
 * Arguments:
 * None
 *
 * Example:
 * call ymf_fnc_Doc_Info
 */

if !(player diarySubjectExists "trainmap") then {
    player createDiarySubject ["trainmap","Training Map"];
};
// Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)
player createDiaryRecord["trainmap",
    ["MOUNT",
        "<img image='z\lxim\addons\media\images\dagger\moutgrg.paa' width='760' />"
    ]
];

player createDiaryRecord["trainmap",
    ["Map Overview",
        "<img image='z\lxim\addons\media\images\dagger\drcmap9.paa' width='760' />"
    ]
];

player createDiaryRecord["trainmap",
    ["Camp Dagger",
        "<img image='z\lxim\addons\media\images\dagger\daggermap1.paa' width='760' />"
    ]
];

player createDiaryRecord["trainmap",
    ["Victory Air Base",
        "<img image='z\lxim\addons\media\images\dagger\airfieldmap.paa' width='760' />"
    ]
];

player createDiaryRecord["trainmap",
    ["Range's",
        "<img image='z\lxim\addons\media\images\dagger\rangecomplexmap.paa' width='760' />"
    ]
];
