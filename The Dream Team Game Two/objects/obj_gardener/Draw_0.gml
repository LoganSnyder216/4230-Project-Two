/// @description Insert description here

draw_self();

draw_text(160, 32, "Enemies:");
draw_text(256, 32, string(global.enemy_count_remaining));
draw_text(288, 32, "/");
draw_text(320, 32, string(global.enemy_count_max));

draw_text(160, 64, "Health: " + string(hp));

