/// @description Destroy and respawn character
// You can write your code in this editor

// Destory the instance, will not actually be destroyed until the event completes.
instance_destroy();

score -= 200;

other.visible = true;

with(obj_game_controller)
{
	// Run obj_game_controllers first alarm after 2 seconds, respawns character
	alarm[1] = 2 * room_speed;
}

// Reset Buttons
resetButtons();