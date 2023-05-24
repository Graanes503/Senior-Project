/// @description Insert description here
// You can write your code in this editor
switch(state) {
	case states.IDLE:
		calc_entity_movement();
		check_for_player();
		if path_index != -1 state = states.MOVE;
		Boss_anim();
	break ;
	//
	case states.MOVE:  
		calc_entity_movement();
		check_for_player();
		check_facing();
		if path_index == -1 state = states.IDLE;
		Boss_anim();
	break;
	//
	case states.HEAL:
	check_for_player();
	Boss_heal();
	break;
	//
	case states.ATTACK:
		calc_entity_movement();
		perform_attack();
		check_facing();
		Boss_anim();
	break;
	//
	case states.DEAD:
		calc_entity_movement();
		Boss_anim();
	break;
}



