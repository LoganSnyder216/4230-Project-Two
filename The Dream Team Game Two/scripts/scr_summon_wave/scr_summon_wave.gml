// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_summon_wave(){
	
	//Spawn a wave of enemies based on the current wave number
	for (var i = 0; i < global.wave_sizes[global.wave]; i++)
	{
		var _x = irandom_range(PLAY_AREA_BOUNDARY_LEFT + 64, PLAY_AREA_BOUNDARY_RIGHT - 64);
		var _y = irandom_range(PLAY_AREA_BOUNDARY_TOP + 64, PLAY_AREA_BOUNDARY_BOTTOM - 64);
		
		audio_play_sound(wave_start, 1, false);
		
		var _wave_enemies = global.wave_enemies[global.wave]
		var _chosen_enemy = _wave_enemies[irandom_range(0, array_length(_wave_enemies) - 1)];
		
		instance_create_layer(_x, _y, "Enemies", _chosen_enemy);
	}
	
	global.enemies_remaining = global.wave_sizes[global.wave];
	
}