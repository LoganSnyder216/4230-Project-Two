/// @description Insert description here

if (current_projectile == PROJECTILE_TYPE.BASIC)
{
	if (current_attack_pattern == ATTACK_PATTERN.BASIC)
	{
		sprite_index = spr_gardener_basic_one;
	}
	else if (current_attack_pattern == ATTACK_PATTERN.SPREAD)
	{
		sprite_index = spr_gardener_basic_two;
	}
}
else if (current_projectile == PROJECTILE_TYPE.WIDE)
{
	if (current_attack_pattern == ATTACK_PATTERN.BASIC)
	{
		sprite_index = spr_gardener_wide_one;
	}
	else if (current_attack_pattern == ATTACK_PATTERN.SPREAD)
	{
		sprite_index = spr_gardener_wide_two;
	}
}


draw_self();

var _x_offset = 192;
var _y_offset = 32;

draw_text_transformed(_x_offset, _y_offset, "Wave", 2, 2, 0);
_x_offset += 128;
draw_text_transformed(_x_offset, _y_offset, string(global.wave + 1), 2, 2, 0);
_x_offset += 128;

draw_text_transformed(_x_offset, _y_offset, "Enemies:", 2, 2, 0);
_x_offset += 160;
draw_text_transformed(_x_offset, _y_offset, string(global.enemies_remaining), 2, 2, 0);
_x_offset += 48;
draw_text_transformed(_x_offset, _y_offset, "/", 2, 2, 0);
_x_offset += 32;
draw_text_transformed(_x_offset, _y_offset, string(global.wave_sizes[global.wave]), 2, 2, 0);
_x_offset += 32;

for (var i = 0; i < hp; i++)
{
	draw_sprite(spr_health_pickup, 0, 208 + (i * 32), 96);
}

