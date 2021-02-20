<?php
include('connection.php');

if($_SERVER["REQUEST_METHOD"] == "POST"){
	
	if(!isset($_POST["deck_id"]) || is_null($_POST["deck_id"])){
		$result = mysqli_query($conn, 'SELECT * FROM `deck_list`');

		if(!$result){
			die("Hubo un error". mysqli_error($result));
		}
		
		$response = array();
			
		while ($row = mysqli_fetch_assoc($result)) {	
		
			$r = array('deck_name' => $row['name'], 'icon' => $row['icon_url'], 'ab' => $row['ab_amount'], 'def' => $row['def_amount']);
			
			array_push($response, $r);
		}
		
		echo json_encode($response);
	}

}

?>