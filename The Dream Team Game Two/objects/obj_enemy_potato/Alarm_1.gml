/// @description Insert description here

if (image_index < 11)
{
	image_index += 1;
	alarm[1] = 5;
}
else
{
	instance_create_layer(x, y, "Enemies", obj_potato_explosion);
	instance_destroy();
}

