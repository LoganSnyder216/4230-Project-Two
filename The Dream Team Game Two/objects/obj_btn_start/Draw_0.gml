/// @description Insert description here

draw_self();

//Draw Instructions


//Draw Credits
var _job_x = 1344;
var _name_x = 1600;
var _adjusted_y = 800;
var _y_offset = 48;

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