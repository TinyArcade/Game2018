<<<<<<< HEAD

//https://www.youtube.com/watch?v=izNXbMdu348 - starts to speak specifically about
//movememt at 12:30

   //Movement code

   //Get Player Input
key_left = keyboard_check(vk_left); 
key_right = keyboard_check(vk_right);

key_jump = keyboard_check_pressed(vk_space); //_pressed - doesn't check the all frames, only checks that frame, changes from 0 to 1, then back to 0


//Calculate Movement
var move = key_right - key_left; // 1 - right. -1 - left
//var - variable that is temporary for 1 frame
hsp = move * walksp;



//gravity
//https://www.youtube.com/watch?v=izNXbMdu348 - starts to speak specifically about
//vertical collision at 28:58

vsp = vsp + grv;

//jumping
//https://www.youtube.com/watch?v=izNXbMdu348
//29:45

//check if on the floor - only if needing to know check for collision after jumping

//another collision check)
if(place_meeting(x,y+1,floortileobject)) && (key_jump)
{ 
	jumps = jumpsmax;
//vsp = -12;
}

if (key_jump) && (jumps > 0)
{ 
	jumps -= 1;
	vsp = -12
	
}



//Other way to write it

// var xadd = keyboard_check(vk_right) - keyboard_check(vk_left);
// var yadd = keyboard_check(vk_down) - keyboard_check(vk_up);


//Horizontal Collision
//https://www.youtube.com/watch?v=izNXbMdu348 - starts to speak specifically about
//vertical collision at 21:22
if (place_meeting(x+hsp,y,floortileobject))  // (place_meeting) if the place of meeting is the (x+hsp,y,floortileobject))  - the floor object and the current position
//if player is at the position which is defined as the floor object, is there a collision

//if collision 
// if statment -  question that needs to be verified by GMS
//if what is in the parentheses is true, perform what is in the brackets:
{
		//slow the horizontal speed to 0 - but will still leave the character oject 3 pixels from the wall
		//while will continue to get the object as close to the wall without burying character pixels into the wall
	while(!place_meeting(x+sign(hsp),y,floortileobject)) //sign - returns 1 or -1 depending on if the variable is positive or negrative
	{
	//increase 1 coordinate by 1 until collision
	x=x+sign(hsp);
	}

	hsp=0;
}

//else 
// not true, peform after brackets

x = x + hsp; //green variable is built in property - x coordinate


//Vertical Collision
//https://www.youtube.com/watch?v=izNXbMdu348 - starts to speak specifically about
//vertical collision at 27:15
if (place_meeting(x,y+vsp,floortileobject))
{
	while(!place_meeting(x,y+sign(vsp),floortileobject))
	{
		y=y+sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if(place_meeting(x,y,obj_key))
{
keys = keys+1;
}


=======

//https://www.youtube.com/watch?v=izNXbMdu348 - starts to speak specifically about
//movememt at 12:30

   //Movement code

   //Get Player Input
key_left = keyboard_check(vk_left); 
key_right = keyboard_check(vk_right);

key_jump = keyboard_check_pressed(vk_space); //_pressed - doesn't check the all frames, only checks that frame, changes from 0 to 1, then back to 0


//Calculate Movement
var move = key_right - key_left; // 1 - right. -1 - left
//var - variable that is temporary for 1 frame
hsp = move * walksp;



//gravity
//https://www.youtube.com/watch?v=izNXbMdu348 - starts to speak specifically about
//vertical collision at 28:58

vsp = vsp + grv;

//jumping
//https://www.youtube.com/watch?v=izNXbMdu348
//29:45

//check if on the floor - only if needing to know check for collision after jumping

//another collision check)
if(place_meeting(x,y+1,floortileobject)) && (key_jump)
{
vsp = -12;
}




//Other way to write it

// var xadd = keyboard_check(vk_right) - keyboard_check(vk_left);
// var yadd = keyboard_check(vk_down) - keyboard_check(vk_up);


//Horizontal Collision
//https://www.youtube.com/watch?v=izNXbMdu348 - starts to speak specifically about
//vertical collision at 21:22
if (place_meeting(x+hsp,y,floortileobject))  // (place_meeting) if the place of meeting is the (x+hsp,y,floortileobject))  - the floor object and the current position
//if player is at the position which is defined as the floor object, is there a collision

//if collision 
// if statment -  question that needs to be verified by GMS
//if what is in the parentheses is true, perform what is in the brackets:
{
		//slow the horizontal speed to 0 - but will still leave the character oject 3 pixels from the wall
		//while will continue to get the object as close to the wall without burying character pixels into the wall
	while(!place_meeting(x+sign(hsp),y,floortileobject)) //sign - returns 1 or -1 depending on if the variable is positive or negrative
	{
	//increase 1 coordinate by 1 until collision
	x=x+sign(hsp);
	}

	hsp=0;
}

else if (place_meeting(x+hsp,y,obj_door)) 
{
		while(!place_meeting(x+sign(hsp),y,obj_door)) //sign - returns 1 or -1 depending on if the variable is positive or negrative
	{
	//increase 1 coordinate by 1 until collision
	x=x+sign(hsp);
	}

	hsp=0;
}

//else 
// not true, peform after brackets

x = x + hsp; //green variable is built in property - x coordinate


//Vertical Collision
//https://www.youtube.com/watch?v=izNXbMdu348 - starts to speak specifically about
//vertical collision at 27:15
if (place_meeting(x,y+vsp,floortileobject))
{
	while(!place_meeting(x,y+sign(vsp),floortileobject))
	{
		y=y+sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;




>>>>>>> master
