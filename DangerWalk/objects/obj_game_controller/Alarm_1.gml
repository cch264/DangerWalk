/// @description Respawn Player and hide all game tiles
// You can write your code in this editor

// Respawn the player
instance_create_layer(314, 610, "level_1_player_layer", obj_player);

if( room == rm_game_level_1 )
{	
	with(obj_player)
	{	
		has_level_started = true;
	}
}

hideTiles();