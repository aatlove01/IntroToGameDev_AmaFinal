/// @description Insert description here
// You can write your code in this editor

if mouse_x <= 100 {
	
sprite_index = spr_mouse_left;

}
	
if mouse_x >= room_width-100 {
	
sprite_index = spr_mouse_right;

}

if collision_circle(x,y,30,obj_speaker1,false,true){
	image_blend = c_red
}else{
	image_blend = c_blue
}

x = mouse_x
y = mouse_y