#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A 
 * This function return channel name or number based on radio.
 *
 * Arguments:
 * 0: Channel Number <NUMBER>
 *
 * Return:
 * Radio name as string
 *
 * Example:
 * [1] call ymf_fnc_getChannelName;
 */

params [
    ["_channel", 0, [0]]
];

if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {""};

// ACRE
if (EGVAR(Patches,usesACRE)) exitWith {
    private _radioNameHash = createHashMapFromArray [
        [0, "ERROR"],
        [1, "Block 1, Channel 1"],
        [2, "Block 1, Channel 2"],
        [3, "Block 1, Channel 3"],
        [4, "Block 1, Channel 4"],
        [5, "Block 1, Channel 5"],
        [6, "Block 1, Channel 6"],
        [7, "Block 1, Channel 7"],
        [8, "Block 1, Channel 8"],
        [9, "Block 1, Channel 9"],
        [10, "Block 1, Channel 10"],
        [11, "Block 1, Channel 11"],
        [12, "Block 1, Channel 12"],
        [13, "Block 1, Channel 13"],
        [14, "Block 1, Channel 14"],
        [15, "Block 1, Channel 15"],
        [16, "Block 1, Channel 16"],
        [17, "Block 2, Channel 1"],
        [18, "Block 2, Channel 2"],
        [19, "Block 2, Channel 3"],
        [20, "Block 2, Channel 4"],
        [21, "Block 2, Channel 5"],
        [22, "Block 2, Channel 6"],
        [23, "Block 2, Channel 7"],
        [24, "Block 2, Channel 8"],
        [25, "Block 2, Channel 9"],
        [26, "Block 2, Channel 10"],
        [27, "Block 2, Channel 11"],
        [28, "Block 2, Channel 12"],
        [29, "Block 2, Channel 13"],
        [30, "Block 2, Channel 14"],
        [31, "Block 2, Channel 15"],
        [32, "Block 2, Channel 16"],
        [33, "Block 3, Channel 1"],
        [34, "Block 3, Channel 2"],
        [35, "Block 3, Channel 3"],
        [36, "Block 3, Channel 4"],
        [37, "Block 3, Channel 5"],
        [38, "Block 3, Channel 6"],
        [39, "Block 3, Channel 7"],
        [40, "Block 3, Channel 8"],
        [41, "Block 3, Channel 9"],
        [42, "Block 3, Channel 10"],
        [43, "Block 3, Channel 11"],
        [44, "Block 3, Channel 12"],
        [45, "Block 3, Channel 13"],
        [46, "Block 3, Channel 14"],
        [47, "Block 3, Channel 15"],
        [48, "Block 3, Channel 16"],
        [49, "Block 4, Channel 1"],
        [50, "Block 4, Channel 2"],
        [51, "Block 4, Channel 3"],
        [52, "Block 4, Channel 4"],
        [53, "Block 4, Channel 5"],
        [54, "Block 4, Channel 6"],
        [55, "Block 4, Channel 7"],
        [56, "Block 4, Channel 8"],
        [57, "Block 4, Channel 9"],
        [58, "Block 4, Channel 10"],
        [59, "Block 4, Channel 11"],
        [60, "Block 4, Channel 12"],
        [61, "Block 4, Channel 13"],
        [62, "Block 4, Channel 14"],
        [63, "Block 4, Channel 15"],
        [64, "Block 4, Channel 16"],
        [65, "Block 5, Channel 1"],
        [66, "Block 5, Channel 2"],
        [67, "Block 5, Channel 3"],
        [68, "Block 5, Channel 4"],
        [69, "Block 5, Channel 5"],
        [70, "Block 5, Channel 6"],
        [71, "Block 5, Channel 7"],
        [72, "Block 5, Channel 8"],
        [73, "Block 5, Channel 9"],
        [74, "Block 5, Channel 10"],
        [75, "Block 5, Channel 11"],
        [76, "Block 5, Channel 12"],
        [77, "Block 5, Channel 13"],
        [78, "Block 5, Channel 14"],
        [79, "Block 5, Channel 15"],
        [80, "Block 5, Channel 16"],
        [81, "Block 6, Channel 1"],
        [82, "Block 6, Channel 2"],
        [83, "Block 6, Channel 3"],
        [84, "Block 6, Channel 4"],
        [85, "Block 6, Channel 5"],
        [86, "Block 6, Channel 6"],
        [87, "Block 6, Channel 7"],
        [88, "Block 6, Channel 8"],
        [89, "Block 6, Channel 9"],
        [90, "Block 6, Channel 10"],
        [91, "Block 6, Channel 11"],
        [92, "Block 6, Channel 12"],
        [93, "Block 6, Channel 13"],
        [94, "Block 6, Channel 14"],
        [95, "Block 6, Channel 15"],
        [96, "Block 6, Channel 16"],
        [97, "Block 7, Channel 1"],
        [98, "Block 7, Channel 2"],
        [99, "Block 7, Channel 3"],
        [100, "Block 7, Channel 4"],
        [101, "Block 7, Channel 5"],
        [102, "Block 7, Channel 6"],
        [103, "Block 7, Channel 7"],
        [104, "Block 7, Channel 8"],
        [105, "Block 7, Channel 9"],
        [106, "Block 7, Channel 10"],
        [107, "Block 7, Channel 11"],
        [108, "Block 7, Channel 12"],
        [109, "Block 7, Channel 13"],
        [110, "Block 7, Channel 14"],
        [111, "Block 7, Channel 15"],
        [112, "Block 7, Channel 16"],
        [113, "Block 8, Channel 1"],
        [114, "Block 8, Channel 2"],
        [115, "Block 8, Channel 3"],
        [116, "Block 8, Channel 4"],
        [117, "Block 8, Channel 5"],
        [118, "Block 8, Channel 6"],
        [119, "Block 8, Channel 7"],
        [120, "Block 8, Channel 8"],
        [121, "Block 8, Channel 9"],
        [122, "Block 8, Channel 10"],
        [123, "Block 8, Channel 11"],
        [124, "Block 8, Channel 12"],
        [125, "Block 8, Channel 13"],
        [126, "Block 8, Channel 14"],
        [127, "Block 8, Channel 15"],
        [128, "Block 8, Channel 16"],
        [129, "Block 9, Channel 1"],
        [130, "Block 9, Channel 2"],
        [131, "Block 9, Channel 3"],
        [132, "Block 9, Channel 4"],
        [133, "Block 9, Channel 5"],
        [134, "Block 9, Channel 6"],
        [135, "Block 9, Channel 7"],
        [136, "Block 9, Channel 8"],
        [137, "Block 9, Channel 9"],
        [138, "Block 9, Channel 10"],
        [139, "Block 9, Channel 11"],
        [140, "Block 9, Channel 12"],
        [141, "Block 9, Channel 13"],
        [142, "Block 9, Channel 14"],
        [143, "Block 9, Channel 15"],
        [144, "Block 9, Channel 16"],
        [145, "Block 10, Channel 1"],
        [146, "Block 10, Channel 2"],
        [147, "Block 10, Channel 3"],
        [148, "Block 10, Channel 4"],
        [149, "Block 10, Channel 5"],
        [150, "Block 10, Channel 6"],
        [151, "Block 10, Channel 7"],
        [152, "Block 10, Channel 8"],
        [153, "Block 10, Channel 9"],
        [154, "Block 10, Channel 10"],
        [155, "Block 10, Channel 11"],
        [156, "Block 10, Channel 12"],
        [157, "Block 10, Channel 13"],
        [158, "Block 10, Channel 14"],
        [159, "Block 10, Channel 15"],
        [160, "Block 10, Channel 16"],
        [161, "Block 11, Channel 1"],
        [162, "Block 11, Channel 2"],
        [163, "Block 11, Channel 3"],
        [164, "Block 11, Channel 4"],
        [165, "Block 11, Channel 5"],
        [166, "Block 11, Channel 6"],
        [167, "Block 11, Channel 7"],
        [168, "Block 11, Channel 8"],
        [169, "Block 11, Channel 9"],
        [170, "Block 11, Channel 10"],
        [171, "Block 11, Channel 11"],
        [172, "Block 11, Channel 12"],
        [173, "Block 11, Channel 13"],
        [174, "Block 11, Channel 14"],
        [175, "Block 11, Channel 15"],
        [176, "Block 11, Channel 16"],
        [177, "Block 12, Channel 1"],
        [178, "Block 12, Channel 2"],
        [179, "Block 12, Channel 3"],
        [180, "Block 12, Channel 4"],
        [181, "Block 12, Channel 5"],
        [182, "Block 12, Channel 6"],
        [183, "Block 12, Channel 7"],
        [184, "Block 12, Channel 8"],
        [185, "Block 12, Channel 9"],
        [186, "Block 12, Channel 10"],
        [187, "Block 12, Channel 11"],
        [188, "Block 12, Channel 12"],
        [189, "Block 12, Channel 13"],
        [190, "Block 12, Channel 14"],
        [191, "Block 12, Channel 15"],
        [192, "Block 12, Channel 16"],
        [193, "Block 13, Channel 1"],
        [194, "Block 13, Channel 2"],
        [195, "Block 13, Channel 3"],
        [196, "Block 13, Channel 4"],
        [197, "Block 13, Channel 5"],
        [198, "Block 13, Channel 6"],
        [199, "Block 13, Channel 7"],
        [200, "Block 13, Channel 8"],
        [201, "Block 13, Channel 9"],
        [202, "Block 13, Channel 10"],
        [203, "Block 13, Channel 11"],
        [204, "Block 13, Channel 12"],
        [205, "Block 13, Channel 13"],
        [206, "Block 13, Channel 14"],
        [207, "Block 13, Channel 15"],
        [208, "Block 13, Channel 16"],
        [209, "Block 14, Channel 1"],
        [210, "Block 14, Channel 2"],
        [211, "Block 14, Channel 3"],
        [212, "Block 14, Channel 4"],
        [213, "Block 14, Channel 5"],
        [214, "Block 14, Channel 6"],
        [215, "Block 14, Channel 7"],
        [216, "Block 14, Channel 8"],
        [217, "Block 14, Channel 9"],
        [218, "Block 14, Channel 10"],
        [219, "Block 14, Channel 11"],
        [220, "Block 14, Channel 12"],
        [221, "Block 14, Channel 13"],
        [222, "Block 14, Channel 14"],
        [223, "Block 14, Channel 15"],
        [224, "Block 14, Channel 16"],
        [225, "Block 15, Channel 1"],
        [226, "Block 15, Channel 2"],
        [227, "Block 15, Channel 3"],
        [228, "Block 15, Channel 4"],
        [229, "Block 15, Channel 5"],
        [230, "Block 15, Channel 6"],
        [231, "Block 15, Channel 7"],
        [232, "Block 15, Channel 8"],
        [233, "Block 15, Channel 9"],
        [234, "Block 15, Channel 10"],
        [235, "Block 15, Channel 11"],
        [236, "Block 15, Channel 12"],
        [237, "Block 15, Channel 13"],
        [238, "Block 15, Channel 14"],
        [239, "Block 15, Channel 15"],
        [240, "Block 15, Channel 16"],
        [241, "Block 16, Channel 1"],
        [242, "Block 16, Channel 2"],
        [243, "Block 16, Channel 3"],
        [244, "Block 16, Channel 4"],
        [245, "Block 16, Channel 5"],
        [246, "Block 16, Channel 6"],
        [247, "Block 16, Channel 7"],
        [248, "Block 16, Channel 8"],
        [249, "Block 16, Channel 9"],
        [250, "Block 16, Channel 10"],
        [251, "Block 16, Channel 11"],
        [252, "Block 16, Channel 12"],
        [253, "Block 16, Channel 13"],
        [254, "Block 16, Channel 14"],
        [255, "Block 16, Channel 15"],
        [256, "Block 16, Channel 16"]
    ];
    
    private _return = _radioNameHash getOrDefault [_channel, "0"];
    
    _return;
};

// TFAR
if (EGVAR(patches,usesTFAR)) exitWith { str _channel };

SHOW_CHAT_ERROR("GetChannelName", "Fatal");
""