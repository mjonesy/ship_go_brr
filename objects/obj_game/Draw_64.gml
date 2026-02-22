draw_text(10, 10, "Score: " + string(points));

draw_text(10, 50, "Level: " + string(level));

draw_text(10, 90, "Lives: " + string(player_lives));

//draw_text(10, 90, "Rocks Remaining: " + string(rock_remaining));



if player_lives == 0 {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Game over!\nFinal Score: " + string(points) + "\nAsteroids destroyed: " + string(asteroids_destroyed));

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);	
}