/// @descr 게임 정보 드로우


draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font_16);
draw_text(room_width/2,300,"이름 : "+gameval.player_name);
draw_text(room_width/2,340,"생년월일 : "+gameval.player_birthdate);
draw_text(room_width/2,380,"전재산 : "+string(gameval.money)+"원");
draw_text(room_width/2,420,"잘생김 : "+string(round(gameval.handsome*100))+"%");