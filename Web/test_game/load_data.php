<?php
	
	$game_id = $_POST['game_id'];
	
	include('sql_config.php');
	
	$conn = mysqli_connect($config["host"], $config["username"], $config["password"], $config["database"]);
	$query = "SELECT * FROM ".$config["table"]." WHERE game_id = '$game_id';";
	$result = mysqli_query($conn, $query);
	
	if ($result)
	{
		$row = mysqli_fetch_array(mysqli_query($conn, $query));
		echo $row['game_data'];
	}
	else
	{
		echo "The query failed.";
	}
	
?>