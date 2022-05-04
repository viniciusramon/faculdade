<?php
class pessoas{
	private $tipo;
	protected $nome;
	protected $endereco;
	protected $telefone;

    protected function setTipo($t){
    	$this->tipo = $t;
    }
    public function setNome($n){
    	$this->nome = $n;
    }
    public function setEndereco($e){
    	$this->endereco = $e;
    }
    public function setTelefone($t){
    	$this->telefone = $t;
    }
    public function getTipo(){
    	return $this->tipo;
    }
    public function getNome(){
    	return $this->nome;
    }
    public function getEndereco(){
    	return $this->endereco;
    }
    public function getTelefone(){
    	return $this->telefone;
    }
    public function getDados(){
    	return "Tipo: ".$this->getTipo()."<br>".
			   "Curso: ".$this->getCurso()."<br>".
			   "Nome: ".$this->getNome()."<br>".
			   "Endereco: ".$this->getEndereco()."<br>".
			   "Telefone: ".$this->getTelefone(); 
    }

}

class estudante extends pessoas{
	protected $curso;
	function __construct(){
		parent::setTipo("E");
	}
	
	public function setCurso($c){
		$this->curso = $c;
	}
	public function getCurso(){
		return $this->curso;
	}

}

$e = new estudante();
$e->setNome("João da Silva");
$e->setCurso("ADS");
$e->setEndereco("Rua das Acácias, 55");
$e->setTelefone("34045566");
echo $e->getDados();
?>