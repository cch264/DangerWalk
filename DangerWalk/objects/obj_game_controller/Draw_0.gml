/// @description Draw title screen
// You can write your code in this editor

switch (room)
{
case rm_game_level_1:
    draw_text(20, 20, "SCORE: " + string(score));
	// fa_left means set horizontal alignment to top left corner, this is a constant, highlight it and
	// hit f1 to see other alignment constants.
	draw_set_halign(fa_left);
	
	draw_text(20, 50, "Time Before Game Begins: " + string(elapsed_seconds));
	// fa_left means set horizontal alignment to top left corner, this is a constant, highlight it and
	// hit f1 to see other alignment constants.
	draw_set_halign(fa_left);

    break;
case rm_start:
    var c = c_yellow;
	draw_text_transformed_colour(room_width / 2, 100, "Danger Walk", 3, 3, 0, c, c, c, c, 1);
draw_text(room_width / 2, 200, 
@"
UP: move
DOWN: move
LEFT/RIGHT: change direction

>>PRESS ENTER TO START<<");
	draw_set_halign(fa_center);
	
    break;

case rm_gameover:
    
    draw_set_halign(fa_center);
    var c = c_lime;
    draw_text_transformed_colour(room_width / 2, 200, "YOU LOST!", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
    draw_set_halign(fa_left);
    break;
}

// Make count down timer till game begins, stop counting down once timer == 0
if( step == 60 && elapsed_seconds > 0)
{
	elapsed_seconds -= 1;
	step = 0;
}