// Make sure the system exists
if (VISystemExists(system)) {
	// Draw all objects of the system
	system.Draw(false);
	if (keyboard_check(ord("C"))) system.Draw(true);
	system.Draw(true);
}