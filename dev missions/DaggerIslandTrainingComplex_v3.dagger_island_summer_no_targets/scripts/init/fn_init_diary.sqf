#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add diary records.
 *
 * Example:
 * call cScripts_fnc_init_diary
 *
 * Public: No
 */

waitUntil {!isNull player && player == player};
waitUntil {profileName != ""};
if (!isNil{player getVariable QEGVAR(player,documents)}) exitWith {SHOW_WARNING_1("initDiary", "Diary Records already applied for %1.", player)};

INFO_1("initDiary", "Applying Diary Records to %1...", player);

// Add New Topic (Checklists)
if !(player diarySubjectExists "trainobj") then {
    player createDiarySubject ["trainobj","Objectives"];

    // Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)
    call FUNC(Doc_mission_Info);
};

if !(player diarySubjectExists "trainmap") then {
    player createDiarySubject ["trainmap","Training Map"];

    // Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)
    call FUNC(Doc_mission_Info);
};


player setVariable [QEGVAR(player,documents), true];
