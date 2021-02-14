<?php include("php/connection.php"); ?>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="scripts/main-scripts.js"></script>

	<title>Contáctenos</title>
</head>
<body>
	<?php include("menu.php") ?>
	
	<script>
		$( document ).ready(function(){
			$('#form').on('submit', function(e){
				e.preventDefault();
				
				  $.ajax({
					beforeSend: function(){
						$("#form").find("input").attr('disabled', true);
						$("#form").find("textarea").attr('disabled', true);
						$("#form").find("button").attr('disabled', true);
					},
					type: 'POST',
					url: 'php/FormtoEmail.php',
					data: $('#form').serialize(),
					dataType: 'json',
					success: 
						function (data) {
							
							$("#form").find("input").attr('disabled', data.mail_status);
							$("#form").find("textarea").attr('disabled', data.mail_status);
							$("#form").find("button").attr('disabled', data.mail_status);
							
							$("#message-panel").text(data.text);
						}
				  });
			});
		});
	</script>
	<div class= "ContactBody">
		
		<div class="form-container">
			
			<div class="form-body">
					<div id="message-panel" class="form-block small">
						Envíanos tu consulta, <br>
						nos pondremos en contacto a la brevedad <br>
					</div>
				
					<div class="form-block big">
						<form id="form" method="post" class="contact-form">
							<label>(*) Campos obligatorios</label> <br>
							<input type="text" id="t1" name="nombre" placeholder="Nombre*" required=""><br>
							<input type="email" id="t2" name="email" placeholder="Correo Electrónico*" required=""><br>
							<input type="tel" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" id="t3" name="telefono" title="Formato aceptado: 011-XXXX-XXXX" placeholder="Teléfono"><br>
							<textarea rows="4" cols="50" id="t4" name="mensaje" placeholder="Comentario*" required=""></textarea><br>
							<button type="submit" id="submit" class="submit-button">ENVIAR</button>
						</form>
					</div>
			</div>
		</div>
	</div>
	
</body>
</html>