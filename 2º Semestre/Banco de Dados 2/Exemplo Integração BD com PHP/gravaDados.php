<?php
   // conexão com o BD MySQL
   //"mysql:host=ip_server;dbname=nome_bd", user, pwd
   $conexao = new PDO("mysql:host=127.0.0.1;dbname=DBExterno", "root", "");
   
   // ativar o depurador de erros
   $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   
   // variáveis que serão enviadas do app android para salvar na base
   //   de dados
   $id       = $_GET["id"];
   $nome     = $_GET["nome"];
   $idade    = $_GET["idade"];
   $operacao = $_GET["operacao"];
   
   if($operacao == "I"){
      $comandoSQL =  $conexao->prepare(
         "INSERT INTO cadastro(nome       , idade)" .
         "              VALUES('".$nome."', ".$idade.");");
      // EXEMPLO DE COMO FICARÁ O INSERT!!!
      // INSERT INTO cadastro(nome     , idade)
      //               VALUES('Barreto', 32);
   }else if($operacao == "U"){
      $comandoSQL = $conexao->prepare(
         "UPDATE cadastro".
         "   SET nome  = '".$nome."',".
         "       idade = ".$idade.
         " WHERE id = ".$id.";");
      // EXEMPLO DE COMO FICARÁ O UPDATE!!!
      // UPDATE cadastro
      //    SET nome  = 'Barreto',
      //        idade = 32
      //  WHERE id = 1;
   }else if($operacao == "D"){
      $comandoSQL = $conexao->prepare(
         "DELETE FROM cadastro WHERE id = ".$id);
      // EXEMPLO DE COMO FICARÁ O DELETE!!!
      // DELETE FROM cadastro WHERE id = 1
   }
   $comandoSQL->execute();
?>