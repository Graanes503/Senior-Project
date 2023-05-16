/// @description Insert description here
// You can write your code in this editor
switch(state) {
	default: 
		reset_variables();
	
		get_input();
	
		calc_movement();
		
		aim_bow();
		
		check_fire();

		anim();
	break; 
	case states.KNOCKBACK:
		reset_variables();
	
		calc_movement();
		
		aim_bow();

		if knockback_time-- <= 0 state = states.IDLE;

		anim();
	break; 
	case states.DEAD:
		reset_variables();
	
		calc_movement();
		
		if ready_to_restart and mouse_check_button_pressed(mb_left) game_restart();
	
		anim();
	break;	
}

