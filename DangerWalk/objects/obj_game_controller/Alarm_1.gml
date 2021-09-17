/// @description Respawn Player and hide all game tiles
// You can write your code in this editor


if( room == rm_game_level_1 )
{	
	// Respawn the player
	instance_create_layer(314, 700, "level_1_player_layer", obj_player);
	
	with(obj_player)
	{	
		has_level_started = true;
	}
	
}
else if( room == rm_game_level_2 )
{
	// Respawn the player
	instance_create_layer(314, 700, "level_2_player_layer", obj_player);
	
	with(obj_player)
	{	
		has_level_started = true;
	}

}

hideTiles();