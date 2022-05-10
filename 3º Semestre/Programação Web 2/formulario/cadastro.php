<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário</title>
</head>

<body>
    <?php
    $nome = $_POST['nome'];
    $cpf = $_POST['cpf'];
    $nascimento = $_POST['nascimento'];
    $sexo = $_POST['sexo'];
    $estadoCivil = $_POST['estadoCivil'];
    $renda = $_POST['renda'];
    $endereco = $_POST['endereco'];
    $numero = $_POST['numero'];
    $complemento = $_POST['complemento'];
    $estado = $_POST['estado'];
    $cidade = $_POST['cidade'];
    $cep = $_POST['cep'];
    $bairro = $_POST['bairro'];

    echo "Olá $nome <br>";
    echo "O seu CPF é $cpf <br>";
    echo "Sua data de náscimento é $nascimento <br>";

    switch ($sexo) {
        case "masculino":
            echo "Você é do sexo Masculino <br>";
            break;

        case "feminino":
            echo "Você é do sexo Feminino <br>";
            break;
    }

    switch ($estadoCivil) {
        case "casado":
            echo "Você é Casado(a) <br>";
            break;

        case "solteiro":
            echo "Você é Solteiro(a) <br>";
            break;

        case "noivado":
            echo "Você é Noivo(a) <br>";
            break;

        case "viuvo":
            echo "Você é Viuvo(a) <br>";
            break;

        case "unidaoEstavel":
            echo "Você Possui uma União Estável <br>";
            break;

        case "divorcio":
            echo "Você é Divorciado(a) <br>";
            break;
    }

    echo "A sua renda mensal é de R$: $renda <br>";

    if ($complemento == null) {
        echo "O seu endereço é $endereco,Nº $numero, Bairro: $bairro, CEP: $cep, localizado na cidade de $cidade - $estado <br>";
    } else {
        echo "O seu endereço é $endereco,Nº $numero, $complemento, Bairro: $bairro, CEP: $cep, localizado na cidade de $cidade - $estado <br>";
    }
    ?>


</body>

</html>