// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function updatePlayerCode(newColor)
{
	with (obj_game_controller)
	{
		if string_pos(newColor, player_code) == 0
		{
			player_code += newColor;
			
			if string_length(player_code) == 4
			{
				if player_code == color_code
				{
					with(obj_door)
					{
						image_index = 1;
						open = true;
					}
				}
			
				else
				{
					resetButtons()
				}
			}
		}
	}
}