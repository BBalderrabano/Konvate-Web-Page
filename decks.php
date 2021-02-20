<?php include("php/connection.php"); ?>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="css/style.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="scripts/main-scripts.js"></script>
		<title>Konvate</title>
		<style>
			.menu-bar{
				position: unset!important;
			}
		</style>
	</head>
	<body>
		<?php include("menu.php") ?>
		<script>
		$( document ).ready(function(){
			
			$(window).bind('scroll', function () {
				if ($(window).scrollTop() > 100) {
					
					$('.anchor-top').fadeIn();
				} else {
					$('.anchor-top').fadeOut();
				}
			});
			
			$.ajax({
				type: 'POST',
				url: 'php/decklist.php',
				dataType: 'json',
				success: 
					function (data) {
						$.each(data, function(d){
							$("#deck-table").html($("#deck-table").html() + "<tr>"+
							
																			"<td><img src='"+data[d].icon+"'>" +
																			"</td>" +
																			
																			"<td>" +
																			data[d].deck_name + 
																			"</td>" +
																			
																			"<td>" +
																			data[d].ab + 
																			"</td>" +
																			
																			"<td>" +
																			data[d].def + 
																			"</td>");
							$("#deck-table").html($("#deck-table").html() + "<tr>"+
							
																			"<td><img src='"+data[d].icon+"'>" +
																			"</td>" +
																			
																			"<td>" +
																			data[d].deck_name + 
																			"</td>" +
																			
																			"<td>" +
																			data[d].ab + 
																			"</td>" +
																			
																			"<td>" +
																			data[d].def + 
																			"</td>");												
							$("#deck-table").html($("#deck-table").html() + "<tr>"+
							
																			"<td><img src='"+data[d].icon+"'>" +
																			"</td>" +
																			
																			"<td>" +
																			data[d].deck_name + 
																			"</td>" +
																			
																			"<td>" +
																			data[d].ab + 
																			"</td>" +
																			
																			"<td>" +
																			data[d].def + 
																			"</td>");											
						});
					}
			});
			
		});
		</script>
		<div id="wrapper">
			<table id="deck-table" class="deck-table">
				<td>
				</td>
				<td>
					Nombre
				</td>
				<td>
					Ataques Basicos
				</td>
				<td>
					Defensas
				</td>
			</table>
		</div>
	</body>
</html>