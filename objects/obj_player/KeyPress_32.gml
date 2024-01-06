if not instance_exists(obj_sword_attack)
{
	sword = instance_create_layer(x,y, "Instances", obj_sword_attack);
	sword.image_xscale = image_xscale;
}