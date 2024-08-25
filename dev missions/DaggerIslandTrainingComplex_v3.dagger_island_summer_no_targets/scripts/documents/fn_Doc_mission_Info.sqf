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


if !(player diarySubjectExists "trainobj") then {
    player createDiarySubject ["trainobj","Objectives"];
};
// Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)
player createDiaryRecord["trainobj",
    ["HOTEL",
        "<img image='z\lxim\addons\media\images\dagger\objhotelgrg.paa' width='760' />"
    ]
];

player createDiaryRecord["trainobj",
    ["GOLF",
        "<img image='z\lxim\addons\media\images\dagger\objgolfgrg2.paa' width='760' />"
    ]
];

player createDiaryRecord["trainobj",
    ["FOXTROT",
        "<img image='z\lxim\addons\media\images\dagger\objfoxtrotgrg2.paa' width='760' />"
    ]
];

player createDiaryRecord["trainobj",
    ["ECHO",
        "<img image='z\lxim\addons\media\images\dagger\objechogrg2.paa' width='760' />"
    ]
];

player createDiaryRecord["trainobj",
    ["DELTA",
        "<img image='z\lxim\addons\media\images\dagger\objdeltagrg.paa' width='760' />"
    ]
];

player createDiaryRecord["trainobj",
    ["CHARLIE",
        "<img image='z\lxim\addons\media\images\dagger\objcharliegrg.paa' width='760' />"
    ]
];

player createDiaryRecord["trainobj",
    ["BRAVO",
        "<img image='z\lxim\addons\media\images\dagger\objbravogrg.paa' width='760' />"
    ]
];

player createDiaryRecord["trainobj",
    ["ALPHA",
        "<img image='z\lxim\addons\media\images\dagger\objalphagrg1.paa' width='760' />"
    ]
];
