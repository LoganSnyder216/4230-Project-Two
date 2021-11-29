/// @description Insert description here

if ((x < PLAY_AREA_BOUNDARY_LEFT) or (x + hspeed < PLAY_AREA_BOUNDARY_LEFT))
{
	instance_destroy();
}
if ((x > PLAY_AREA_BOUNDARY_RIGHT) or (x + hspeed > PLAY_AREA_BOUNDARY_RIGHT))
{
	instance_destroy();
}
if ((y < PLAY_AREA_BOUNDARY_TOP) or (y + vspeed < PLAY_AREA_BOUNDARY_TOP))
{
	instance_destroy();
}
if ((y > PLAY_AREA_BOUNDARY_BOTTOM) or (y + vspeed > PLAY_AREA_BOUNDARY_BOTTOM))
{
	instance_destroy();
}