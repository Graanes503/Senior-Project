// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boss_processes(){

}

function Boss_anim(){
	switch(state) {
	case states.IDLE:
		show_hurt();
		o_boss.sprite_index = s_idle_boss;
	break ;
	//
	case states.MOVE:  
		show_hurt();
		o_boss.sprite_index = s_walk_boss;
	break;
	//
	case states.HEAL:
		show_hurt();
		o_boss.sprite_index = s_boss_heal;
	break;
	//
	case states.ATTACK:
		o_boss.sprite_index = s_attack_boss;
	break;
	//
	case states.DEAD:
		o_boss.sprite_index = s_dead_boss;
	break;
	}
}

function Boss_heal(){ 
	
	
}