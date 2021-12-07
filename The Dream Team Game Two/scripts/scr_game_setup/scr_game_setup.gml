// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_setup(){
	
	//Global Variables
	global.enemies = [obj_enemy_flower, obj_enemy_cactus];
	global.enemy_count_max = 30;
	global.enemy_count_current = 0;
	global.enemy_count_remaining = global.enemy_count_max;
	
	//Macros
	#macro PLAY_AREA_BOUNDARY_LEFT (224)
	#macro PLAY_AREA_BOUNDARY_RIGHT (room_width - 224)
	#macro PLAY_AREA_BOUNDARY_TOP (160)
	#macro PLAY_AREA_BOUNDARY_BOTTOM (PLAY_AREA_BOUNDARY_TOP + 768)
	
	//Enums
	enum ATTACK_PATTERN
	{
		BASIC = 0,
		SPREAD = 1
		
	}
	
	enum PROJECTILE_TYPE
	{
		BASIC = 0,
		WIDE = 1
		
	}
	
}