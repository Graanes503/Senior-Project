/// @description Insert description here
event_inherited();
hp_max = 12;
hp = hp_max;

alert = false;
// distance when start to chase palyer
alert_dis = 160;
// set distance we stop from the player
attack_dis = 12;

// the frame that attack is formed
attack_frame = 6;
// can we attack
can_attack = true;
// attack delay
attack_cooldown = 75;
// how much damage we deal
damage = 2;
//how long player is knockback for
knockback_time = 10;
// create path respurce 
path = path_add();
// speed we chase player
move_spd = 1;
// set delay for calculating path 
calc_path_delay = 30;
// set timer for when we calc a path
 calc_path_timer = irandom(60);
 
 