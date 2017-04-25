CREATE DATABASE greg_list;

CREATE TABLE meus_contatos(
	sobre_nome VARCHAR(30),
	primeiro_nome VARCHAR(20),
	email VARCHAR(50),
	aniversario DATE,
	profissao VARCHAR(50),
	locall VARCHAR(50),
	estado_civil VARCHAR(20),
	interesses VARCHAR(100),
	procura VARCHAR(100)
);

-- Descreve a tabela meus_contatos (igaul ao comando DESCRIBE do MySQL)
SP_HELP meus_contatos;

DROP TABLE meus_contatos;

CREATE TABLE meus_contatos(
	sobre_nome VARCHAR(30) NOT NULL,
	primeiro_nome VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
	sexo CHAR(1) NOT NULL,
	aniversario DATE NOT NULL,
	profissao VARCHAR(50) NOT NULL,
	locall VARCHAR(50) NOT NULL,
	estado_civil VARCHAR(20) NOT NULL,
	interesses VARCHAR(100)NOT NULL,
	procura VARCHAR(100) NOT NULL
);

INSERT INTO meus_contatos
	(sobre_nome,primeiro_nome,email,sexo,aniversario,profissao,locall,estado_civil,interesses,procura)
VALUES
	('Anderson','Jillian','jill_anderson@breakneckpizza.com','F','05/09/1980','Escritora Técnica',
	'Palo Alto - CA','Solteiro','Caiaque e Répteis','Relacionamentos, Amigos');

SELECT * FROM meus_contatos;



