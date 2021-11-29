// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_projectile(projectile, x_pos, y_pos, dir){
	
	with (instance_create_layer(x_pos, y_pos, "Projectiles", projectile))
	{
		direction = dir;
		image_angle = direction;
	}
	
}

