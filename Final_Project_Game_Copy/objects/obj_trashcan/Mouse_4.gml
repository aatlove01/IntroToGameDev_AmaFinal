/// @description Insert description here
// You can write your code in this editor


if !can_see{
	obj_trashcan_zoom.visible = 1; 
	obj_paper_1.visible = 1;
	can_see = true;
	
}else {
	obj_paper_1.visible = 0;
	obj_trashcan_zoom.visible = 0;
	can_see = false;
}
