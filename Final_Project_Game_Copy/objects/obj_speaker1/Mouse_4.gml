/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left) {
    if collision_point(mouse_x, mouse_y, self, true, false) { //Arguments are (x, y, obj, prec, notme)
       room_goto(rm_2);
    }
}
