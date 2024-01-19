speed = 0;
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;

if hearts == 0 {
	instance_change(obj_player_defeated, true);
}