<?php 
if(isset($_POST['submit'])){
    $to = "konvate@hotmail.com"; // this is your Email address
    $from = secure_input($_POST['email']); // this is the sender's Email address
    $nombre = secure_input($_POST['nombre']);
	$phone = secure_input($_POST['telefono']);
	$text = secure_input($_POST['mensaje']);
	$subject = "Mail de ". $nombre;
    $message = $nombre . " "  . " escribió lo siguiente:  \n\n" . $text . "\n\n Información de contacto: \n"  . $from . "\n". $telefono;

	mail($to,$subject,$message);
  
    echo "El mensaje fue enviado. Muchas gracias " . $nombre . ", Nos contactaremos a la brevedad.";
}

function secure_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>