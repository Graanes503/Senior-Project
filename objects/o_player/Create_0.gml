/// @description Insert description here
// You can write your code in this editor
event_inherited();
walk_spd = 1.5;
hp_max = 12;
hp = hp_max;


// Bow
aim_dir = 0;
bow_dis = 11;
fire_rate = 30;
can_attack = true;
arrow_speed = 8;

my_bow = instance_create_layer(x, y, "Instances", o_bow);

cursor_sprite = s_cursor;
window_set_cursor(cr_none);
ready_to_restart = false; // ensure we can restart after player death