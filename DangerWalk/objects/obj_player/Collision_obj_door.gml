/// @description Insert description here
// You can write your code in this editor

//check if the door is open when the player touches it
if( other.open )
{
	switch(room)
	    {
	    case rm_game_level_1:
	        room_goto(rm_game_level_2);
	        break;
		case rm_game_level_2:
		 room_goto(rm_win);
			break;
		case rm_gameover:
	        game_restart();
	        break;
	    }
	
}