/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_enter))
{
	switch(room)
	    {
	    case rm_start:
	        room_goto(rm_game_level_1);
	        break;
		case rm_lose:
	        game_restart();
	        break;
		case rm_title:
	     room_goto(rm_start);
	    break;
		
		case rm_win:
	      game_restart();
	    break;
	    }
	
}

//If player is playing the game and the score is 1000 or bigger take the player to the win screen.
//If the player is playing the game and lives is < 1 then take the player to the lose screen

if room == rm_game_level_1 || room == rm_game_level_2
{
	if score <= 0
    {
       room_goto(rm_lose);
    }
	
// increase step count for timer in this objects draw event
step += 1;
}

