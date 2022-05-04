<?php

//"mysql:host=ip_server;dbname=nome_bd", user, pwd
$conexao = new PDO("mysql:host=localhost;dbname=DBExterno", "root", "");

//depurador de erros
$conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//pega cada linha da tabela e vai adicionando no array
$comandoSQL = $conexao->query("SELECT * FROM cadastro");

// enquanto tiver valores dentro do array ele fica dentro do laço, quando acabar as inhas da tabela ele sai do while
$arrayDados = array();
while ($linha = $comandoSQL->fetch()) {
    $arrayDados[] = $linha;
}

$arrayJSON = json_encode($arrayDados, JSON_UNESCAPED_SLASHES || JSON_UNESCAPED_UNICODE);

print $arrayJSON;

?>
