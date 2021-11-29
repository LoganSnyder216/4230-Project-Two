/// @description Insert description here

if (instance_exists(obj_gardener))
{
	direction = point_direction(x, y, obj_gardener.x, obj_gardener.y);
	
	if (point_distance(x, y, obj_gardener.x, obj_gardener.y) < 256)
	{
		speed = 8;
	}
	
	if (point_distance(x, y, obj_gardener.x, obj_gardener.y) < 96)
	{	
		if (!is_exploding)
		{
			is_exploding = true;
			alarm[1] = 15;
		}
	}
	
	if (is_exploding)
	{
		speed = 0;
	}
}
