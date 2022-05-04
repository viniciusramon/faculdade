<?php
   // conexão com o banco de dados MySQL
   // "mysql:host=ip_servidor;dbname=nome_banco_dados", usuário, senha
   $conexao = new PDO("mysql:host=127.0.0.1;dbname=BDExterno", "root", "");

   // ativar o depurador de erros
   $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   
   // seleção dos dados na tabela cadastro
   $comandoSQL = $conexao->query("SELECT * FROM cadastro;");
   
   // pulo do gato
   $arrayDados = array();
   // ler o meu select e armazenar o resultado num array (arrayDados)
   while($linhaBD = $comandoSQL->fetch()){
      $arrayDados[] = $linhaBD;
   }
   
   // converter o arrayDados em JSon
   $arrayJSON = json_encode($arrayDados, 
                   JSON_UNESCAPED_SLASHES || JSON_UNESCAPED_UNICODE);
   // imprime o array na tela
   print $arrayJSON;
?>