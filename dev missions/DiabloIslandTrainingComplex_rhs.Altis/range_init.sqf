_short1 = (selectRandom [1,2,3];);
_short2 = (selectRandom [4,5,6];);
_med1 = (selectRandom [7,8,9];);
_med2 = (selectRandom [10,11,12];);
_long1 = (selectRandom [13,14,15];);
_long2 = (selectRandom [16,17,18];);
_short = (selectRandom [1,2,3,4,5,6];);
_med = (selectRandom [7,8,9,10,11,12];);
_long = (selectRandom [13,14,15,16,17,18];);

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
		["Load one 20 round magazine",6],
		["Assume a prone position and scan your lane",3],
		["Range is hot!",1],
		["Range is hot!",0,"FD_Course_Active_F",0],
		[[_med],6],
		[[_short],6],
		[[_short],6],
		[[_long2],6],
		[[_med],6],
		[[_med],6],
		[[_long2],6],
		[[_short],6],
		[[_med],6],
		[[_short],6],
		[[_short1,_short2],10],
		[[_short2,_med1],10],
		[[_med1,_med2],10],
		[[_med,_short],10],
		[[_med,long1],10],
		["Reload one 20 round magazine",6],
		["Assume a kneeling position and scan your lane",3],
		["Range is hot!",1],
		["Range is hot!",0,"FD_Course_Active_F",0],
		[[_short],6],
		[[_short],6],
		[[_med],6],
		[[_med],6],
		[[_med],6],
		[[_short],6],
		[[_med],6],
		[[_med],6],
		[[_med],6],
		[[_med],6],
		[[_short],6],
		[[_med],6],
		[[_short],6],
		[[_med],6],
		[[_short],6],
		[[_med],6],
		[[_med],6],
		[[_med],6],
		[[_short],6],
		[[_short],6],
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
] spawn YMF_ranges_fnc_createRange;

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
		[[_short1],5], // raise first target for 5 seconds
		[[_short2],5],
		[[_med1],2],
		[[10],2],
		[[_med1],5],
		["Reload.",5],
		["Range is hot!",3],
		[[_short2,_short2],8], // raise targets 2 and 7 for 5 seconds
		[[_med1,_short1],8],
		[[_med1,10],5],
		[[_short2,_short1],5],
		[[_short2,_short1],5],
		["Safe your weapon.",3],
		["Range complete.",0]
	],
	nil,	// target grouping, nil to disable grouping, otherwise group as define nested arrays: [[0,1],[2,3]] etc
				//   a particular target can be in multiple groups
	[13,11,9]	// qualification tiers, [expert, sharpshooter, marksman], nil to disable qualifications altogether
				//   values below the last element will show no go
				//   Not all three are required, [35] would simply return expert above 35, and no go below that
] spawn YMF_ranges_fnc_createRange;



[
	"targets", //range type
	"Grenade Range", // title text
	"gr", // range tag
	1, // lane count
	4, // targets per lane
	[ // Range sequence
		["Ready your grenades",5],
		["Range is hot!",5],
		[[1],30],
		[[2],30],
		[[3],30],
		[[4],30],
		["Safe your weapon.",3],
		["Range complete.",0]
	],
	nil, // target grouping
	[4,3,2] // qualification tiers
] spawn YMF_ranges_fnc_createRange;

[
	"targets", //range type
	"Grenade Launcher Range", // title text
	"lr", // range tag
	1, // lane count
	9, // targets per lane
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
	[8,6,4] // qualification tiers
] spawn YMF_ranges_fnc_createRange;

[
	"spawn", //range type
	"AT Range", // title text
	"ar", // range tag
	1, // lane count
	4, // targets per lane
	nil, // Range sequence
	nil, // target grouping
	[3,2,1] // qualification tiers
] spawn YMF_ranges_fnc_createRange;

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
	nil, // target grouping
	[11,9,7] // qualification tiers
] spawn YMF_ranges_fnc_createRange;
