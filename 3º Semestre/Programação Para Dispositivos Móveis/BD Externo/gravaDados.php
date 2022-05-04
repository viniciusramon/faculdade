<?php


//"mysql:host=ip_server;dbname=nome_bd", user, pwd
$conexao = new PDO("mysql:host=localhost;dbname=DBExterno", "root", "");

//depurador de erros
$conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//variáveis passadas
$id = $_GET["id"];
$nome = $_GET["nome"];
$idade =  $_GET["idade"];
$operacao = $_GET["operacao"];

//Insere dados
if ($operacao == "I") {
    $comandoSQL = $conexao->prepare(
        "INSERT INTO cadastro(nome, idade)" .
            "             VALUES (:nomeP, :idadeP)"
    );

    $comandoSQL->bindValue(":nomeP", $nome);
    $comandoSQL->bindValue(":idadeP", $idade);
}
// atualiza dados
else if ($operacao == "U") {
    $comandoSQL = $conexao->prepare(
        "UPDATE cadastro" .
            " SET nome = :nomeP," .
            "idade = :idadeP" .
            "WHERE id = :idP"
    );

    $comandoSQL->bindValue(":nomeP", $nome);
    $comandoSQL->bindValue(":idadeP", $idade);
    $comandoSQL->bindValue(":idP", $id);
}
// exclui dados
else if ($operacao == "D") {
    $comandoSQL = $conexao->prepare(
        "DELETE FROM cadastro WHERE id = :idP"
    );

    $comandoSQL->bindValue(":idP", $id);
}

$comandoSQL->execute();

?>