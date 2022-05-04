<?php
$num1 = 10;
$num2 = 20;
echo "Atribuição: ".($num1= $num2 + 5)."<br>";
echo "Atribuição por referência: ".($num1 = &$num2)."<br>";
echo "Atribuição e Adição: ".($num1+=5)."<br>";
echo "Atribuição e Subtração: ".($num1-=2)."<br>";
echo "Atribuição e Multiplicação: ".($num1*=10)."<br>";
echo "Atribuição e Divisão: ".($num1/=2)."<br>";
echo "Atribuição e Módulo: ".($num1%=2)."<br>";
?>