speed = 10;
direction = obj_player.image_angle;
image_angle = obj_player.image_angle;

audio_stop_sound(snd_shoot);
audio_play_sound(snd_shoot, 1, false);	
