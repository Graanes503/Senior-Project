/// Notes ;   {Video 1 time: Finished								}

function reset_variables() {
left = 0;
up = 0;
right = 0;
down = 0;
vmove = 0;
hmove = 0

}

function get_input() {
	if keyboard_check(ord("A")) left	 = 1;
	if keyboard_check(ord("D")) right	 = 1;
	if keyboard_check(ord("W")) up		 = 1;
	if keyboard_check(ord("S")) down	 = 1;
	
}

function calc_movement() {
	hmove = right - left;
	vmove = down - up;
	
	var _facing = (aim_dir < 90 or aim_dir > 270);
	if _facing == 0 _facing = -1;
	facing = _facing;
	if hmove != 0 or vmove != 0 {
		// get direction we are moving 
		var _dir = point_direction(0, 0, hmove, vmove);
		
		hmove = lengthdir_x(walk_spd,_dir);
		vmove = lengthdir_y(walk_spd,_dir);
	
		// add movemnt to players position
		x += hmove;
		y += vmove;
	}
	// apply knockback amount
	x += hsp; 
	y += vsp;
	
	// apply drag to knockback
	switch(state) {
		default: var _drag = 0.15; break;
		case states.DEAD: var _drag = 0.08; break;
	}
	hsp = lerp(hsp, 0, _drag);
	vsp = lerp(vsp, 0, _drag);
	
	
}
function aim_bow(){
	aim_dir = point_direction(x, y, mouse_x, mouse_y);
	my_bow.image_angle = aim_dir;
}

function collision() {
	// set target values
	var _tx = x;
	var _ty = y;
	
	//move back to last step position, out of collision
	x = xprevious;
	y = yprevious;
	
	//get max distance we want to move 
	var _disx = ceil (abs(_tx - x));
	var _disy = ceil (abs(_ty - y));
	
	if !place_meeting(x + _disx * sign(_tx - x), y, o_solid) x = round(x);
	if !place_meeting(x, y + _disy * sign(_ty - y), o_solid) y = round(y);
	
	//move as far as in x and y before hitting the solid 
	repeat(_disx) {
		if !place_meeting(x + sign(_tx - x), y, o_solid) x += sign(_tx - x);
	}
	repeat(_disy) {
		if !place_meeting(x, y + sign(_ty - y), o_solid) y += sign(_ty - y);
		
	}
	
}

function anim() {
	
	switch(state) {
		 default:
			if hmove != 0 or vmove != 0 {
			sprite_index = s_playerwalk; 
			} else {
			sprite_index = s_playeridle;
			}
		break;
		case states.DEAD: 
			sprite_index = s_playerdeath
		break;
	 }
}


function check_fire(){
	
	if mouse_check_button(mb_left){
		if can_attack {
			can_attack = false;
			alarm[0] = fire_rate;
			
			var _dir = point_direction(x,y,mouse_x,mouse_y);
			bow_dis = 5;
		
			 var _inst = instance_create_layer(x, y, "Arrow", o_arrow);
			 with(_inst){
				 speed = other.arrow_speed;
				 direction = _dir;
				 image_angle = _dir;
				 owner_id = other;
			 }
		}
	}
	
	
}


