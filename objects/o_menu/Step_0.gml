/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);
var _left_held = keyboard_check(vk_left);
var _right_held = keyboard_check(vk_right);
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

// holding key down
var _repeat_spd = 8;
var _repeat_delay = 25;

if _right time_held_right = _repeat_delay;
if time_held_right > 0 {
	time_held_right--;
if time_held_right == 0 and _right_held {
	_right = true;
	time_held_right = _repeat_spd;
	}
}
// holding left
if _left time_held_left = _repeat_delay;
if time_held_left > 0 {
	time_held_left--;
if time_held_left == 0 and _left_held {
	_left = true;
	time_held_left = _repeat_spd;
	}
}

var _move = _down - _up;
var _hmove = _right - _left;
if _move != 0 {
	// move the index
	index += _move;
	
	// clamp values 
	var _size = array_length(menu[sub_menu]);
	if index < 0 index = _size -1;		// at start, so loop to menu end
	else if index >= _size index = 0;	// at end, so loop to menu start
}
	
if _select or (is_array(menu[sub_menu][index]) and (_hmove != 0)){
	switch(sub_menu) {
		case MAIN: //main menu
			switch(index)	{
				case 0:
					// start
					room_goto_next();
				break;
				case 1:
					// options
					sub_menu = SETTINGS;
					index = 0;
				break;
				case 2:
					// exit
					game_end();
				break;
			}
			break;
		case SETTINGS:
			switch(index)	{
				case 0:
					// sound
					change_menu(_hmove, "sound");
				break;
				case 1:
					//Music
					change_menu(_hmove, "music");
				break;
				case 2:
					// Contols
					sub_menu = CONTROLS;
					index = 0;
				break;
				case 3:
					// Back
					sub_menu = MAIN;
					index = 1;
				break;
			}
<<<<<<< HEAD
					break;
			
=======
			break;
>>>>>>> 1adddca52def8e22c3d145a1af0d64e9ecb688a4
		case CONTROLS:
			switch(index) {
				case 0:
					// Controls
				break;
				case 6:
				sub_menu = SETTINGS;
				index = 0;
				break;
<<<<<<< HEAD
				}
			}
=======
				
				
				
			
>>>>>>> 1adddca52def8e22c3d145a1af0d64e9ecb688a4
		}
function change_menu(_move, _key) {
// desc		change the ds map key entry by the move value passed 
// _move	real	which way to move the selection
// _key		string ds_map key for this selection						

// get the allowed limits for this selection
// get map array 
var _map_arr = set[? _key];
// get the limits array
var _limits_arr = _map_arr[1];

// is the first entry in the limits of an integer
if is_real(_limits_arr[0]){
		// limits are index position 0 and 1
		var _min = _limits_arr[0];
		var _max = _limits_arr[1];
} else {
// string entries
var _min = 0;
var _max = array_length(_limits_arr) -1;
	}
	// move the selection 
	_map_arr[@ 0] = clamp( _move +_map_arr[0], _min, _max);
	
}
