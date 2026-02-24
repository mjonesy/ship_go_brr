if (powerup == 2) exit;

explosion_color = make_color_rgb(irandom(255), irandom(255), irandom(255));

//if (invincible_timer == 0) {
	

	obj_game.player_lives -= 1;

	effect_create_above(ef_firework, x, y, 1, explosion_color);
	
	//invincible_timer = 180;
	
	
	if obj_game.player_lives == 0 {
		audio_play_sound(snd_lose, 2, false)
		instance_destroy();
		obj_game.alarm[0] = 180;
	}
	
//}
