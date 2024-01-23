/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 156B6010
/// @DnDArgument : "code" "// The action below will apply to ALL instances in the room$(13_10)with(all) {$(13_10)	// Set the instance's depth to negative bbox_bottom$(13_10)	// bbox_bottom is the Y coordinate at the bottom edge$(13_10)	// of the instance's mask$(13_10)	// That point is used for depth-sorting these instances$(13_10)	depth = -bbox_bottom;$(13_10)}"
// The action below will apply to ALL instances in the room
with(all) {
	// Set the instance's depth to negative bbox_bottom
	// bbox_bottom is the Y coordinate at the bottom edge
	// of the instance's mask
	// That point is used for depth-sorting these instances
	depth = -bbox_bottom;
}