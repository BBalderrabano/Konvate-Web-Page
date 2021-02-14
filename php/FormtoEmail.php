<?php 
ini_set('display_errors', 0);
error_reporting(E_ERROR | E_WARNING | E_PARSE); 

if($_SERVER["REQUEST_METHOD"] == "POST"){
    $to = "konvatecg@hotmail.com"; // this is your Email address
    $from = secure_input($_POST['email']); // this is the sender's Email address
    $nombre = secure_input($_POST['nombre']);
	$phone = secure_input($_POST['telefono']);
	$text = secure_input($_POST['mensaje']);
	$subject = "Mail de ". $nombre;
    $message = $nombre . " "  . " escribió lo siguiente:  \n\n" . $text . "\n\n Información de contacto: \n"  . $from . "\n". $phone;

	$mail_status = mail($to,$subject,$message);
	
	if($mail_status){
		$text = "El mensaje fue enviado. Muchas gracias " . $nombre . ", Nos contactaremos a la brevedad.";
	}
	else{
		$text = "El mensaje no fue enviado, inténtelo nuevamente";
	}
	
	$response = array('mail_status' => $mail_status, 'text' => $text);
	
	echo json_encode($response);
}

function secure_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>