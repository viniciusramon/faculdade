<?php
$valor = 100; 
if($valor<=15) {
echo "Valor menor que 15";
} 
else if($valor >15 && $valor<=100) {
echo "Valor entre 15 e 100";
} 
else if($valor>100 && $valor<=1000) {
echo "Valor maior que 100 e menor ou igual a 1000";
} else
echo "Valor acima de 1000";
?>
