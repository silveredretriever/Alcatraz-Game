/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("E"))
{
	effect_create_above(ef_spark, x, y, 1, c_yellow);
	obj_player.coins += 50;
	instance_change(obj_chest_open, false);
}
