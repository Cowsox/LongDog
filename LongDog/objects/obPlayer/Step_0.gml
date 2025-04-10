// Left and Right Movement
if(keyboard_check(vk_left)) {
	physics_apply_force(x, y, -x_force, 0)
}
if(keyboard_check(vk_right)) {
	physics_apply_force(x, y, x_force, 0)
}

// Try to jump
if(keyboard_check_pressed(vk_up) and jump_buffer_count >= jump_buffer) {
	jump_buffer_count = 0;
}
// Jump buffer increment
if(jump_buffer_count < jump_buffer) {
	jump_buffer_count++
}
// On Ground
if(place_meeting(x, y + 10, obWall) and jump_buffer_count < jump_buffer) {
	// Jump!
	physics_apply_impulse(x, y, 0, -y_force);
}

// Clamp max x speed
phy_speed_x = clamp(phy_speed_x, -max_x_speed, max_x_speed);
