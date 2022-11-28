/// @description Insert description here
// You can write your code in this editor

moving = false;   //check if the player is moving (start game still)

// Feel free to change these variables or add your own functionality.
hspd_max = 6		// maximum left/right speed
accel = .1				// left/right movement acceleration
jump_max= 15				// strength of upward force
grav_amt= 1.5       //strength of downward force
jump_hold = .25 * room_speed	// time you can hold for a higher jump
num_jump = 1			// number of jumps before needing to touch ground
jump_pressed_timer = 60	// number of frames to save the "jump" input, aka "input caching"
coyote_time = 3		// number of frames before you fall when stepping off platform

//_____________________________________________________________________

#region Do not change these.
hspd = 0
vspd = 0
grounded=false
just_jumped = false
jumps_spent = 0
jump_pressed = false
x_remainder = 0
y_remainder = 0
image_speed= 1
#endregion