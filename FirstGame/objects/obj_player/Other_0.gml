/// @description Insert description here
// You can write your code in this editor

//instance_destroy();
//room_restart();

show_debug_message(room);
if (room == 1){
	show_debug_message("Made it here");
	instance_create_layer(230,530, "Text", hint);
	number_of_lives -= 1;
}




outside_of_room = 1;
show_debug_message("outside_of_room is now 1");

