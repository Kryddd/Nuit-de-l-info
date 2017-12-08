<?php
	
	function loadHistoire() {
		require("./M/histoireDB.php");
		if(!isset($_SESSION['histCommence'])) {
			$fragHistoire = fetchFragHistoireStart();
			$_SESSION['histCommence'] = 1;
			$choixSuivants = fetchChoix($fragHistoire['idFragHist']);
		}
		else {

			$fragHistoire = fetchFragHistoire();
		}

		$fragHistoire = fetchFragHistoire($);
		
	}
?>