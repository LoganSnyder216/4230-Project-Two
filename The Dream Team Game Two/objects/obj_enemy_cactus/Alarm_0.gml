/// @description Insert description here

// Inherit the parent event
event_inherited();

if (instance_exists(obj_gardener))
{
	var _dir = point_direction(x, y, obj_gardener.x, obj_gardener.y);
	
	scr_create_projectile(obj_projectile_needle, x, y, _dir - 5);
	scr_create_projectile(obj_projectile_needle, x, y, _dir);
	scr_create_projectile(obj_projectile_needle, x, y, _dir + 5);
	
	target_x = irandom_range(PLAY_AREA_BOUNDARY_LEFT + 64, PLAY_AREA_BOUNDARY_RIGHT - 64);
	target_y = irandom_range(PLAY_AREA_BOUNDARY_TOP + 64, PLAY_AREA_BOUNDARY_BOTTOM - 64);
	
	direction = point_direction(x, y, target_x, target_y);
	speed = move_speed;
}

