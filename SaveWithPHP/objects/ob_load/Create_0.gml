/// @descr 버튼 선언

confirm = -1;
http = -1;
load_url = "https://www1.physia.kr/ws/appserver/test_game/load_data.php";  //php 주소
hash_id = sha1_string_utf8(gameval.player_name + gameval.player_birthdate); //고유 id (중복 x)

//버튼 누를 시 실행될 스크립트
btn_func = function() {
	confirm = show_question_async("고유 ID : "+hash_id+"\n\n게임 데이터를 로드하시겠습니까?");
}
