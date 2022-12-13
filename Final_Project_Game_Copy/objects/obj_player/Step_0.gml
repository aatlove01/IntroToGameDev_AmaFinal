/// @description Insert description here
// You can write your code in this editor

vspd += grav_amt 

if !moving{

#region player movement 1

//if keyboard_check(vk_left){
//	//adds to the right movement of the player
//		x -= 5
//		//makes the speed of the sprite go to 100% out of the full 3fps
//		image_speed = 1
//		//flips the sprite to make it look like it's going right
//		image_xscale = -1
//		sprite_index = spr_girl_run ;
		
//}else {
//	sprite_index = spr_girl_idle ;
//}

//if keyboard_check(vk_right){
//	//adds to the right movement of the player
//		x += 5
//		//makes the speed of the sprite go to 100% out of the full 3fps
//		image_speed = 1
//		//flips the sprite to make it look like it's going right
//		image_xscale = 1;
//		sprite_index = spr_girl_run ;
//}


#endregion

#region player movement 2

if keyboard_check(ord("A")){							// if pressing A..
    if (hspd > -hspd_max){
		hspd -= accel	                                //accelerate if not at max speed left
	} else { 
		hspd = -hspd_max 
	}
    image_xscale = -0.4							//flip the sprite to face left
    if grounded{
        sprite_index= spr_girl_run
    }
}else if keyboard_check(ord("D")){                     //otherwise if D same deal in other direction...
        if (hspd < hspd_max){
			hspd += accel	
		} else {
			hspd = hspd_max
		}
    image_xscale = 0.4									//flip the sprite to face right
    if grounded{										//only change to walking sprite if on the ground
        sprite_index= spr_girl_run
    }
}else{		
	//if not pressing either direction..
    if grounded{
		hspd = lerp(hspd, 0, .05)						//..and on the ground.. slow me
        sprite_index= spr_girl_idle					//..show idle animation!
    }
}



#endregion

#region jumping and falling

if keyboard_check_pressed(vk_space){	// "input caching"
	jump_pressed = true
	alarm[1] = jump_pressed_timer		// saves the key press for some frames
}

if grounded {							// if player is touching the ground or platform
	vspd = 0							// set our jump value to 0 so we don't move
	//audio_stop_sound(sd_jump)
	
}else{	
										// if player is NOT on the ground..
	if just_jumped{
		if keyboard_check(vk_space){	// ..allow player to hold the jump button for increased height
			jump_pressed = false
			vspd = -jump_max
			
		} else {
			just_jumped = false
			alarm[0] = 0
		}
	}
	
	
    }

if jump_pressed
and jumps_spent < num_jump {			//check for jump key only if we have jumps left to use
    jump_pressed = false				// turn off our jump key, because we used it
	vspd = -jump_max					// set our jump value to its max to start the jump
    								      
	if grounded == false{				// if not on the ground..
		jumps_spent += 1				// .. use an air jump
	}
	if jump_hold > 0{
		just_jumped = true
		alarm[0] = jump_hold
	}
		
	grounded=false
	//var s_jump = audio_play_sound(sd_jump,0,false)// we're not on the ground anymore! we jumped!
	//audio_sound_pitch(s_jump,random_range(0.8,1.0))
}

#endregion


#region movement and collisions

MoveCollide() // < - wow, big script!

//are we on the ground?
if(place_meeting(x, y+1, obj_ground)){
	alarm[2] = coyote_time				// while on a platform, hold this timer at maximum
	grounded = true
	jumps_spent = 0
} else {
	//grounded = false
}

}
#endregion