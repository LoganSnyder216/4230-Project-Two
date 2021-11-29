/// @description Insert description here

wave_array = array_create(10);

for (var i = 0; i < array_length(wave_array); i++)
{
	wave_array[i] = scr_create_wave(i);
}

