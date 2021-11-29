/// @description Insert description here

if (instance_exists(other))
{
	other.hp -= 1;
	
	if (other.hp <= 0)
	{
		instance_destroy(other);
	}
	
	instance_destroy(self);
}