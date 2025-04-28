/// @desc 
if (place_meeting(x,y,obHead)) {
	audio_play_sound(sPop, 1000, false, 0.5);
	instance_destroy();
}