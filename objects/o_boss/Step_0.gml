/// @description Insert description here
// You can write your code in this editor
switch (boss){
	case boss.STILL:
		calc_entity_movement();
		check_for_player();
		if path_index != -1 state = boss.DRIFT;
		boss_anim();
	break ;
	//
	case boss.DRIFT:  
		calc_entity_movement();
		check_for_player();
		check_facing();
		if path_index == -1 state = boss.STILL;
		boss_anim();
	break;
	//
	case boss.FIGHT:
		calc_entity_movement();
		perform_attack();
		check_facing();
		boss_anim()();
	break;
	//
	case boss.DEATH:
		calc_entity_movement();
		boss_anim();
	break;
}





