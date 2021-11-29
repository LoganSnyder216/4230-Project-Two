/// @description Insert description here

if (global.enemy_count_remaining > 0)
{
	global.enemy_count_remaining -= 1;
	
	if (global.enemy_count_remaining == 0)
	{
		room_goto(rm_win);
	}
}

