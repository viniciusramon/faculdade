-- 1 - Contar quantas consultas um determinado médico fez num período de tempo (passa-se o médico, a data início e data fim e a função retorna 
-- quantas consultas aquele médico fez).

DELIMITER $$
	create function contaConsulta(dataInicio dateTime, dataFim dateTime, crmMedico int) returns integer
		begin
			declare retorno integer;
				select count(*) into retorno
					from consulta
						where dataHora between dataInicio and dataFim and consulta.CRM = crmMedico;
			return retorno;
		end;			
$$

select contaConsulta('2021-08-21', '2021-08-29', 79)
	from dual;
    
-- 2 - Contar quantos médicos atendem num determinado andar (passa-se o andar, a função retorna quantos médicos DISTINTOS atendem naquele andar)

delimiter $$
	create function contaMedicoAndar (numAndar integer) returns int
		begin
			declare numeroMedicos int;
				select count(andar) into numeroMedicos
					from medico
						join ambulatorio
							on medico.numeroA = ambulatorio.numeroA
					where ambulatorio.andar = numAndar;
			return numeroMedicos;
		end;
$$

select andar, contaMedicoAndar(andar)
	from ambulatorio
    group by andar;

select andar
	from medico
		join ambulatorio
			on medico.numeroA = ambulatorio.numeroA

-- 3 - Contar quantos pacientes moram em determinada cidade (passa-se a cidade, a função retorna quantos pacientes moram naquela cidade).

delimiter $$
	create function pacientesCidade(nomeCidade varchar(50)) returns integer
		begin
			declare numeroPacientes integer;
				select count(*) into numeroPacientes
					from paciente
						where cidade = nomeCidade;
			return numeroPacientes;
		end;
$$

select pacientesCidade('Limeira/SP')
	from dual;

-- Dado um range salarial, mostra uma lista de funcionarios
-- que recebam aquele salario

delimiter $$
	create function mostraFuncionario(inferior float, superior float) returns varchar (250)
		begin
			declare retorno varchar(250);
				select group_concat(nome) into retorno
					from funcionario
				where salario between inferior and superior;
            return retorno;
		end;
$$

drop function mostraFuncionario;

select mostraFuncionario(50,250)
	from dual;
    
-- Mostrar a lotação atual de cada ambulatorio

delimiter $$
	create function porcentagemCapacidade(numeroAmb int) returns varchar(10)
		begin
			declare retorno varchar (10);
				select concat (((count(*) / ambulatorio.capacidade) * 100), "%") into retorno
					from ambulatorio
						join medico
							on ambulatorio.numeroA = medico.numeroA
						join consulta
							on medico.crm = consulta.crm
						join (select rg, ultimaConsulta(rg) dataUltima
								from paciente) ultima
							on consulta.rg = ultima.rg and consulta.dataHora = dataUltima
					where ambulatorio.numeroA = numeroAmb
				group by ambulatorio.numeroA, ambulatorio.capacidade;
			return retorno;
		end;
$$

select numeroA, porcentagemCapacidade(numeroA)
	from ambulatorio;

delimiter $$
	create function ultimaConsulta(rgPaciente bigint) returns datetime
		begin
			declare retorno datetime;
				select MAX(dataHora) into retorno
					from consulta
				where rg = rgPaciente;
			return retorno;
		end;
$$

select ultimaConsulta(12345678911)
	from dual;
    
select rg, ultimaconsulta(rg)
	from paciente;
    
delimiter $$
	create function capacidadeBarra(numeroAmb int) returns varchar(10)
		begin
			declare retorno varchar (10);
				select concat(cont, barra, capac) into retorno
					from(	select count(*) cont, "/" barra, ambulatorio.capacidade capac
								from ambulatorio
									join medico
										on ambulatorio.numeroA = medico.numeroA
									join consulta
										on medico.crm = consulta.crm
									join (	select rg, ultimaConsulta(rg) dataUltima
												from paciente) ultima
										on consulta.rg = ultima.rg and consulta.dataHora = dataUltima
								where ambulatorio.numeroA = numeroAmb
					group by ambulatorio.numeroA, ambulatorio.capacidade) qualq;
			return retorno;
		end;
$$

select numeroA, capacidadeBarra(numeroA)
	from ambulatorio;