/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04E068C5
/// @DnDArgument : "code" "speed = 0;$(13_10)image_blend = $FFFFFFFF & $ffffff;$(13_10)image_alpha = ($FFFFFFFF >> 24) / $ff;$(13_10)$(13_10)if hearts == 0 {$(13_10)	instance_change(obj_player_defeated, true);$(13_10)}"
speed = 0;
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;

if hearts == 0 {
	instance_change(obj_player_defeated, true);
}