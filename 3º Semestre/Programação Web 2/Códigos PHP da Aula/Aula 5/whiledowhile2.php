<?php
$acumulador=0;
for($i=0; $i<10; $i++){
	echo "$i"."<br>";
	$acumulador = $acumulador + $i;
	if($i == 8){
		break;
	}
}
echo "Valor acumulado: $acumulador";
?>