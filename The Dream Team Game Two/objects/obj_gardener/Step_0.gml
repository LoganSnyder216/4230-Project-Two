/// @description Insert description here

#region Player Input
	
	//Movement
	var _move_left = keyboard_check(ord("A"));
	var _move_right = keyboard_check(ord("D"));
	var _move_up = keyboard_check(ord("W"));
	var _move_down = keyboard_check(ord("S"));
	
	//Switch projectile type
	var _switch_projectile_type = keyboard_check_pressed(ord("Q")) or mouse_check_button_pressed(mb_left);
	
	//Switch attack pattern
	var _switch_attack_pattern = keyboard_check_pressed(ord("E")) or mouse_check_button_pressed(mb_right);
	
#endregion

#region Movement
	
	//Calculate horizontal and vertical directions
	var _h_dir = (_move_right - _move_left);
	var _v_dir = (_move_down - _move_up);
	
	//Scale by movement speeds
	var _h_move = _h_dir * h_move_speed;
	var _v_move = _v_dir * v_move_speed;
	
	#region Keep the player in the play area
		
		//Establish boundaries
		var _player_boundary_left = PLAY_AREA_BOUNDARY_LEFT + sprite_xoffset;
		var _player_boundary_right = PLAY_AREA_BOUNDARY_RIGHT - sprite_xoffset;
		var _player_boundary_top = PLAY_AREA_BOUNDARY_TOP + sprite_yoffset;
		var _player_boundary_bottom = PLAY_AREA_BOUNDARY_BOTTOM - sprite_yoffset;
		
		//Left boundary check
		if (x + _h_move < _player_boundary_left)
		{
			_h_move = 0;
			x = _player_boundary_left;
		}
		
		//Right boundary check
		if (x + _h_move > _player_boundary_right)
		{
			_h_move = 0;
			x = _player_boundary_right;
		}
		
		//Top boundary check
		if (y + _v_move < _player_boundary_top)
		{
			_v_move = 0;
			y = _player_boundary_top;
		}
		
		//Bottom boundary check
		if (y + _v_move > _player_boundary_bottom)
		{
			_v_move = 0;
			y = _player_boundary_bottom;
		}
		
	#endregion
	
	//Update position
	x += _h_move;
	y += _v_move;
	
#endregion

#region Sprite Direction
	
	var _player_direction = point_direction(x, y, mouse_x, mouse_y);
	image_angle = _player_direction;
	
#endregion

#region Projectiles
	
	//Switch projectile type
	if (_switch_projectile_type)
	{
		if (current_projectile == PROJECTILE_TYPE.BASIC)
		{
			current_projectile = PROJECTILE_TYPE.WIDE;
			shoot_interval += 2;
		}
		else if (current_projectile == PROJECTILE_TYPE.WIDE)
		{
			current_projectile = PROJECTILE_TYPE.BASIC;
			shoot_interval -= 2;
		}
	}
	
	//Switch attack pattern
	if (_switch_attack_pattern)
	{
		if (current_attack_pattern == ATTACK_PATTERN.BASIC)
		{
			current_attack_pattern = ATTACK_PATTERN.SPREAD;
			shoot_interval += 5;
		}
		else if (current_attack_pattern == ATTACK_PATTERN.SPREAD)
		{
			current_attack_pattern = ATTACK_PATTERN.BASIC;
			shoot_interval -= 5;
		}
	}
	
	//Only fire projectiles on an interval
	if (can_shoot)
	{		
		scr_attack_pattern(current_attack_pattern, current_projectile, _player_direction);
		can_shoot = false;
		alarm[0] = shoot_interval;
	}
	
#endregion

#region Invincibility Frames
	
	if (i_frames > 0)
	{
		i_frames -= 1;
	}
	
#endregion

