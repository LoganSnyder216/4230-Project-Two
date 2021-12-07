/// @description Insert description here

if (global.enemy_count_current < global.enemy_count_max)
{
	var _x = irandom_range(PLAY_AREA_BOUNDARY_LEFT, PLAY_AREA_BOUNDARY_RIGHT);
	var _y = irandom_range(PLAY_AREA_BOUNDARY_TOP, PLAY_AREA_BOUNDARY_BOTTOM);
	
	enemy_type = choose(obj_enemy_flower, obj_enemy_cactus);
	instance_create_layer(_x, _y, "Enemies", enemy_type);
	
	global.enemy_count_current += 1;
	
	alarm[0] = spawn_interval;
}

