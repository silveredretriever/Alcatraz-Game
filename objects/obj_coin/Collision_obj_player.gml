instance_destroy();
if (obj_manager.inventory.has("shield", 1)) {
	obj_manager.inventory.remove("shield", 1);
}
effect_create_above(ef_spark, x, y, 1, c_yellow);
audio_play_sound(snd_coin, 0, false);
