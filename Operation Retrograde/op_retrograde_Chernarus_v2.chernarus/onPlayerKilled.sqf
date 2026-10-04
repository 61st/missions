if (!hasInterface) exitWith {};

// Stop previous text and fade scripts.
{
    private _handle = missionNamespace getVariable [
        _x,
        scriptNull
    ];

    if (!isNull _handle) then {
        terminate _handle;
    };
} forEach [
    "Cury_deathMessageHandle",
    "Cury_deathFadeHandle"
];

// Stop any previous death sound.
private _oldSound = missionNamespace getVariable [
    "Cury_deathSoundID",
    -1
];

if (_oldSound >= 0) then {
    stopSound _oldSound;
};

// Clear old text and make the background black.
789 cutText ["", "PLAIN", 0];
788 cutText ["", "BLACK FADED", 0];

// Play the sound only for this player.
private _soundID = playSoundUI [
    getMissionPath "sounds\cod4death.ogg",
    1,
    1
];

missionNamespace setVariable [
    "Cury_deathSoundID",
    _soundID
];

// Pick a random quote.
private _quotes = [
    ["YOU DIED", "Dumbass, LOL"],
    [
        "War does not determine who is right. Only who is left.",
        "Unknown"
    ],
    [
        "Only the dead have seen the end of war.",
        "George Santayana"
    ],
    [
        "In war, there are no unwounded soldiers.",
        "Unknown"
    ],
    [
        "The cost of war is never fully paid.",
        "Unknown"
    ],
    [
        "In war, truth is the first casualty.",
        "Aeschylus"
    ]

];

private _selected = selectRandom _quotes;
_selected params ["_quote", "_author"];

// Display white text in the same position as before.
private _textHandle = [
    format [
        "<t align='center' font='PuristaBold' size='2.5' color='#FFFFFF'>%1</t><br/><br/><t align='center' font='PuristaMedium' size='1.2' color='#FFFFFF'>- %2</t>",
        _quote,
        _author
    ],
    -1,
    0.25,
    999,
    0.5,
    0,
    789
] spawn BIS_fnc_dynamicText;

missionNamespace setVariable [
    "Cury_deathMessageHandle",
    _textHandle
];

// Fade the text and background away together.
private _fadeHandle = [_textHandle, _soundID] spawn {
    params ["_textHandle", "_soundID"];

    // Allow the text script to start.
    uiSleep 0.1;

    // Half-second fade-in plus four seconds to read.
    uiSleep 4.5;

    terminate _textHandle;

    789 cutFadeOut 1;
    788 cutText ["", "BLACK IN", 1];

    uiSleep 1;

    // Stop any remaining audio when the screen clears.
    if (_soundID >= 0) then {
        stopSound _soundID;
    };
};

missionNamespace setVariable [
    "Cury_deathFadeHandle",
    _fadeHandle
];