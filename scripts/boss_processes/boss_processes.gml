// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boss_processes(){



function boss_anim(){
	switch(boss) {
	case boss.STILL:
		show_hurt();
		o_boss.sprite_index = s_idle_boss;
	break ;
	//
	case boss.DRIFT:  
		show_hurt();
		o_boss.sprite_index = s_walk_boss;
	break;
	//
	//
	case boss.FIGHT:
		o_boss.sprite_index = s_attack_boss;
	break;
	//
	case boss.DEATH:
		o_boss.sprite_index = s_dead_boss;
	break;
	}
}

<<<<<<< HEAD
}
=======
>>>>>>> 1adddca52def8e22c3d145a1af0d64e9ecb688a4
