<?php 
if(isset($_POST['submit'])){
    $to = "konvate@hotmail.com"; // this is your Email address
    $from = $_POST['email']; // this is the sender's Email address
    $name = $_POST['name'];
    $message = $name . " "  . " wrote the following:" . "\n\n" . $_POST['mensaje'];
   

    $headers = "From:" . $from;
    $headers2 = "From:" . $to;
    mail($to,$subject,$message,$headers);
    echo "Mensaje enviado. Muchas gracias " . $name . ", Nos estaremos contactando a la brevedad.";
    // You can also use header('Location: thank_you.php'); to redirect to another page.
    }