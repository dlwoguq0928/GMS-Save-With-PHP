/// @descr Show Question Async

confirm_accepted(confirm, function() {
	if (hash_id != noone)
	{
		var str = "?game_id="+hash_id;
		str += "&game_data="+json_stringify(gameval);
		http = http_post_string(save_url,str);
		show_message_async("게임 데이터 저장 요청을 보냈습니다!");
	}
	else
	{
		show_message_async("Predicted Error : 고유 ID가 유효하지 않습니다!");
	}
});