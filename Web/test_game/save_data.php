<?php
	
	$updated = time();
	$game_id = $_POST['game_id'];
	$game_data = $_POST['game_data'];
	
	include('sql_config.php');
	
	$conn = mysqli_connect($config["host"], $config["username"], $config["password"], $config["database"]);
	$query = "INSERT INTO ".$config["table"]." (game_id, game_data) VALUES ('$game_id', '$game_data')
					ON DUPLICATE KEY UPDATE game_data = '$game_data';";
	$result = mysqli_query($conn, $query);
	
	
	if ($result)
	{
		echo "O.K.";
	}
	else
	{
		echo "The query failed.";
	}
	
?>