/// @description Insert description here
// You can write your code in this editor

obj_border.visible = 0;

//get code below from https://www.youtube.com/watch?v=yeHK86T1NtY

{
	
	var value = 1;
	
	for(var j = 0; j<4; ++j)
	{
	for (var i = 0; i <4; ++i)
	{
		
			if (value !=16)
		{
			
		var ins = instance_create_layer(x + (i * sprite_get_width(spr_tile)),
									y + (j *sprite_get_height(spr_tile)),
									"Puzzle",
									obj_tile)
				ins.value = value;
				++value;
		}
	
}

}
}
