/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

{
	
	if (place_empty(x+1, y) == true)
	{
		x += sprite_width;
	}
	else if (place_empty(x-1, y) == true)
	{
		x -= sprite_width;
	}
	else if (place_empty(x, y-1) == true)
	{
		y -= sprite_height;
	}
	else if (place_empty(x, y+1) == true)
	{
		y += sprite_height;
	}
	}



