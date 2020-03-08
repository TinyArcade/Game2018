/// @description Insert description here
// You can write your code in this editor

if keys>0 {
	with other {
		instance_destroy();
		instance_destroy(message_to_player);
	}
	keys = keys-1;
}



else {
	instance_create_layer(560,125, "Text", message_to_player);
	speed=0;

}



