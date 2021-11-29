/// @description Insert description here

if (instance_exists(obj_gardener))
{
	if (obj_gardener.current_projectile == PROJECTILE_TYPE.BASIC)
	{
		sprite_index = spr_frame_projectile_basic;
	}
	else if (obj_gardener.current_projectile == PROJECTILE_TYPE.WIDE)
	{
		sprite_index = spr_frame_projectile_wide;
	}
	
}
else
{
	sprite_index = spr_frame;
}


