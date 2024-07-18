#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV 
* This function add diary records.
 *
 * Example:
 * call Scripts_fnc_init_diary
 *
 * Public: No
 */

waitUntil {!isNull player && player == player};
waitUntil {profileName != ""};
if (!isNil{player getVariable QEGVAR(player,documents)}) exitWith {SHOW_WARNING_1("initDiary", "Diary Records already applied for %1.", player)};

INFO_1("initDiary", "Applying Diary Records to %1...", player);

// Add New Topic (61st Mechanized Infantry Battalion)
if !(player diarySubjectExists "61st") then {
    player createDiarySubject ["61st","61st Mechanized Infantry Battalion"];

    // Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)
    call FUNC(Doc_MissionControl);
    call FUNC(Doc_Info);
};

player setVariable [QEGVAR(player,documents), true];
