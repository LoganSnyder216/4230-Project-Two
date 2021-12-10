/// @description Insert description here

// Inherit the parent event
event_inherited();

hp -= 1;

instance_create_layer(x, y, "Enemies", obj_enemy_grape);
instance_create_layer(x, y, "Enemies", obj_enemy_grape);

if (hp < 1)
{
	instance_destroy();
}

