/// @description Insert description here
// You can write your code in this editor

//instantiate global variable for the keys obtained in the level
globalvar keys

//if the obj player colides, their placement will become constant to eachother
if(place_meeting(x,y,obj_player))
	{
		x=obj_player.x;
		y=obj_player.y;
		instance_destroy(message_to_player);
		
		keys = 1;
	}
	