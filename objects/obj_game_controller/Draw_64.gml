/// @description Insert description here
// You can write your code in this editor
/// @description Draw title screen
// You can write your code in this editor

switch (room)
{
case rm_game_level_1:
   
    draw_text(5, 6, "SCORE: " + string(score)  + " Level 1"  );
	// fa_left means set horizontal alignment to top left corner, this is a constant, highlight it and
	// hit f1 to see other alignment constants.
	draw_set_halign(fa_left);
	
	draw_text(5, 23, "Time Before Game Begins: " + string(elapsed_seconds));
	// fa_left means set horizontal alignment to top left corner, this is a constant, highlight it and
	// hit f1 to see other alignment constants.
	draw_set_halign(fa_left);
    break;
	
case rm_game_level_2:
   
	draw_text(5, 6, "SCORE: " + string(score) + " Level 2" );
	// fa_left means set horizontal alignment to top left corner, this is a constant, highlight it and
	// hit f1 to see other alignment constants.
	draw_set_halign(fa_left);
	
	draw_text(5, 23, "Time Before Game Begins: " + string(elapsed_seconds));
	// fa_left means set horizontal alignment to top left corner, this is a constant, highlight it and
	// hit f1 to see other alignment constants.
	draw_set_halign(fa_left);
	break;
	
case rm_start:
    var c = c_yellow;
	draw_text_transformed_colour(room_width / 2, 100, "Danger Walk", 3, 3, 0, c, c, c, c, 1);
draw_text(room_width / 2, 200, 
@"
UP ARROW: move up
DOWN ARROW: move down
LEFT/RIGHT ARROWS: change direction

Follow the lit up path to the door
without touching any other tile.
Remember what colors appear beneath your player!
Once you make it to the other side of the endless
pit walk over the colored buttons
in the order in which you saw the colored tiles.
Touching a non lit up tile will cause you to lose 50 
points! If you lose all of your
points its game over!

>>PRESS ENTER TO START<<");
	draw_set_halign(fa_center);
	
    break;
	
	case rm_title:
    var c = c_yellow;
draw_text(289, 614, 
@"
>>PRESS ENTER TO START<<");
	draw_set_halign(fa_center);
	
    break;

case rm_lose:
    
    draw_set_halign(fa_center);
    var c = c_lime;
    draw_text(room_width / 2, 510, "PRESS ENTER TO RESTART");
    draw_set_halign(fa_left);
    break; 
case rm_win:
    
	draw_set_halign(fa_center);
	var c = c_lime;
	draw_text(113, 727, "PRESS ENTER TO RESTART");
	draw_set_halign(fa_left);
	break;
}

// Make count down timer till game begins, stop counting down once timer == 0
if( step == 60 && elapsed_seconds > 0)
{
	elapsed_seconds -= 1;
	step = 0;
}