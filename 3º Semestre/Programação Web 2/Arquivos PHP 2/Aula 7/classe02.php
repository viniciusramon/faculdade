<?php

//classe pai ou mãe (superclasse)
class aluno{
	protected $ra;
	public function setRa($r){
		$this->ra = $r;
		echo "Ra: $this->ra";
	}
}

//classe graduacao filha de aluno  
class graduacao extends aluno{
	protected $tcc;
	public function setTcc($t){
		$this->tcc = $t;
		echo "TCC: $this->tcc";
	}
}

//$a é um objeto da classe aluno
$a = new aluno();
$a->setRa(123456);
//$g é um objeto da classe graduacao
$g = new graduacao();
$g->setRa(223456);
$g->setTcc("Estudo das Tecnologias para Web");
?>


