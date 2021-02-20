
<menu class="menu-bar">

<?php
	include("php/connection.php");

	$result = mysqli_query($conn, 'SELECT * FROM `navigation` ORDER BY `display_order` ASC');

	if(!$result){
		die("Hubo un error". mysqli_error($result));
	}

	while ($row = mysqli_fetch_assoc($result)) {
		echo ('<a href="'.$row["link"].'"><menuitem>'.$row["description"].'</menuitem></a>');
	}
?>

</menu>

<script>
	function goTop(){
		$(document).scrollTop(0);
		$(".anchor-top").css('display', 'none');
	}
</script>

<div onclick="goTop()" class="anchor-top"></div>

