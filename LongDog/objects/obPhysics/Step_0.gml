// Make sure the system exists
if (!VISystemExists(system)) exit;

// Simulate the system
var delta = delta_time / 1000000 * game_get_speed(gamespeed_fps);
system.Simulate(delta);