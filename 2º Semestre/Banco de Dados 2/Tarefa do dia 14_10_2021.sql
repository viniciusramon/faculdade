/* 

Nome: Vinicius Ramon Da Costa Reis RA: 0157/12-3

*/

-- 1 - Contar quantas consultas um determinado médico fez num período de tempo (passa-se o médico, a data início e data fim e a função retorna 
-- quantas consultas aquele médico fez).

DELIMITER $$
	create function dados(medico varchar(50), dataInicio datetime, dataFim datetime) returns int
		begin
			declare retorno int;
				select count(medico.nome) into retorno
					from medico
						inner join consulta 
							on consulta.crm = medico.crm
				where dataHora between dataInicio and dataFim and medico.nome = medico;
		return retorno;
	end;
$$

select dados("Jack Jones", "2021-08-26 21:14:00", "2021-08-26 21:18:00")
	from consulta
		inner join medico 
			on consulta.crm = medico.crm
	group by dados("Jack Jones", "2021-08-26 21:14:00", "2021-08-26 21:18:00")

-- 2 - Contar quantos médicos atendem num determinado andar (passa-se o andar, a função retorna quantos médicos DISTINTOS atendem naquele andar)

DELIMITER $$
	create function medicoAndar(andar int) returns int
		begin
			declare retorno int;
				select count(medico.nome) into retorno
					from medico
						inner join ambulatorio 
							on ambulatorio.numeroA = medico.numeroA
				where ambulatorio.numeroA = andar;
		return retorno;
	end;
$$

select medicoAndar(2) as qtde 
	from medico
		inner join ambulatorio 
			on ambulatorio.numeroA = medico.numeroA
	group by qtde

-- 3 - Contar quantos pacientes moram em determinada cidade (passa-se a cidade, a função retorna quantos pacientes moram naquela cidade).
DELIMITER $$
	create function pacienteCidade(cidade varchar(50)) returns int
		begin
			declare retorno int;
				select count(paciente.nome) into retorno 
					from paciente
				where paciente.cidade = cidade;
		return retorno;
	end;
$$

select pacienteCidade("Limeira/SP") as qtde
from paciente
group by qtde