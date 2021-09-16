/// @description Insert description here
// You can write your code in this editor

// Make the walk tile visible if the player steps on it.
other.visible = true;

// reset colored tiles when player steps off
with(obj_tile_blue)
{
	sprite_index = spr_walk_tile;
}

with(obj_tile_green)
{
	sprite_index = spr_walk_tile;
}

with(obj_tile_red)
{
	sprite_index = spr_walk_tile;
}

with(obj_tile_yellow)
{
	sprite_index = spr_walk_tile;
}
