if (hasInterface) then {
    // Stop the death text and fade timer.
    {
        private _handle = missionNamespace getVariable [
            _x,
            scriptNull
        ];

        if (!isNull _handle) then {
            terminate _handle;
        };

        missionNamespace setVariable [_x, scriptNull];
    } forEach [
        "Cury_deathMessageHandle",
        "Cury_deathFadeHandle"
    ];

    // Stop the death sound immediately.
    private _soundID = missionNamespace getVariable [
        "Cury_deathSoundID",
        -1
    ];

    if (_soundID >= 0) then {
        stopSound _soundID;
    };

    missionNamespace setVariable [
        "Cury_deathSoundID",
        -1
    ];

    // Clear text and black background immediately.
    789 cutText ["", "PLAIN", 0];
    788 cutText ["", "PLAIN", 0];
};