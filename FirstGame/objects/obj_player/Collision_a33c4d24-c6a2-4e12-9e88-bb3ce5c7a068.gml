/// @description Insert description here
// You can write your code in this editor


//When player touches door/on collision

player_x = other.target_x;//take target x and place on character x
player_y = other.target_y; //take target y and place on character y
//then go to target room
room_goto(other.targetRoom); //Other = from other variable - Door