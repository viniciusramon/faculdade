<?php
class aluno {
	
	public $ra; //atributo 
	
	public function setRa($r) {
	   $this->ra = $r;
	   echo"Ra: $this->ra";
    }
}
$a = new aluno();//criando um objeto da classe aluno
$a->setRa(12345);
?>

