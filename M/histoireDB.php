<?php
	function fetchFragHistoireStart() {
		require("./M/connectDB.php");
		$query = "SELECT * FROM fragHistoire WHERE debut = true";
		$res = mysqli_query($link, $query);
		$histoire = mysqli_fetch_assoc($res);

		return $histoire;
	}
?>