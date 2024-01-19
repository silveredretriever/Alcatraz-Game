if (showing_dialogue == false) {
	obj_manager.timer_run = false;
	if (dialog.count() <= 0) {
		instance_destroy();
		obj_manager.timer_run = true;
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