-- 0FN
-- CompraJogos(nomeJogador, idadeJogador, nomeJogo, desenvJogo, 
--   precoSelo, nomeSelo, estiloJogo)
-- 1FN
-- CompraJogos(idJogador*, idJogo*)
-- Jogador(idJogador*, nomeJogador, idadeJogador)
-- Jogo(idJogo*, nomeJogo, desenvJogo, idSelo*, precoSelo, nomeSelo, 
--    idEstilo*, estiloJogo)
-- 2FN
-- CompraJogos(idCompraJogos*, idJogador, idJogo)
-- Jogador(idJogador*, nomeJogador, idadeJogador)
-- Jogo(idJogo*, nomeJogo, desenvJogo, idSelo, idEstilo)
-- Selo(idSelo*, precoSelo, nomeSelo)
-- Estilo(idEstilo, estiloJogo)
-- 3FN
-- CompraJogos(idCompraJogos*, idJogador, idJogo)
-- Jogador(idJogador*, nomeJogador, idadeJogador)
-- Jogo(idJogo*, nomeJogo, desenvJogo, idSelo, idEstilo)
-- Selo(idSelo*, precoSelo, nomeSelo)
-- Estilo(idEstilo, estiloJogo)

CREATE DATABASE lojaJogos;
USE lojaJogos;
-- Jogador(idJogador*, nomeJogador, idadeJogador)
CREATE TABLE jogador(
   idJogador    INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nomeJogador  VARCHAR(50),
   idadeJogador INT);
-- Selo(idSelo*, precoSelo, nomeSelo)
CREATE TABLE selo(
   idSelo    INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   precoSelo FLOAT,
   nomeSelo  VARCHAR(50));
-- Estilo(idEstilo, estiloJogo)
CREATE TABLE estilo(
   idEstilo   INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
   estiloJogo VARCHAR(50));
-- Jogo(idJogo*, nomeJogo, desenvJogo, idSelo, idEstilo)
CREATE TABLE jogo(
   idJogo     INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nomeJogo   VARCHAR(50),
   desenvJogo VARCHAR(50),
   idSelo     INT,
   idEstilo   INT,
   FOREIGN KEY (idSelo)   REFERENCES selo(idSelo),
   FOREIGN KEY (idEstilo) REFERENCES estilo(idEstilo));
-- CompraJogos(idCompraJogos*, idJogador, idJogo)
CREATE TABLE compraJogos(
   idCompraJogos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   idJogador     INT,
   idJogo        INT,
   FOREIGN KEY (idJogador) REFERENCES jogador(idJogador),
   FOREIGN KEY (idJogo)    REFERENCES jogo(idJogo));
INSERT INTO jogador(nomeJogador, idadeJogador)
             VALUES('Luiz',      33),
                   ('João',      17),
                   ('Edilson',   17),
                   ('Wallace',   19),
                   ('Thiago',    23),
                   ('Fernando',  40);
INSERT INTO selo(precoSelo, nomeSelo)
		  VALUES(199      , 'Top'),
                (149      , 'Good'),
                (0        , 'Free'),
                (29       , 'G(old)');
INSERT INTO estilo(estiloJogo)
            VALUES('Survivor'),
                  ('GPS'),
                  ('Infantil');
INSERT INTO jogo(nomeJogo,             desenvJogo, idSelo, idEstilo)
          VALUES('Resident Evil Village', 'Capcom'  , 1,      1),
                ('Resident Evil VI',      'Capcom'  , 2,      1),
                ('Pokemon GO'      ,      'Niantic' , 3,      2),
                ('Jack Bauer'      ,      'Rockstar', 4,      2),
                ('Minions'         ,      'Rockstar', 4,      3),
                ('Onde está Carmen Sandiego?', 'Rockstar', 2, 3);
INSERT INTO compraJogos(IDJogador, IDJogo)
                 VALUES(1        , 1),
                       (1        , 2),
                       (2        , 1),
                       (2        , 3),
                       (2        , 4),
                       (3        , 5),
                       (3        , 6),
                       (4        , 6),
                       (5        , 1),
                       (5        , 3),
                       (5        , 4),
                       (5        , 6),
                       (6        , 3),
                       (6        , 1),
                       (6        , 5);

SELECT *
  FROM jogador;

SELECT *
  FROM jogo;

SELECT *
  FROM selo;

SELECT *
  FROM jogo
       JOIN selo
		 ON jogo.idSelo = selo.idSelo;

SELECT * 
  FROM jogo
	   JOIN estilo
         ON jogo.idEstilo = estilo.idEstilo;

SELECT *
  FROM jogo
       JOIN estilo
         ON jogo.idEstilo = estilo.idEstilo
	   JOIN selo
         ON selo.idSelo   = jogo.idSelo;

SELECT *
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo;
         
SELECT nomeJogador, idadeJogador, nomeJogo, desenvJogo, precoSelo, nomeSelo, estiloJogo
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo;

SELECT nomeJogador  AS Jogador, 
       idadeJogador AS Idade, 
       nomeJogo     AS Jogo, 
       desenvJogo   AS Desenvolvedora, 
       precoSelo    AS Preço, 
       nomeSelo     AS Selo, 
       estiloJogo   AS Estilo
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo;

SELECT nomeJogador  AS Jogador, 
       idadeJogador AS Idade, 
       nomeJogo     AS Jogo, 
       desenvJogo   AS Desenvolvedora, 
       precoSelo    AS Preço, 
       nomeSelo     AS Selo, 
       estiloJogo   AS Estilo
  FROM compraJogos,
       jogo,
       jogador,
       selo,
	   estilo
 WHERE jogo.idJogo       = compraJogos.idJogo
   AND jogador.idJogador = compraJogos.idJogador
   AND selo.idSelo       = jogo.idSelo
   AND estilo.idEstilo   = jogo.idEstilo;

SELECT nomeJogador  AS "Nome do Jogador", 
       idadeJogador AS "Idade do Jogador", 
       nomeJogo     AS "Nome do Jogo", 
       desenvJogo   AS "Desenvolvedora do Jogo", 
       precoSelo    AS "Preço do Selo", 
       nomeSelo     AS "Nome do Selo", 
       estiloJogo   AS "Estilo do Jogo"
  FROM compraJogos,
       jogo,
       jogador,
       selo,
	   estilo
 WHERE jogo.idJogo       = compraJogos.idJogo
   AND jogador.idJogador = compraJogos.idJogador
   AND selo.idSelo       = jogo.idSelo
   AND estilo.idEstilo   = jogo.idEstilo;

SELECT jogador.nomeJogador, jogo.nomeJogo, selo.precoSelo
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 WHERE nomeJogador = 'João';
 
SELECT jogador.nomeJogador, SUM(selo.precoSelo)
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 WHERE nomeJogador            = 'João'
 GROUP BY jogador.nomeJogador;

SELECT jogador.nomeJogador, GROUP_CONCAT(jogo.nomeJogo), SUM(selo.precoSelo)
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 WHERE nomeJogador            = 'João'
 GROUP BY jogador.nomeJogador;
 
SELECT jogo.nomeJogo, COUNT(*)
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 GROUP BY jogo.nomeJogo;

SELECT jogo.nomeJogo, COUNT(jogo.nomeJogo)
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 GROUP BY jogo.nomeJogo;

SELECT jogo.desenvJogo, jogador.NomeJogador, COUNT(*)
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 GROUP BY jogo.desenvJogo, jogador.NomeJogador;

SELECT *
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo;

SELECT estilo.estiloJogo, selo.nomeSelo, COUNT(*) contador
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 GROUP BY estilo.estiloJogo, selo.nomeSelo;

SELECT estilo.estiloJogo, selo.nomeSelo, SUM(selo.precoSelo) somador
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 GROUP BY estilo.estiloJogo, selo.nomeSelo;

SELECT estilo.estiloJogo, selo.nomeSelo, SUM(selo.precoSelo) somador
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 GROUP BY estilo.estiloJogo, selo.nomeSelo
HAVING SUM(selo.precoSelo) > 500;

SELECT estilo.estiloJogo, selo.nomeSelo, SUM(selo.precoSelo) somador
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 GROUP BY estilo.estiloJogo, selo.nomeSelo
 ORDER BY SUM(selo.precoSelo) DESC;

SELECT estilo.estiloJogo, selo.nomeSelo
  FROM compraJogos
       JOIN jogo
		 ON jogo.idJogo       = compraJogos.idJogo
       JOIN jogador
		 ON jogador.idJogador = compraJogos.idJogador
       JOIN selo
         ON selo.idSelo       = jogo.idSelo
       JOIN estilo
         ON estilo.idEstilo   = jogo.idEstilo
 GROUP BY estilo.estiloJogo, selo.nomeSelo
 ORDER BY estilo.estiloJogo ASC, selo.nomeSelo DESC;

SELECT *
  FROM jogador
 WHERE nomeJogador LIKE 'Ed%';

SELECT *
  FROM jogador
 WHERE nomeJogador LIKE '%a%';

SELECT *
  FROM jogador
 WHERE nomeJogador LIKE '_u%';

SELECT *
  FROM jogador
 WHERE nomeJogador LIKE 'Fernand_';

SELECT *
  FROM jogador
 WHERE nomeJogador LIKE 'Fernand_ da Silv_';

SELECT *
  FROM jogador
 WHERE nomeJogador LIKE 'Fernand_ %Silva';

SELECT *
  FROM jogo
       JOIN selo
         ON jogo.idSelo = selo.idSelo
 WHERE selo.precoSelo >= 100 
   AND selo.precoSelo <= 200;
	
SELECT *
  FROM jogo
       JOIN selo
         ON jogo.idSelo = selo.idSelo
 WHERE selo.precoSelo BETWEEN 100 AND 200;

UPDATE selo
   SET precoSelo = 159
 WHERE nomeSelo = 'Good';

DELETE FROM selo
 WHERE nomeSelo = 'Good';

SELECT *
  FROM selo
 WHERE idSelo IN (SELECT selo.idSelo
				    FROM jogo
					     JOIN selo
					  	   ON jogo.idSelo = selo.idSelo
				   WHERE selo.precoSelo BETWEEN 100 AND 200);

SELECT *
  FROM selo,
       (SELECT selo.idSelo idSelo
		  FROM jogo
			   JOIN selo
			     ON jogo.idSelo = selo.idSelo
	      WHERE selo.precoSelo BETWEEN 100 AND 200
		  GROUP BY selo.idSelo) edilson
 WHERE selo.idSelo = edilson.idSelo;

SELECT desenvJogo
  FROM jogo
       JOIN selo
         ON jogo.idSelo = selo.idSelo
 GROUP BY desenvJogo;

SELECT desenvJogo, COUNT(*)
  FROM jogo
       JOIN selo
         ON jogo.idSelo = selo.idSelo
 GROUP BY desenvJogo;

SELECT desenvJogo
  FROM jogo
       JOIN selo
         ON jogo.idSelo = selo.idSelo