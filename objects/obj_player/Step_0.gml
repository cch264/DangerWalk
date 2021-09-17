/// @description Insert description here
// You can write your code in this editor

// Trigered every step that the left key is held down for


if( has_level_started )
{
	if( keyboard_check( vk_left ) )
	{
		if( !place_meeting(x - 2, y, obj_wall) )
		{
			x -= 2;
		}
		sprite_index = spr_plyr_left_walk;
		sprite_still_direction = spr_plyr_left_still;
	}

	else if(keyboard_check( vk_right ) )
	{
		if( !place_meeting(x + 2, y, obj_wall) )
		{
	      x += 2;
		}
	   sprite_index = spr_plyr_right_walk;
	   sprite_still_direction = spr_plyr_right_still;
	}

	if( keyboard_check( vk_up ) )
	{
		if( !place_meeting(x, y - 2, obj_wall) )
		{
			y -= 2;
		}
	   sprite_index = spr_plyr_rear;
	   sprite_still_direction = spr_plyr_rear_still;
   
	}

	if( keyboard_check(vk_down) )
	{
		if( !place_meeting(x, y + 2, obj_wall) )
		{
			y += 2;
		}
		sprite_index = spr_plyr_forward;
		sprite_still_direction = spr_plyr_forward_still;
	}

	if( keyboard_check( vk_nokey ) )
	{
		sprite_index = sprite_still_direction;
	}
}

	