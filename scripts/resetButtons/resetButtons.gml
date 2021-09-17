// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resetButtons()
{
	
	with(obj_player)
	{
		with(obj_btn_green)
		{
			other.x = x + 10;
			other.y = y + 10;
		}
	}
	
	with(obj_btn_blue)
	{
		pressed = false;
		image_index = 0;
		image_speed = 0;
	}
	
	with(obj_btn_green)
	{
		pressed = false;
		image_index = 0;
		image_speed = 0;
	}
	
	with(obj_btn_red)
	{
		pressed = false;
		image_index = 0;
		image_speed = 0;
	}
	
	with(obj_btn_yellow)
	{
		pressed = false;
		image_index = 0;
		image_speed = 0;
	}
}