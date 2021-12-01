/// @descr 버튼 동작


//버튼으로 동작
image_blend = c_white;
if position_meeting(mouse_x,mouse_y,id)
{
	image_blend = c_ltgray;
	if mouse_check_button_released(mb_left)
	{
		btn_func();
	}
}