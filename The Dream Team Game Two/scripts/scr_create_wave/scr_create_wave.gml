// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_wave(wave_number){
	
	wave_struct =
	{
		number : wave_number,
		squads : []
	}
	
	for (var i = 0; i < 2; i++)
	{
		array_push(wave_struct.squads, scr_create_squad(wave_number));
	}
	
}