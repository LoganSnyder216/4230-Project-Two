// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack_pattern(pattern_int, projectile_int, dir){
	
	if (instance_exists(other))
	{
		var _projectile = PROJECTILE_TYPE.BASIC;
		
		switch (projectile_int)
		{
			//Basic projectile
			case PROJECTILE_TYPE.BASIC:
				_projectile = obj_projectile_wateringcan;
			break;
			//Wide projectile
			case PROJECTILE_TYPE.WIDE:
				_projectile = obj_projectile_wide;
			break;
			
		}
		
		switch (pattern_int)
		{
			//Basic pattern
			case ATTACK_PATTERN.BASIC:
				scr_create_projectile(_projectile, other.x, other.y, dir);
			break;
			//V spread pattern
			case ATTACK_PATTERN.SPREAD:
				scr_create_projectile(_projectile, other.x, other.y, dir - 45);
				scr_create_projectile(_projectile, other.x, other.y, dir + 45);
			break;
			
		}
	}
	
}