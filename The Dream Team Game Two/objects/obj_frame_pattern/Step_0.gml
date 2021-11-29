/// @description Insert description here

if (instance_exists(obj_gardener))
{
	if (obj_gardener.current_attack_pattern == ATTACK_PATTERN.BASIC)
	{
		sprite_index = spr_frame_pattern_basic;
	}
	else if (obj_gardener.current_attack_pattern == ATTACK_PATTERN.SPREAD)
	{
		sprite_index = spr_frame_pattern_spread;
	}
	
}
else
{
	sprite_index = spr_frame;
}

