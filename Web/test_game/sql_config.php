<?php
	
	//timezone을 한국표준시로 설정
	date_default_timezone_set('Asia/Seoul');
	
	//경고 문구 없애기
	//error_reporting(E_ALL^ E_WARNING); 
	
	$config = array(
		'host' => 'localhost',
		'database' => '데이터베이스명',
		'username' => '사용자명',
		'password' => '패스워드',
		'table' => '테이블명',
	);
	
?>