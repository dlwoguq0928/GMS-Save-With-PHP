/// @descr 게임 데이터 내보내기

var r_str = "null";
if (ds_map_find_value(async_load, "id") == http)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
		r_str = ds_map_find_value(async_load, "result");
		if (r_str == "O.K.")
		{
			show_message_async("게임 데이터가 성공적으로 저장되었습니다!");
		}
		else
		{
			show_message_async("Predicted Error : "+r_str);
		}
    }
	else
	{
		show_message_async("Predicted Error : 요청을 보냈지만 실패 했습니다.");
	}
}