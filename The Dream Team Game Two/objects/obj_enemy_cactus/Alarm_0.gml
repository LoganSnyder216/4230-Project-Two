/// @description Insert description here

// Inherit the parent event
event_inherited();

if (instance_exists(obj_gardener))
{
	var _dir = point_direction(x, y, obj_gardener.x, obj_gardener.y);
	
	scr_create_projectile(obj_projectile_needle, x, y, _dir - 5);
	scr_create_projectile(obj_projectile_needle, x, y, _dir);
	scr_create_projectile(obj_projectile_needle, x, y, _dir + 5);
	
	target_x = obj_gardener.x;
	target_y = obj_gardener.y;
}

