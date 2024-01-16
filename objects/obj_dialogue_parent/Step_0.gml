if (showing_dialogue == false) {
	if (dialog.count <= 0) {
		instance_destroy();
		return;
	}
	
	current_dialogue = dialog.pop();
	showing_dialogue = true;
} else {
	if (keyboard_check_released(key_next)) {
		showing_dialogue = false;
		alpha = 0;
	}
}