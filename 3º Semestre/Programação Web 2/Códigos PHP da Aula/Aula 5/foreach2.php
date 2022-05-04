<?php 
$arr[0][0] = 10; 
$arr[0][1] = 50; 
$arr[1][0] = 12; 
$arr[1][1] = 23; 
$arr[1][3] = 35; 
$arr[2][1] = 10; 
foreach($arr as $chv => $vlr) {
	foreach($vlr as $chv_1 => $vlr_1) { 
		echo "\$arr[$chv][$chv_1] = $vlr_1 <br>";
	}
  }
?>
