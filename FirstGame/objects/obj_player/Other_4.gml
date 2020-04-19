//take the characters x and y
//when in room, x variable is now character_x and y now is character_y
obj_player.player_x = obj_player.xstart;//xstart - built in gamemaker variable
obj_player.player_y = obj_player.ystart;

globalvar number_of_lives;
	number_of_lives = 3;


instance_create_layer(0,0, "Text", lives_count);

x = player_x;
y = player_y;





