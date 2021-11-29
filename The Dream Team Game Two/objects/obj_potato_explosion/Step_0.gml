/// @description Insert description here

if (image_xscale < 2.5)
{
	image_xscale += 0.2;
	image_yscale += 0.2;
}
else
{
	instance_destroy();
}
