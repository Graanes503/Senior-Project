/// @description Insert description here
// You can write your code in this editor
hp_max = 12;
hp = hp_max;

alert = false;
// distance when start to chase palyer
alert_dis = 320;
// set distance we stop from the player
attack_dis = 36;
// the frame that attack is formed
attack_frame = 6;
// can we attack
can_attack = true;
// attack delay
attack_cooldown = 50
// how much damage we deal
damage = 5;
//how long player is knockback for
knockback_time = 30;
// create path respurce 
path = path_add();
// speed we chase player
move_spd = .5;
// set delay for calculating path 
calc_path_delay = 30;
// set timer for when we calc a path
 calc_path_timer = irandom(60);
//
event_inherited();
//
s_idle_boss = s_boss_idle;
s_walk_boss = s_boss_walk;
s_attack_boss = s_boss_attack;
s_dead_boss = s_boss_dead;
s_hurt_boss = s_boss_hurt;
s_heal_boss = s_boss_heal;


