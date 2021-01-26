<?php

include("php/connection.php");

	$result = mysqli_query($conn, 'SELECT `a`.`name`, `a`.`image_url` FROM `deck_list` `a` LEFT JOIN `deck_highlights` `b` ON `a`.`id` = `b`.`deck_id`
									WHERE (CURRENT_DATE() BETWEEN `b`.`time_start` AND `b`.`time_end`)
									OR `b`.`is_default` = 1
									ORDER BY `b`.`time_start` DESC
									LIMIT 6');

	if(!$result){
		die("Hubo un error". mysqli_error($result));
	}

	while ($row = mysqli_fetch_assoc($result)) {
		echo '<div class="deck_wrapper">';
		echo '<section class="deck-display" style="background-image: url('.$row["image_url"].');">';
		echo '<h1>'.$row["name"].'</h1>';
		echo '<h3> Dino no hace mas que chupar muchos pitos en Capilla. Cuenta la leyenda que tiene el record mundial de chupapitos.</h3>';
		echo '</section></div>';
	}

?>