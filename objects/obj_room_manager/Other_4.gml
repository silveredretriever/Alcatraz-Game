// Go to target instance
if (instance_exists(targetInstance)) {
	// Create player
	if (!instance_exists(oPlayer)) {
		instance_create_layer(0, 0, "Instances", oPlayer);
	}
	
	// Move player to target
	oPlayer.x = targetInstance.x;
	oPlayer.y = targetInstance.y;
	
	// Clear target
	targetInstance = noone;
}