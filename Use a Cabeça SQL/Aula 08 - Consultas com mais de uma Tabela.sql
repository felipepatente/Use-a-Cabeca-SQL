
ALTER TABLE meus_contatos
ADD interreses1 VARCHAR(1000);

SELECT * FROM meus_contatos;


CREATE TABLE tabela1(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50),
	sobreNome VARCHAR(50)
);

INSERT INTO tabela1(nome, sobreNome)
VALUES ('Felipe','Patente'),
	   ('Juliana','Silva'),
	   ('Igor','Ramos');

	
SELECT nome, sobrenome
INTO novaTabela
FROM tabela1;

SELECT nome, sobrenome
FROM novaTabela;

CREATE TABLE Brinquedo(
	id_Brinquedo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	brinquedo VARCHAR(50)
);

CREATE TABLE garotos(
	id_garoto INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	garoto VARCHAR(50)
);


INSERT INTO Brinquedo
VALUES('bombolê'), ('planador'), ('soldados'), ('gaita'), ('figurinhas');

INSERT INTO garotos
VALUES('Davey'), ('Bobby'), ('Beaver'), ('Riche');



SELECT b.brinquedo, g.garoto
FROM Brinquedo AS b
CROSS JOIN garotos AS g;

SELECT b.brinquedo, g.garoto
FROM Brinquedo AS b, garotos AS g;



SELECT b.brinquedo, g.garoto
FROM Brinquedo AS b
INNER JOIN garotos AS g
ON b.id_Brinquedo = g.id_garoto;



SELECT b.brinquedo, g.garoto
FROM Brinquedo AS b
CROSS JOIN garotos AS g;


SELECT g1.garoto, g2.garoto 
FROM garotos AS g1
CROSS JOIN garotos AS g2;


SELECT b.brinquedo, g.garoto
FROM Brinquedo AS b
INNER JOIN garotos AS g
ON b.id_Brinquedo <> g.id_garoto;











