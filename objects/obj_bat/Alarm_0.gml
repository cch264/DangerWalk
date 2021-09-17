/// @description Insert description here
// You can write your code in this editor

if(!move_down)
{
	TweenEasyMove(x, y, x, y - 30, 0, 150, EaseInOutQuad);
	move_down = true;
}
else
{
	TweenEasyMove(x, y, x, y + 30, 0, 150, EaseInOutQuad);
	move_down = false;
}

alarm[0] = 2*room_speed;