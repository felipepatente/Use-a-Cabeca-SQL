CREATE TABLE tabela_filme(
	id_filme INT IDENTITY(1,1) PRIMARY KEY,
	titulo VARCHAR(50),
	censura INT,
	drama CHAR(1),
	comedia CHAR(1),
	acao CHAR(1),
	horror CHAR(1),
	ficcao CHAR(1),
	infantil CHAR(1),
	desenho CHAR(1),
	data_compra DATE
);

SELECT * FROM tabela_filme;

INSERT INTO tabela_filme VALUES('Monsters, Inc.',0,'F','V','F','F','F','V','V','20020306');
INSERT INTO tabela_filme VALUES('The Godfather',18,'F','F','V','V','F','F','F','20010205');
INSERT INTO tabela_filme VALUES('Gone with the Wind',0,'V','F','F','F','F','F','F','19991120');
INSERT INTO tabela_filme VALUES('American Pie',18,'F','V','F','F','F','F','F','20030419');
INSERT INTO tabela_filme VALUES('Nightmare on Elm Street',18,'F','F','V','V','F','F','F','20030419');
INSERT INTO tabela_filme VALUES('Casablanca',13,'V','F','F','F','F','F','F','20010205');

ALTER TABLE tabela_filme
ADD categoria VARCHAR(50);

UPDATE tabela_filme
SET categoria = 
CASE
	WHEN drama = 'V' THEN 'Drama'
	WHEN comedia = 'V' THEN 'Comédia'
	WHEN acao = 'V' THEN 'Ação'
	WHEN horror = 'V' THEN 'Horror'
	WHEN infantil = 'V' THEN 'Infantil'
	WHEN desenho = 'V' AND censura = 0 THEN 'Familia'
	ELSE 'Diversos'
END; 

INSERT INTO tabela_filme VALUES('Rush no',13,'V','F','F','F','F','F','F','20010205','Valores');


UPDATE tabela_filme
SET categoria =
CASE 
	WHEN categoria = 'Valores' THEN 'Diversos'
END
WHERE titulo = 'Rush no';

ALTER TABLE tabela_filme
DROP COLUMN drama, comedia, acao, horror, ficcao, infantil, desenho;


SELECT categoria, titulo
FROM tabela_filme
ORDER BY categoria;


CREATE TABLE um_caractere(
	charr CHAR(1)
);

INSERT INTO um_caractere VALUES('Q');
INSERT INTO um_caractere VALUES('W');
INSERT INTO um_caractere VALUES('E');
INSERT INTO um_caractere VALUES('R');
INSERT INTO um_caractere VALUES('T');
INSERT INTO um_caractere VALUES('Y');
INSERT INTO um_caractere VALUES('U');
INSERT INTO um_caractere VALUES('I');
INSERT INTO um_caractere VALUES('O');
INSERT INTO um_caractere VALUES('P');
INSERT INTO um_caractere VALUES('A');
INSERT INTO um_caractere VALUES('S');
INSERT INTO um_caractere VALUES('D');
INSERT INTO um_caractere VALUES('F');
INSERT INTO um_caractere VALUES('G');
INSERT INTO um_caractere VALUES('H');
INSERT INTO um_caractere VALUES('J');
INSERT INTO um_caractere VALUES('K');
INSERT INTO um_caractere VALUES('L');
INSERT INTO um_caractere VALUES('Ç');
INSERT INTO um_caractere VALUES('Z');
INSERT INTO um_caractere VALUES('X');
INSERT INTO um_caractere VALUES('C');
INSERT INTO um_caractere VALUES('V');
INSERT INTO um_caractere VALUES('B');
INSERT INTO um_caractere VALUES('N');
INSERT INTO um_caractere VALUES('M');
INSERT INTO um_caractere VALUES('q');
INSERT INTO um_caractere VALUES('w');
INSERT INTO um_caractere VALUES('e');
INSERT INTO um_caractere VALUES('r');
INSERT INTO um_caractere VALUES('t');
INSERT INTO um_caractere VALUES('y');
INSERT INTO um_caractere VALUES('u');
INSERT INTO um_caractere VALUES('i');
INSERT INTO um_caractere VALUES('o');
INSERT INTO um_caractere VALUES('p');
INSERT INTO um_caractere VALUES('a');
INSERT INTO um_caractere VALUES('s');
INSERT INTO um_caractere VALUES('d');
INSERT INTO um_caractere VALUES('f');
INSERT INTO um_caractere VALUES('g');
INSERT INTO um_caractere VALUES('h');
INSERT INTO um_caractere VALUES('j');
INSERT INTO um_caractere VALUES('k');
INSERT INTO um_caractere VALUES('l');
INSERT INTO um_caractere VALUES('ç');
INSERT INTO um_caractere VALUES('z');
INSERT INTO um_caractere VALUES('x');
INSERT INTO um_caractere VALUES('c');
INSERT INTO um_caractere VALUES('v');
INSERT INTO um_caractere VALUES('b');
INSERT INTO um_caractere VALUES('n');
INSERT INTO um_caractere VALUES('m');
INSERT INTO um_caractere VALUES('1');
INSERT INTO um_caractere VALUES('2');
INSERT INTO um_caractere VALUES('3');
INSERT INTO um_caractere VALUES('4');
INSERT INTO um_caractere VALUES('5');
INSERT INTO um_caractere VALUES('6');
INSERT INTO um_caractere VALUES('7');
INSERT INTO um_caractere VALUES('8');
INSERT INTO um_caractere VALUES('9');
INSERT INTO um_caractere VALUES('0');
INSERT INTO um_caractere VALUES('!');
INSERT INTO um_caractere VALUES('@');
INSERT INTO um_caractere VALUES('#');
INSERT INTO um_caractere VALUES('$');
INSERT INTO um_caractere VALUES('%');
INSERT INTO um_caractere VALUES('¨');
INSERT INTO um_caractere VALUES('&');
INSERT INTO um_caractere VALUES('*');
INSERT INTO um_caractere VALUES('(');
INSERT INTO um_caractere VALUES(')');
INSERT INTO um_caractere VALUES('_');
INSERT INTO um_caractere VALUES('-');
INSERT INTO um_caractere VALUES('*');
INSERT INTO um_caractere VALUES('+');
INSERT INTO um_caractere VALUES('/');
INSERT INTO um_caractere VALUES('.');
INSERT INTO um_caractere VALUES(';');
INSERT INTO um_caractere VALUES(':');
INSERT INTO um_caractere VALUES('>');
INSERT INTO um_caractere VALUES('<');
INSERT INTO um_caractere VALUES('"');
INSERT INTO um_caractere VALUES('''');

ALTER TABLE um_caractere
ALTER COLUMN charr CHAR(3);

INSERT INTO um_caractere VALUES(null);
INSERT INTO um_caractere VALUES('A 1');
INSERT INTO um_caractere VALUES('A1');


SELECT charr
FROM um_caractere
ORDER BY charr;


SELECT categoria,titulo, data_compra
FROM tabela_filme
ORDER BY categoria, titulo;


CREATE TABLE venda_biscoito(
	id INT IDENTITY(1,1) PRIMARY KEY,
	primeiro_nome VARCHAR(50),
	venda DECIMAL(5,2),
	data_venda DATE
);


INSERT INTO venda_biscoito VALUES('Lindsay',32.02,'20070306');
INSERT INTO venda_biscoito VALUES('Paris',26.53,'20070306');
INSERT INTO venda_biscoito VALUES('Britney',11.25,'20070306');
INSERT INTO venda_biscoito VALUES('Nicole',18.96,'20070306');
INSERT INTO venda_biscoito VALUES('Lindsay',9.16,'20070307');
INSERT INTO venda_biscoito VALUES('Paris',1.52,'20070307');
INSERT INTO venda_biscoito VALUES('Britney',43.21,'20070307');
INSERT INTO venda_biscoito VALUES('Nicole',8.05,'20070307');
INSERT INTO venda_biscoito VALUES('Paris',17.62,'20070308');
INSERT INTO venda_biscoito VALUES('Britney',24.19,'20070308');
INSERT INTO venda_biscoito VALUES('Lindsay',3.40,'20070308');
INSERT INTO venda_biscoito VALUES('Nicole',15.21,'20070308');
INSERT INTO venda_biscoito VALUES('Paris',0,'20070309');
INSERT INTO venda_biscoito VALUES('Britney',31.99,'20070309');
INSERT INTO venda_biscoito VALUES('Lindsay',2.58,'20070309');
INSERT INTO venda_biscoito VALUES('Nicole',0,'20070309');
INSERT INTO venda_biscoito VALUES('Paris',2.34,'20070310');
INSERT INTO venda_biscoito VALUES('Britney',13.44,'20070310');
INSERT INTO venda_biscoito VALUES('Lindsay',8.78,'20070310');
INSERT INTO venda_biscoito VALUES('Nicole',26.82,'20070310');
INSERT INTO venda_biscoito VALUES('Paris',3.71,'20070311');
INSERT INTO venda_biscoito VALUES('Nicole',0.56,'20070311');
INSERT INTO venda_biscoito VALUES('Lindsay',34.19,'20070311');
INSERT INTO venda_biscoito VALUES('Nicole',7.77,'20070311');
INSERT INTO venda_biscoito VALUES('Paris',16.23,'20070312');
INSERT INTO venda_biscoito VALUES('Nicole',0,'20070312');
INSERT INTO venda_biscoito VALUES('Lindsay',4.50,'20070312');
INSERT INTO venda_biscoito VALUES('Nicole',19.50,'20070312');

SELECT * FROM venda_biscoito;


SELECT primeiro_nome, MAX(venda) AS 'Valor'
FROM venda_biscoito
GROUP BY primeiro_nome
ORDER BY MAX(venda) DESC;


SELECT SUM(venda)
FROM venda_biscoito
WHERE primeiro_nome = 'Nicole';


SELECT primeiro_nome, AVG(venda) AS 'Média'
FROM venda_biscoito
GROUP BY primeiro_nome;


SELECT primeiro_nome, MAX(venda) AS 'Valores'
FROM venda_biscoito
GROUP BY primeiro_nome;


SELECT primeiro_nome, MIN(venda) AS 'Valores'
FROM venda_biscoito
GROUP BY primeiro_nome;


SELECT primeiro_nome, COUNT(*) AS 'Qtd Dias'
FROM venda_biscoito
GROUP BY primeiro_nome
ORDER BY COUNT(*) DESC;

SELECT COUNT(data_venda)
FROM venda_biscoito;





SELECT DISTINCT data_venda
FROM venda_biscoito;

















