<?php 
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $to = "konvatecg@hotmail.com"; // this is your Email address
    $from = secure_input($_POST['email']); // this is the sender's Email address
    $nombre = secure_input($_POST['nombre']);
	$phone = secure_input($_POST['telefono']);
	$text = secure_input($_POST['mensaje']);
	$subject = "Mail de ". $nombre;
    $message = $nombre . " "  . " escribió lo siguiente:  \n\n" . $text . "\n\n Información de contacto: \n"  . $from . "\n". $phone;

	$res = mail($to,$subject,$message);
		
	if($res){
		echo "El mensaje fue enviado. Muchas gracias " . $nombre . ", Nos contactaremos a la brevedad.";
	}
	else{
		echo "El mensaje no fue enviado";
	}
}

function secure_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>