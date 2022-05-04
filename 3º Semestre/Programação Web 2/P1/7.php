<!-- Nome: Vinicius Ramon Da Costa Reis      RA: 0157/12-3       3ºSem TADS

    Avaliação P1

<?php
$nome = $_POST['nome']; 
$sexo = $_POST['sexo']; 
$area = $_POST['area'];

echo "$nome <br> As vagas disponíveis para $area são: <br>";

if($area == "Análise"){
    echo "Analista de Sistema <br> Engenheiro de Software";
}
elseif ($area == "Infra-estrutura"){
    echo "Analista de Redes <br> Coordenador de Equipes";
}
else{
    echo "Programação PHP <br> Programação Python";
}
?>  
