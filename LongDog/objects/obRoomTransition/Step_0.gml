if (keyboard_check_pressed(vk_enter)) {
	audio_play_sound(sButton, 1000, false, 0.5);
	room_goto_next();
}