/// @description Insert description here
// You can write your code in this editor
{
	
	if (value mod 2 == 0)
	{
		image_blend = c_white;	
	}else
	{
		image_blend = c_red;
	}
	
	
	draw_self();
	draw_set_color(c_yellow);
	draw_rectangle(x,y,x+sprite_width, y+sprite_height, true)
	draw_rectangle(x+1,y+1,x+sprite_width-1, y+sprite_height-1, true)

	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_halign(fa_middle);
	draw_text(x + (sprite_width *0.5),
	y + (sprite_height *0.5),value);
	
}

