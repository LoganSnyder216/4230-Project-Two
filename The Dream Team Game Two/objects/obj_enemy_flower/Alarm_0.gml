/// @description Insert description here

// Inherit the parent event
event_inherited();

for (var i = 0; i < 8; i++)
{
	scr_create_projectile(obj_projectile_wateringcan_enemy, x, y, i * 45);
}
