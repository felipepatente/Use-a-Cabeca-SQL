SELECT * FROM meus_contatos;
sp_help meus_contatos;

CREATE PROCEDURE inserir 
	@sobre VARCHAR(30), 
	@primeiroNome VARCHAR(20), 
	@email VARCHAR(50), 
	@sexo CHAR(1), 
	@aniversario DATE, 
	@profissao VARCHAR(50), 
	@local VARCHAR(50),
	@estado_civil VARCHAR(20),
	@interesses VARCHAR(100), 
	@procura VARCHAR(100)
AS
BEGIN
	INSERT INTO meus_contatos 
	VALUES
	(@sobre, @primeiroNome,@email,@sexo,@aniversario,@profissao,@local,@estado_civil,@interesses,@procura);
END


EXEC inserir 'Newsome', 'Amanda', 'aman2luv@breakneckpizza.com','F','2010-08-04','Pizziaolo','San Fran, CA','Viuvo','Comida','Namoro';
EXEC inserir 'Garcia', 'Ed', 'ed99@bottomsup.com','M','1980-08-04','Arquiteto','San Mateo, CA','Solteiro','Prédios','Amizades';
EXEC inserir 'Roundtree', 'Jo-Ann', 'jojoround@breakneckpizza.com','F','2016-08-20','Preparador de Massa','San Fran, CA','Casado','Culinaria','Amigos';
EXEC inserir 'Briggs', 'Chris', 'cbriggs@boards-r-us.com','M','2010-01-08','Enfermeiro','Austin, TX','Solteiro','Saude','Namoro';
EXEC inserir 'Harte', 'Lioyd', 'hovercraft@breaknedckpizza.com','M','2010-01-03','Atendente','San Jose, CA','Solteiro','Baladas','Namoro';
EXEC inserir 'Toth', 'Anne', 'Anne_Toth@leapinlimoscom','F','1980-08-04','Empresaria','San Fran, CA','Casada','Animais','Amigos';
EXEC inserir 'Wiley', 'Andrew', 'andrewwiley@objectville.net','M','2012-01-03','Projetista','Princeton, NJ','Solteiro','Filmes/Seriados','Namoro';
EXEC inserir 'Palumbo', 'Tom', 'palofmine@mightyumball.net','M','2010-04-03','Desing de Interiores','San Jose, CA','Solteriro','Roupas','Amigos';


SELECT * FROM meus_contatos
WHERE primeiro_nome = 'Anne';


CREATE TABLE drinks_faceis(
	nome_do_drink VARCHAR(50),
	principal VARCHAR(50),
	quantidade1 DECIMAL(5,1),
	segundo VARCHAR(50),
	quantidade2	DECIMAL(5,2),
	instrucoes VARCHAR(100)
);


CREATE PROCEDURE inserir_drinks_faceis
	@nome_do_drink VARCHAR(50),
	@principal VARCHAR(50),
	@quantidade1 DECIMAL(5,1),
	@segundo VARCHAR(50),
	@quantidade2 DECIMAL(5,2),
	@instrucoes VARCHAR(100)
AS
BEGIN
	INSERT INTO drinks_faceis
	VALUES
	(@nome_do_drink, @principal, @quantidade1, @segundo, @quantidade2, @instrucoes);
END

EXEC inserir_drinks_faceis 'Blackthom', 'água tônica', 1.5,'suco de abacaxi',1,'mexa com gelo, coloque em uma taça de coquetel com limão batido';
EXEC inserir_drinks_faceis 'Blue moon', 'soda', 1.5,'suco de mirtilo',0.75,'mexa com gelo, coloque em uma taça de coquetel com limão batido';
EXEC inserir_drinks_faceis 'Oh My Gosh', 'néctar de pêssego', 1,'suco de abacaxi',1,'mexa com gelo, coloque um copinho de licor';
EXEC inserir_drinks_faceis 'Limie Fizz', 'Sprite', 1.5,'suco de Limão',0.75,'mexa com gelo, coloque em uma taça de coquetel';
EXEC inserir_drinks_faceis 'Kiss on the Lips', 'suco de cereja', 2,'néctar de damasco',7,'sirva com gelo e canudo';
EXEC inserir_drinks_faceis 'Hot Gold', 'néctar de pêssego',3,'suco de laranja',6,'coloque suco de laranja quente em uma caneca e adicione néctar de pêssego';
EXEC inserir_drinks_faceis 'Lone Tree', 'soda', 1.5,'suco de cereja',0.75,'mexa com gelo, coloque em uma taça de coquetel';
EXEC inserir_drinks_faceis 'Greyhound', 'soda', 1.5,'suco de laranja',5,'sirva com gelo, mexa bem';
EXEC inserir_drinks_faceis 'Indian Summer', 'suco de maçã',2,'chá quente',6,'adicionar o suco em uma caneca e completar o resto com chá quente';
EXEC inserir_drinks_faceis 'Bull Frog', 'chá gelado', 1.5,'limonada',5,'sirva com gelo e uma fatia de limão';
EXEC inserir_drinks_faceis 'Soda and it', 'soda', 2,'suco de uva',1,'misture em uma taça de coquetel, sem gelo';

SELECT * FROM drinks_faceis WHERE principal = 'Sprite';
SELECT * FROM drinks_faceis WHERE principal = 'soda';
SELECT * FROM drinks_faceis WHERE quantidade2 = 6;
SELECT * FROM drinks_faceis WHERE segundo = 'suco de laranja';
SELECT * FROM drinks_faceis WHERE quantidade1 = 1.5;
SELECT * FROM drinks_faceis WHERE quantidade2 < '1';
SELECT * FROM drinks_faceis WHERE quantidade1 < '1.5';

-- inserindo valores com aspas
INSERT INTO meus_contatos VALUES ('Funyon','Steve','steve@onionflavoredrings.com','M','1970-04-01','Punk','Grover''S, NJ','Solteiro','esmagar o estado','compatriotas, guitarristas');

-- selecionando valores com aspas
SELECT * FROM meus_contatos WHERE locall = 'Grover''S, NJ';

SELECT nome_do_drink, principal, segundo FROM drinks_faceis WHERE principal = 'soda';

-- 5 maneiras de selecionar o valor 'Kiss on the lips'
SELECT nome_do_drink FROM drinks_faceis WHERE principal = 'suco de cereja';
SELECT nome_do_drink FROM drinks_faceis WHERE segundo = 'néctar de damasco';
SELECT nome_do_drink FROM drinks_faceis WHERE instrucoes = 'Sirva com gelo e canudo';
SELECT nome_do_drink FROM drinks_faceis WHERE quantidade2 = 7;
SELECT nome_do_drink FROM drinks_faceis WHERE nome_do_drink = 'Kiss on the lips';


-- 3 maneiras de selecionar o valor 'Bull Frog'
SELECT nome_do_drink FROM drinks_faceis WHERE principal = 'chá gelado';
SELECT nome_do_drink FROM drinks_faceis WHERE segundo = 'limonada';
SELECT nome_do_drink FROM drinks_faceis WHERE instrucoes = 'sirva com gelo e uma fatia de limão';

CREATE TABLE notas_donuts(
	empresa VARCHAR(50),
	hora VARCHAR(10),
	data DATE,
	tipo VARCHAR(50),
	notas INT,
	comentarios VARCHAR(50)
);

INSERT INTO notas_donuts 
VALUES ('Starbuzz Coffe','07:43','2010-04-23','cobertura de canela',6,'muito condimento');

INSERT INTO notas_donuts 
VALUES ('Ducan''s Donuts','08:56','2010-04-25','cobertura simples',5,'gorduroso');

INSERT INTO notas_donuts 
VALUES ('Ducan''s Donuts','19:58','2010-04-24','geléia',6,'não são fresquinhos, mas são gostosos');

INSERT INTO notas_donuts 
VALUES ('Starbuzz Coffee','22:35','2010-04-23','cobertura simples',7,'morno, não quente');

INSERT INTO notas_donuts 
VALUES ('Krispy King','21:39','2010-09-26','geléia',6,'sem geléia suficiente');

INSERT INTO notas_donuts 
VALUES ('Starbuzz Coffee','7:48','2010-04-23','chocolate com castanhas',10,'marshomallows!');

INSERT INTO notas_donuts 
VALUES ('Krispy King','8:56','2010-11-25','cobertura simples',8,'cobertura de xarope');

SELECT empresa, tipo FROM notas_donuts WHERE notas = 10;
SELECT empresa FROM notas_donuts WHERE tipo = 'cobertura simples' AND notas = 10;

SELECT nome_do_drink
FROM drinks_faceis
WHERE principal = 'soda' AND quantidade1 > 1;

CREATE TABLE drink_info(
	nome_do_drink VARCHAR(50),
	preco decimal(3,1),
	carboidratos DECIMAL(5,1),
	cor VARCHAR(20),
	gelo CHAR(1),
	calorias INT
);

INSERT INTO drink_info  VALUES ('Blackthorn', 3, 8.4, 'amarelo','S',33);
INSERT INTO drink_info  VALUES ('Blue Moon', 2.5, 3.2, 'azul','S',12);
INSERT INTO drink_info  VALUES ('Oh My Gosh', 3.5, 8.6, 'laranja','S',35);
INSERT INTO drink_info  VALUES ('Lime Fizz', 2.5, 5.4, 'verde','S',24);
INSERT INTO drink_info  VALUES ('Kiss on the lips', 5.5, 42.5, 'roxo','S',171);
INSERT INTO drink_info  VALUES ('Hot Gold', 3.2, 32.1, 'laranja','N',135);
INSERT INTO drink_info  VALUES ('Lone Tree', 3.6, 4.2, 'vermelho','S',17);
INSERT INTO drink_info  VALUES ('Greyhound', 4, 14, 'amarelo','S',50);
INSERT INTO drink_info  VALUES ('Indian Summer', 2.8, 7.2, 'marrom','N',30);
INSERT INTO drink_info  VALUES ('Soda and it', 3.8, 4.7, 'vermelho','N',19);

INSERT INTO drink_info(nome_do_drink,carboidratos,gelo,calorias) 
VALUES ('Holiday', 14, 'S',50);

INSERT INTO drink_info(nome_do_drink,preco,carboidratos,cor,gelo)  
VALUES ('Dragon Breath', 2.9, 7.2, 'marrom','N');

SELECT nome_do_drink FROM drink_info WHERE nome_do_drink >= 'L' AND nome_do_drink < 'M';

SELECT nome_do_drink FROM drinks_faceis WHERE principal = 'suco de cereija' OR segundo = 'suco de abacaxi';

SELECT * FROM drink_info WHERE preco IS NULL;

SELECT calorias FROM drink_info WHERE nome_do_drink = 'Dragon Breath';

SELECT * FROM meus_contatos
WHERE locall LIKE '%CA';

-- Faz o contrario do codigo de cima
SELECT * FROM meus_contatos
WHERE locall NOT LIKE '%CA';

SELECT primeiro_nome FROM meus_contatos
WHERE primeiro_nome LIKE '_om';

-- Faz o contrario do codigo de cima
SELECT primeiro_nome FROM meus_contatos
WHERE primeiro_nome NOT LIKE '_om';

SELECT nome_do_drink
FROM drink_info
WHERE
calorias >= 30 AND calorias <= 60;


-- mesa coisa que o de cima
SELECT nome_do_drink
FROM drink_info
WHERE
calorias BETWEEN 30 AND 60;

-- É o contrario do de cima
SELECT nome_do_drink
FROM drink_info
WHERE
calorias NOT BETWEEN 30 AND 60;


CREATE TABLE livro_negro(
	nome_par VARCHAR(50),
	avaliacao VARCHAR(50)
);

INSERT INTO livro_negro VALUES ('Alex','Inovador');
INSERT INTO livro_negro VALUES ('James','chato');
INSERT INTO livro_negro VALUES ('Ian','fabuloso');
INSERT INTO livro_negro VALUES ('Boris','oh-oh');
INSERT INTO livro_negro VALUES ('Melvin','plebeu');
INSERT INTO livro_negro VALUES ('Eric','patético');
INSERT INTO livro_negro VALUES ('Anthony','prazeroso');
INSERT INTO livro_negro VALUES ('Sammy','muito bom');
INSERT INTO livro_negro VALUES ('Ivan','deplorável');
INSERT INTO livro_negro VALUES ('Vic','ridículo');


SELECT nome_par
FROM livro_negro
WHERE avaliacao = 'inovador' OR avaliacao = 'fabuloso' OR avaliacao = 'prazeroso' OR avaliacao = 'muito bom';

-- Mesma coisa que o codigo de cima
SELECT nome_par
FROM livro_negro
WHERE avaliacao IN ('inovador','fabuloso','prazeroso', 'muito bom');

-- É o oposto do codigo de cima
SELECT nome_par
FROM livro_negro
WHERE avaliacao NOT IN ('inovador','fabuloso','prazeroso', 'muito bom');

