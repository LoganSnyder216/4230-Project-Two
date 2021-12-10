/// @description Insert description here

draw_self();

//Draw Instructions
var _x_offset = 1344;
var _y_offset = 256;
draw_text_transformed(_x_offset, _y_offset, "Instructions", 2, 2, 0);
_y_offset += 64;
draw_text(_x_offset, _y_offset, "Win by clearing all waves of enemies");
_y_offset += 32;
draw_text(_x_offset, _y_offset, "Lose if you run out of health");
_y_offset += 32;
draw_text(_x_offset, _y_offset, "Move with WASD");
_y_offset += 32;
draw_text(_x_offset, _y_offset, "Aim with the mouse");
_y_offset += 32;
draw_text(_x_offset, _y_offset, "Switch Projectile Type");
draw_text(1600, _y_offset, "Q or Left Mouse Button");
_y_offset += 32;
draw_text(_x_offset, _y_offset, "Switch Attack Pattern");
draw_text(1600, _y_offset, "E or Right Mouse Button");


//Draw Credits
var _job_x = 1344;
var _name_x = 1600;
var _adjusted_y = _y_offset + 128;
_y_offset = 48;

draw_text_transformed(_job_x, _adjusted_y, "Credits", 2, 2, 0);
_adjusted_y += _y_offset + 16;

draw_text(_job_x, _adjusted_y, "Producer: ");
draw_text(_name_x, _adjusted_y, "Sandy Yang");
_adjusted_y += _y_offset;

draw_text(_job_x, _adjusted_y, "Programmer: ");
draw_text(_name_x, _adjusted_y, "Logan Snyder");
_adjusted_y += _y_offset;

draw_text(_job_x, _adjusted_y, "Designer: ");
draw_text(_name_x, _adjusted_y, "Adam Lowder");
_adjusted_y += _y_offset;

draw_text(_job_x, _adjusted_y, "Artist: ");
draw_text(_name_x, _adjusted_y, "Kylee Mucher");