/// @description Hide Room Tiles After 10 Seconds, game has started
// You can write your code in this editor


with(obj_disappear_tile)
{
	visible = false;
}


with(obj_walk_tile)
{
	visible = false;
}

with(obj_player)
{
	has_level_started = true;
}