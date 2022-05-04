-- PGM
delimiter $$  
create function contaPaciente (numAndar int) returns int
	begin
		declare retorno int;
			select count(teste.rg) into retorno
				from (select consulta.rg RG
						from ambulatorio
							join medico
								on medico.numeroA = ambulatorio.numeroA
							join consulta
								on consulta.CRM = medico.crm
					where andar = numAndar
					group by consulta.rg) teste;
		return retorno;
	end;
    $$
    
    select numeroA, contaPaciente (Andar)
		from ambulatorio;