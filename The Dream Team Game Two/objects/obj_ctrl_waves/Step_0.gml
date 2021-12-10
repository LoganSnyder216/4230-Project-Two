/// @description Insert description here

//Starts a new wave after the current wave has been completed
if (global.is_wave_cleared == 1)
{
	instance_destroy(obj_projectile_parent_enemy);
	
	if (global.wave < 9)
	{
		alarm[0] = 120;
	}
	else
	{
		room_goto(rm_win);
	}
	
	global.is_wave_cleared = 0;
}

