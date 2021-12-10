/// @description Insert description here

// Inherit the parent event
event_inherited();

hp -= 1;

scr_create_projectile(obj_projectile_grape, x, y, irandom_range(0, 360));

if (hp < 1)
{
	instance_destroy();
}

