if (powerup == 2 || !can_take_damage) exit;


explosion_color = make_color_rgb(irandom(255), irandom(255), irandom(255));


	obj_game.player_lives -= 1;

	effect_create_above(ef_firework, x, y, 1, explosion_color);
	
	
	if obj_game.player_lives == 0 {
		audio_play_sound(snd_lose, 2, false)
		instance_destroy();
		obj_game.alarm[0] = 180;
	}
	
	can_take_damage = false;
	alarm[2] = 5 * 60; // run after 1 seconds
	image_blend = c_white;
	image_alpha = 0.4;
