/// @description Insert description here

if (instance_exists(other))
{
	if (other.i_frames == 0)
	{
		other.hp -= 1;
		other.i_frames = 30;
	}
	
	if (other.hp <= 0)
	{
		instance_destroy(other);
	}
	
}