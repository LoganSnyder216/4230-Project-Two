/// @description Insert description here

// Inherit the parent event
event_inherited();

move_bounce_solid(false);

life_span -= 1;

if (life_span < 1)
{
	instance_destroy();
}

