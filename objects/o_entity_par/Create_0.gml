/// @description Insert description here
// You can write your code in this editor
state = states.IDLE;
// init previous position
xp = x;
yp = y;
facing = 1;
hsp = 0;
vsp = 0;
// how long we are knocked back for
knockback_time = 0;
hurt_time = 30; //hurt_frames
flash_initial = 16;
flash = flash_initial/2;