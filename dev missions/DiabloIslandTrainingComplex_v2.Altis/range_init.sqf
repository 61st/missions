// Rifle Range
[
	"targets", 		//range type
					//	"targets" : pop up targets, terc animation is used
					//	"spawn"   : spawned units, targets being alive/dead is used
	"Rifle Range",	// title text
	"rr",			// range tag
	8,				// lane count
	18,				// targets per lane
	[
		// Range sequence
			// First element defines the type of event:
			//		ARRAY: target(s)/group(s) to raise. Multiple elements for multiple targets/groups
			//		STRING: Message to show on the lane UI. Third element is not used in this case
			// Second element: seconds length/delay for that event
			// Third element (optional): Sound to play out of range speakers
			// Fourth element (optional): delay between end of this event and start of the next, default 2 if not present
		["Load one 20 round magazine",5],
		["Assume a prone position and scan your lane",3],
		["Range is hot!",2],
		["Range is hot!",1],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [16,17,18])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [16,17,18])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [1,2,3]),(selectRandom [4,5,6])],10],
		[[(selectRandom [4,5,6]),(selectRandom [7,8,9])],10],
		[[(selectRandom [7,8,9]),(selectRandom [10,11,12])],10],
		[[(selectRandom [7,8,9,10,11,12]),(selectRandom [1,2,3,4,5,6])],10],
		[[(selectRandom [7,8,9,10,11,12]),selectRandom [16,17,18]],10],
		["Reload one 20 round magazine",5],
		["Assume a kneeling position and scan your lane",3],
		["Range is hot!",2],
		["Range is hot!",1],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [7,8,9,10,11,12])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		[[(selectRandom [1,2,3,4,5,6])],5],
		["Cease Fire!",3],
		["Standby for final score...",1],
		["Range complete.",0]
	],
	
	nil,	// target grouping, nil to disable grouping, otherwise group as define nested arrays: [[0,1],[2,3]] etc
				//   a particular target can be in multiple groups
	[38,30,23],	// qualification tiers, [expert, sharpshooter, marksman], nil to disable qualifications altogether
				//   values below the last element will show no go
				//   Not all three are required, [35] would simply return expert above 35, and no go below that
	true,	// add player actions
	true	// use custom black texture
] spawn cav_ranges_fnc_createRange;

[
	"targets", 		//range type
					//	"targets" : pop up targets, terc animation is used
					//	"spawn"   : spawned units, targets being alive/dead is used
	"Pistol Range",	// title text
	"pr",			// range tag
	2,				// lane count
	10,				// targets per lane
	[
		// Range sequence
			// First element defines the type of event:
			//		ARRAY: target(s)/group(s) to raise. Multiple elements for multiple targets/groups
			//		STRING: Message to show on the lane UI. Third element is not used in this case
			// Second element: seconds length/delay for that event
			// Third element (optional): delay between end of this event and start of the next, default 2 if not present
		["Load a magazine.",5], //show message for 5 seconds
		["Range is hot!",3],
		[[(selectRandom [1,2,3])],5], // raise first target for 5 seconds
		[[(selectRandom [4,5,6])],5],
		[[(selectRandom [7,8,9])],2],
		[[10],2],
		[[(selectRandom [7,8,9])],5],
		["Reload.",5],
		["Range is hot!",3],
		[[(selectRandom [4,5,6]),(selectRandom [4,5,6])],8], // raise targets 2 and 7 for 5 seconds
		[[(selectRandom [7,8,9]),(selectRandom [1,2,3])],8],
		[[(selectRandom [7,8,9]),10],5],
		[[(selectRandom [4,5,6]),(selectRandom [1,2,3])],5],
		[[(selectRandom [4,5,6]),(selectRandom [1,2,3])],5],
		["Safe your weapon.",3],
		["Range complete.",0]
	],
	nil,	// target grouping, nil to disable grouping, otherwise group as define nested arrays: [[0,1],[2,3]] etc
				//   a particular target can be in multiple groups
	[13,11,9]	// qualification tiers, [expert, sharpshooter, marksman], nil to disable qualifications altogether
				//   values below the last element will show no go
				//   Not all three are required, [35] would simply return expert above 35, and no go below that
] spawn cav_ranges_fnc_createRange;

[
	"targets", //range type
	"Grenade Range", // title text
	"gr", // range tag
	1, // lane count
	4, // targets per lane
	[ // Range sequence
		["Ready your grenades",5],
		["Range is hot!",5],
		[[1],20],
		[[2],20],
		[[3],20],
		[[4],20],
		["Safe your weapon.",3],
		["Range complete.",0]
	],
	nil, // target grouping
	[4,3,2], // qualification tiers
	true,	// add player actions
	true	// use custom black texture
] spawn cav_ranges_fnc_createRange;

[
	"targets", //range type
	"Grenade Launcher Range", // title text
	"lr", // range tag
	1, // lane count
	8, // targets per lane
	[ // Range sequence
		["Ready your grenades",5],
		["Range is hot!",5],
		[[1,2],15],
		[[3],15],
		[[4,5],15],
		[[6,7,8,9],15],
		["Safe your weapon.",3],
		["Range complete.",0]
	],
	nil, // target grouping
	[8,6,4], // qualification tiers
	true,	// add player actions
	true	// use custom black texture
] spawn cav_ranges_fnc_createRange;

// [
// 	"spawn", //range type
// 	"AT Range", // title text
// 	"ar", // range tag
// 	1, // lane count
// 	4, // targets per lane
// 	nil, // Range sequence
// 	nil, // target grouping
// 	[3,2,1], // qualification tiers
// 	true,	// add player actions
// 	true	// use custom black texture
// ] spawn cav_ranges_fnc_createRange;

// MG Range
_group1 = [1,2,3,4,5];
_group2 = [6,7,8,9,10];
_group3 = [11,12,13,14,15];
_group4 = [16,17,18,19,20];
_group5 = [21,22,23,24,25];
_group6 = [26,27,28,29,30];
_group7 = [31,32,33,34,35];
_group8 = [36,37,38,39,40];
[
    "targets", //range type
    "Machine Gun Range", // title text
    "mg", // range tag
    1, // lane count
    40, // targets per lane
    [  //sequence
        ["Load and ready your weapon",10],
        ["Assume a prone position and scan your lane",5],
        ["Range is hot!",2],
        ["Range is hot!",1],
        [_group1,15],
    	[_group2,15],
    	[_group6,15],
    	[_group3,15],
    	[_group8,15],
    	[_group4,15],
    	[_group7,15],
    	[_group2,15],
    	[_group1,15],
    	[_group5,15],
        ["Reload your weapon",10],
        ["Assume a prone position and scan your lane",5],
        ["Range is hot!",2],
        ["Range is hot!",1],
        [_group1,15],
    	[_group3,15],
    	[_group4,15],
    	[_group2,15],
    	[_group3,15],
    	[_group2,15],
    	[_group4,15],
    	[_group1,15],
    	[_group3,15],
    	[_group2,15],
        ["Cease Fire!",3],
        ["Standby for final score...",1],
        ["Range complete.",0]
    ],
    nil, // target grouping (not yet implemented)
    nil, // score qualifications
    true, // add instructor actions
    true // use custom black target texture
] spawn cav_ranges_fnc_createRange;

_marksmanDelay = 20;
[
	"targets", //range type
	"Marksman Range", // title text
	"mr", // range tag
	1, // lane count
	11, // targets per lane
	[ // Range sequence
		["Load your magazine",5],
		["Range is hot!",5],
		[[1],_marksmanDelay],
		[[2],_marksmanDelay],
		[[3],_marksmanDelay],
		[[4],_marksmanDelay],
		[[5],_marksmanDelay],
		[[6],_marksmanDelay],
		[[7],_marksmanDelay],
		[[8],_marksmanDelay],
		[[9],_marksmanDelay],
		[[10],_marksmanDelay],
		[[11],_marksmanDelay],
		["Safe your weapon.",3],
		["Range complete.",0]
	],
  nil, // target grouping (not currently working)
  [11,9,7] // qualification tiers
] spawn cav_ranges_fnc_createRange;