explosion_color = make_color_rgb(irandom(255), irandom(255), irandom(255));

if (invincible_timer == 0) {
	

	obj_game.player_lives -= 1;

	effect_create_above(ef_firework, x, y, 1, explosion_color);
	
	invincible_timer = 180;
	
	
	if obj_game.player_lives == 0 {
		instance_destroy();
		obj_game.alarm[0] = 180;
	}
	
}
