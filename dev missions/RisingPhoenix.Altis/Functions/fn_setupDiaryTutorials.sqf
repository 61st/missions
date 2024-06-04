/*
	File: fn_setupDiaryTutorials.sqf
	Author: Dom
	Description: Creates the diary entries related to the gamemode
*/

player createDiarySubject ["ORP","Operation Rising Phoenix"];

player createDiaryRecord ["ORP",["Opfor",
"The enemy will actively work against you to disrupt your operations and will be present at the majority of tasks. The difficulty of the enemy is directly linked to the number of players online, multiplied by the difficulty modifier parameter.
<br/>The enemy have access to mines, static emplacements, mortars, a variety of vehicles and air assets. Some of these can be denied through various missions.
<br/>The enemy have the ability to call for reinforcements and call ambushes upon friendly forces. Scouting patrols are also maintained which can be at any location on the map.
<br/>Make sure you read the tasks for any mission-specific information you may require."
]];

player createDiaryRecord ["ORP",["Civilians",
"Civilians can be found in most populated areas on the map and travelling between in vehicles. Each area has its own karma value which dictates how the local population react to you.
<br/>The karma value can be improved by completing missions in that town or providing various form of aids. It can be negatively effected by failing missions or harming civilians.
<br/>Civilians can be talked to through an ACE Interact, they can also be restrained which allows for a plethora of additional questions which may open up extra opportunities. An ACE Interact and keybind is also available to call for civilians to stop running to aid your speech; be aware that this may not work in hostile areas.
<br/>The most effective commanders will make use of information and missions that can only be provided through interaction with the local population.
<br/>Areas that have a negative karma will actively disrupt you, from taking up arms against you, planting IEDs, using car bombs and possibly even utilising suicide vests."
]];

player createDiaryRecord ["ORP",["Base Area",
"The base area provides you a location to setup prior to heading out on missions.
<br/>Through ACE Self Interact you have access to the Group Menu, Arsenal and Logistics/Crate Menu (accessible at the Logistics point). The Huron Repair container can also provide spare wheels and tracks through an ACE Interaction.
<br/>Commanders have additional interactions including a vehicle build menu and the ability to change the weather and time through interacting with the briefing board.
<br/>A medical building is available which can be interacted with to provide a quick heal to those in the area."
]];

player createDiaryRecord ["ORP",["Overview",
"Welcome to Operation Rising Phoenix, a highly customisable gamemode designed for its replayability.
<br/>Your objective is to complete the main missions which will culminate in a difficult final mission. There are various side and optional objectives which you may come across which can be completed to provide beneficial effects such as disabling the enemies use of heavy vehicles or aircraft.
<br/>Through the use of Mission Parameters, you can change various settings including the factions and difficulty of the playthrough.
<br/>All interaction is done through ACE Interact and Self Interact. Additionally there are a few keybinds and settings which can be changed through 'Configure Addons' in the relevant menus, under the 'Operation Rising Phoenix' category."
]];