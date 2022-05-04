<?php
$valor = 1001;
if($valor<=15){
	echo "Valor menor ou igual a 15";
}
else if($valor>15 && $valor<=100){
	echo "Valor maior que 15 e menor ou igual a 100";
}
else if($valor>100 && $valor<=1000){
	echo "Valor maior que 100 e menor ou igual a 1000";
}
else
	echo"Valor maior de 1000";
?>