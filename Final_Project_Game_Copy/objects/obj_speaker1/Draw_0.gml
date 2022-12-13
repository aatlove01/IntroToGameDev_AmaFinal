/// @description Insert description here
// You can write your code in this editor

draw_self();


draw_sprite(spr_level_1_text, text_count, text_position_x, text_position_y);

if text_count == text_count_max{
	
text_count = 0;
}

if text_count == 1{
	draw_sprite(spr_level_1_text, 4,text_position_x+30, text_position_y);
}
if text_count == 2{
	draw_sprite(spr_level_1_text, 5, text_position_x+30, txt_pos_y_player);
}

//if text_count == 3{
//	draw_sprite(spr_level_1_text, 5, txt_pos_x_player, txt_pos_y_player);
//}
