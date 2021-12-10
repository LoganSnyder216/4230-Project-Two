// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_setup(){
	
randomize();
	
//Global Variables
	
	//Current wave number
	global.wave = 0;
	
	//Number of enemies in each wave
	global.wave_sizes = [3, 3, 4, 4, 5, 5, 6, 6, 7, 7];
	//global.wave_sizes = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
	
	//Array that holds arrays of which enemies appear in each wave
	global.wave_enemies = array_create(10);
	
	//Arrays of which enemies appear in each wave
	global.wave_enemies[0] = [obj_enemy_flower];
	global.wave_enemies[1] = [obj_enemy_potato];
	global.wave_enemies[2] = [obj_enemy_flower, obj_enemy_potato];
	global.wave_enemies[3] = [obj_enemy_cactus];
	global.wave_enemies[4] = [obj_enemy_flower, obj_enemy_cactus];
	global.wave_enemies[5] = [obj_enemy_potato, obj_enemy_cactus];
	global.wave_enemies[6] = [obj_enemy_flower, obj_enemy_potato, obj_enemy_cactus];
	global.wave_enemies[7] = [obj_enemy_flower, obj_enemy_potato, obj_enemy_cactus, obj_enemy_creeping_cluster];
	global.wave_enemies[8] = [obj_enemy_potato, obj_enemy_cactus, obj_enemy_creeping_cluster];
	global.wave_enemies[9] = [obj_enemy_cactus, obj_enemy_creeping_cluster];
	
	//Tracks how many enemies are left in the current wave
	global.enemies_remaining = 0;
	
	//Tracks whether the current wave has ended
	global.is_wave_cleared = 0;
	
	
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