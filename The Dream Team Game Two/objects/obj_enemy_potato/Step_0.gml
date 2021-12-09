/// @description Insert description here

if (instance_exists(obj_gardener))
{
	direction = point_direction(x, y, obj_gardener.x, obj_gardener.y);
	
	if (point_distance(x, y, obj_gardener.x, obj_gardener.y) < 256)
	{
		speed = 6;
	}
	
	if (point_distance(x, y, obj_gardener.x, obj_gardener.y) < 96)
	{	
		if (image_index > 6)
		{
			if (!is_exploding)
			{
				is_exploding = true;
				alarm[1] = 5;
			}
		}
			
		speed = 0;
	}
	
	if (is_exploding)
	{
		speed = 0;
	}
}
