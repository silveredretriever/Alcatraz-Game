if keyboard_check_pressed(ord("E"))
{
	effect_create_above(ef_spark, x, y, 1, c_yellow);
	if (item == "") {
		obj_player.points += chest_value;
	} else {
		obj_manager.inventory.add(item, sprite, chest_value);
	}
	instance_change(obj_chest_open, false);
}
