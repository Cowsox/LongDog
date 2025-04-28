// Make sure the system exists
if (!VISystemExists(system)) exit;

system.Cleanup();
delete system;