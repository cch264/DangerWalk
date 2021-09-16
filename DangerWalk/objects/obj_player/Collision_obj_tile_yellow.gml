/// @description Insert description here
// You can write your code in this editor

// reveal tile with its true color
other.visible = true;
other.sprite_index = spr_tile_yellow;

// update color code
with (obj_game_controller)
{
	if string_pos("y", color_code) == 0
	{
		color_code += "y";	
	}
}