/// @description Insert description here
// You can write your code in this editor
#macro MAIN				0
#macro SETTINGS			1

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
sub_menu = 0; //current sub menu


