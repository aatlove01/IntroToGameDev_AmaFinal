/// @description Insert description here
// You can write your code in this editor

draw_self();

if text_count == 1{
	draw_sprite(spr_level_1_text, 0,  obj_speaker1.x-10, obj_speaker1.y+10);
	show_debug_message(text_count);
	show_debug_message(mouse_x);
	show_debug_message(mouse_y);
}
if text_count == 2{
	draw_sprite(spr_level_1_text, 1,  obj_speaker1.x-10, obj_speaker1.y+10);
	show_debug_message(text_count);
	show_debug_message(mouse_x);
	show_debug_message(mouse_y);
}
if text_count == 3{
	draw_sprite(spr_level_1_text, 3,   obj_speaker1.x-10, obj_speaker1.y+10);
	show_debug_message(text_count);
	show_debug_message(mouse_x);
	show_debug_message(mouse_y);
	
}

if text_count == 4{
	draw_sprite(spr_level_1_text,4,  obj_speaker1.x-10, obj_speaker1.y+10);
	show_debug_message(text_count);
	show_debug_message(mouse_x);
	show_debug_message(mouse_y);
	
}
if text_count == text_count_max{
	text_count = 0;
}
