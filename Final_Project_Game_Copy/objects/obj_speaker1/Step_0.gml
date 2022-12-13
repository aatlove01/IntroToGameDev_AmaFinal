/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left) {
   if collision_circle(x,y,30,obj_mouse,false,true) { //Arguments are (x, y, obj, prec, notme)
       text_count += 1; 
   }
}

event_inherited();

