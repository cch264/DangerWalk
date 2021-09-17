/// @description Insert description here
// You can write your code in this editor

move_down = true;
TweenEasyMove(x, y, x, y+ 30, 0, 150, EaseInOutQuad);

move_down = false;
alarm[0] = 3 *room_speed;