/// @description Insert description here

if (global.enemies_remaining > 0)
{
	global.enemies_remaining -= 1;
	
	if (global.enemies_remaining == 0)
	{
		global.is_wave_cleared = 1;
	}
}

var _spawn_health_pickup = irandom_range(0, 5);

if (_spawn_health_pickup < 1)
{
	instance_create_layer(x, y, "Instances", obj_health_pickup);
}

