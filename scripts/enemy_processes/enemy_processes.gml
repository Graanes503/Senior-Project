// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calc_entity_movement() {
	// moves enemy and apply drag

	// apply movement
	x += hsp;
	y += vsp;

	// slowdown
	hsp *= global.drag;
	vsp *= global.drag;

	check_if_stopped();
}

function calc_knockback_movement() {
	// moves enemy and applies drag dueing knockback

	// apply movement
	x += hsp;
	y += vsp;

	// slowdown
	hsp *= 0.91;
	vsp *= 0.91;
	
	check_if_stopped();
	
	// if exit state 
	if knockback_time <= 0 state = states.IDLE;
}

function check_facing(){
	if knockback_time <= 0 {
	// desc check which way we are moving and set facing
	var _facing = sign(x - xp);
	if _facing != 0 facing = _facing;
	}
}

function check_for_player(){
// Desc check for player when near enemy and chases them

// ensure player is alive
if o_player.state == states.DEAD exit; // 

var _dis = distance_to_object(o_player);

// can we start chasing? or are we already alert and out of attack dis?
if (( _dis <= alert_dis) or alert) and _dis > attack_dis {
// enemy is now alert
alert = true; 

// should we calc our path
if calc_path_timer-- <= 0 {
	// reset timer
	calc_path_timer = calc_path_delay;
	
	
// can we make a path to the player
if x == xp and y == yp var _type = 0 else var _type = 1;
var _found_player = mp_grid_path(global.mp_grid, path, x, y, o_player.x, o_player.y, _type);

// start path if we can reach the player
if _found_player {
	path_start(path, move_spd, path_action_stop, false);
						}
				}
		} else {
			// are we close enough to attack 
			if _dis <= attack_dis{
				path_end();
				state = states.ATTACK
			}
		}
}		

function enemy_anim(){
	//
switch(state) {
	case states.IDLE:
		show_hurt();
		o_enemy.sprite_index = s_idle;	
		
	break ;
	//
	case states.MOVE:  
		show_hurt();
		o_enemy.sprite_index = s_walk;
	
	break;
	//
	case states.KNOCKBACK:
		show_hurt();
	break;
	//
	case states.ATTACK:
		o_enemy.sprite_index = s_attack;
		
	break;
	//
	case states.DEAD:
		o_enemy.sprite_index = s_dead;
		
	break;
	}
// set depth
depth = -bbox_bottom;
// update previous position
xp = x;
yp = y;


}
function perform_attack() {
	// attack player when we are at the corrected frame
	if image_index >= attack_frame and can_attack {
	
	//
	can_attack = false;
	alarm[0] = attack_cooldown;
	
	//
	var _dir = point_direction(x, y, o_player.x, o_player.y);
	
	//
	var _xx = x + lengthdir_x(attack_dis, _dir);
	var _yy = y + lengthdir_y(attack_dis, _dir);
	
	//
	var _inst = instance_create_layer( _xx, _yy, "Instances", o_enemy_hitbox);
	_inst.owner_id = id;
	_inst.damage = damage;
	_inst.knockback_time = knockback_time;
	
	}
}
function show_hurt() {
	if knockback_time-- > 0 o_enemy.sprite_index = s_hurt;
	

	
}

