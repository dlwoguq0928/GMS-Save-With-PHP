// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function confirm_accepted(confirm,func){
	if (ds_map_find_value(async_load, "id") == confirm)
	{
		if ds_map_find_value(async_load, "status")
		{
			func();
		}
	}
}