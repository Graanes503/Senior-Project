/// @description Insert description here
// You can write your code in this editor
#macro MAIN				0
#macro SETTINGS			1
#macro CONTROLS			2
global.dsm_settings = ds_map_create();
#macro set		global.dsm_settings

ds_map_add(set, "sound", [5, [0, 10]]);
ds_map_add(set, "music", [5, [0, 10]]);

time_held_right = 0;
time_held_left = 0;

// main menu
menu[MAIN][0] = "Start";
menu[MAIN][1] = "Options";
menu[MAIN][2] = "Exit";

// main menu submenu
menu[SETTINGS][0] = ["Sound FX", "sound"] ;
menu[SETTINGS][1] = ["Music", "music"];
menu[SETTINGS][2] = "Controls";
menu[SETTINGS][3] = "Back";

index = 0; // menu index position
sub_menu = 0; //currwnt sub menu

// control menu
menu[CONTROLS][0] = "Controls";
menu[CONTROLS][1] = "Move Up = W";
menu[CONTROLS][2] = "Move left = A";
menu[CONTROLS][3] = "Move Right = D";
menu[CONTROLS][4] = "Move Down = S";
menu[CONTROLS][5] = "Shoot Bow = Left Click";
menu[CONTROLS][6] = "Back";


