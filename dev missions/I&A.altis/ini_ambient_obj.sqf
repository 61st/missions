// by ALIAS
// 
// Tutorial: https://www.youtube.com/user/aliascartoons

// TO DO: sounds

/*
============== AAA barrage ==============
EX1 - place the line below in the init field of the object you want as flaks generator
nul = [this] execVM "scripts\ALambientbattle\alias_flaks.sqf";

EX2 - if you want a specific object to work as flaks generator use its name as parameter and run it from a trigger or script
nul = [aaa_object_name] execVM "scripts\ALambientbattle\alias_flaks.sqf";

============== Ground barrage ==============
EX1 - place the line below in the init field of the object you want as artillery generator
nul = [this] execVM "scripts\ALambientbattle\alias_artillery.sqf";

EX2 - if you want a specific object to work as artillery generator use its name as parameter and run it from a trigger or script
nul = [artillery_object_name] execVM "scripts\ALambientbattle\alias_artillery.sqf";

============== Tracers ==============
color = "red", "green", "white"
nul = [tracers_object_name,color] execVM "scripts\ALambientbattle\alias_tracers.sqf";

EX1 - place the line below in the init field of the object you want as tracer generator
nul = [this,"red"] execVM "scripts\ALambientbattle\alias_tracers.sqf";
nul = [this,"green"] execVM "scripts\ALambientbattle\alias_tracers.sqf";
nul = [this,"white"] execVM "scripts\ALambientbattle\alias_tracers.sqf";

EX2 - if you want a specific object to work as tracer generator use its name as parameter and run it from a trigger or script
nul = [tracers_object_name_1,"red"] execVM "scripts\ALambientbattle\alias_tracers.sqf";

============== Missile launch ==============
EX1 - place the line below in the init field of the object you wanr as missile generator
nul = [this] execVM "scripts\ALambientbattle\alias_missiles.sqf";

EX2 - if you want a specific object to work as missile launcher use its name as parameter and run it from a trigger or script
nul = [missiles_object_name] execVM "scripts\ALambientbattle\alias_missiles.sqf";


============== Search light ==============
null = [object,enable_sound] execVM "scripts\ALambientbattle\aaa_search_light.sqf"

object - string, name of the object, use this if you run the script from init field
enable_sound - boolean, if true the sound alarm will be heard, i would recommend using this only for one object if you have multiple search lights in a single place

EX1 - use the line below in your init field of the object 
null = [this,true] execVM "scripts\ALambientbattle\aaa_search_light.sqf"

Ex2 - use line below to run the script from global space like for example init.sqf
null = [my_search_light,false] execVM "scripts\ALambientbattle\aaa_search_light.sqf"


========= Stopping the special effect

If you want to remove flaks on the fly, set false a parameter, via trigger or script, as you shown below or delete the object you used as generator
al_aaa = false;
publicVariable "al_aaa";

If you want to remove artillery bombardment on the fly, set false a parameter, via trigger or script, as you shown below or delete the object you used as generator
al_art = false;
publicVariable "al_art";

If you want to remove missile sites on the fly, set false a parameter, via trigger or script, as you shown below or delete the object you used as generator
al_missile = false;
publicVariable "al_missile";

If you want to remove tracers on the fly, set false a parameter, via trigger or script, as you shown below or delete the object you used as generator
al_tracer = false;
publicVariable "al_tracer";

Run commands below to stop AAA search light
al_search_light = false;
publicVariable "al_search_light";
*/