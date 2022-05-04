<?php
class carro{
	private $marca;
	private $modelo;
	private $cor;
	private $ano;

	//setters são utilizados para atribuir valores aos atributos
	//getters são utilizados para obter/ retornar os valores dos atributos

	public function setMarca($m){
		$this->marca = $m;
	}
	public function setModelo($m){
		$this->modelo = $m;
	}
	public function setCor($c){
		$this->cor = $c;
	}
	public function setAno($a){
		$this->ano = $a;
	}
	public function getMarca(){
		return $this->marca;
	}
	public function getModelo(){
		return $this->modelo;
	}
	public function getCor(){
		return $this->cor;
	}
	public function getAno(){
		return $this->ano;
	}
	public function getCarro(){
		return "Marca ".$this->getMarca()."<br>".
			   "Modelo ".$this->getModelo()."<br>".
			   "Cor ".$this->getCor()."<br>".
			   "Ano ".$this->getAno();
	}
  }
  //instanciando o objeto $c da classe carro
  $c = new carro();
  $c->setMarca("Porsche");
  $c->setModelo("911 Carrera");
  $c->setCor("Vermelho");
  $c->setAno(2011);
  echo $c->getCarro();
?>
