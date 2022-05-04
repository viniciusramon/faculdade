<?php 
$arr1 = array("cidade" => "Vila Velha", "Livro" => "PHP5"); 
$arr2 = array("cidade" => "São Paulo", "Data" => "Janeiro-2004"); 
$arr4 = array(10,15,20); 
$arr5 = array(1,2,3,25,30,35);
$arr3 = $arr1 + $arr2; 
$arr4 += $arr5; 
echo "<pre>"; 
print_r($arr3); 
print_r($arr4); 
echo "</pre>";
?>


