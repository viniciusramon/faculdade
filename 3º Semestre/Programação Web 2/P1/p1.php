<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prova P1</title>
</head>

<body>
    <?php
    $nome = $_POST['nome'];
    $sexo = $_POST['sexo'];
    $area = $_POST['area'];

    echo "$nome <br> As vagas disponíveis para $area são: <br>";

    if ($area == "Análise") {
        echo "Analista de Sistema <br> Engenheiro de Software";
    } elseif ($area == "Infra-estrutura") {
        echo "Analista de Redes <br> Coordenador de Equipes";
    } else {
        echo "Programação PHP <br> Programação Python";
    }
    ?>
</body>

</html>