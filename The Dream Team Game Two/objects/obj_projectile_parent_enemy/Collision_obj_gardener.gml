/// @description Insert description here

if (instance_exists(other))
{
	if (other.i_frames == 0)
	{
		audio_play_sound(ow_sound, 1, false);
		other.hp -= 1;
		other.i_frames = 15;
	}
	
	if (other.hp <= 0)
	{
		instance_destroy(other);
	}
	
	instance_destroy(self);
}