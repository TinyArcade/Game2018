/// @description Insert description here
// You can write your code in this editor

show_debug_message("Pressing Enter anywhere");

//if (!instance_exists(obj_player))
if (outside_of_room = 1)
   {
	   show_debug_message("outside_of_room = 1");
	
		start_posx = x;
		start_posy = y;
		show_debug_message("Pressing Enter");
		
		obj_player.player_x = obj_player.xstart;//xstart - built in gamemaker variable
		obj_player.player_y = obj_player.ystart;
		x = player_x;
		y = player_y;
		
		instance_destroy(hint);
	

   }
