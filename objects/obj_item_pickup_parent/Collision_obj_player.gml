instance_destroy();
audio_play_sound(snd_coin, 0, false);

// Check inventory if it already exists
for (var _iterate = obj_manager.inventory.count(); _iterate > 0; --_iterate) {
	if (name == obj_manager.inventory.get(obj_manager.inventory.count()-_iterate).name) {
		obj_manager.inventory.get(obj_manager.inventory.count()-_iterate).amount += 1;
		return;
	}
}

var _sprite = sprite_index;
obj_manager.inventory.add(name, _sprite, 1);
