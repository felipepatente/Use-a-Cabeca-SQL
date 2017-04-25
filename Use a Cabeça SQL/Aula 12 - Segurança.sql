SELECT * FROM palhaco_info;

ALTER TABLE palhaco_info
DROP COLUMN id;

ALTER TABLE palhaco_info
ADD id  INT IDENTITY(1,1)  PRIMARY KEY;

CREATE TABLE atividades(
	id_atividade INT IDENTITY(1,1) PRIMARY KEY,
	atividade VARCHAR(50)
);

CREATE TABLE atividade_info(
	id INT NOT NULL,
	id_atividade INT NOT NULL

	CONSTRAINT atividade_info_palhaco_info FOREIGN KEY (id) REFERENCES palhaco_info (id),
	CONSTRAINT atividade_info_atividades FOREIGN KEY (id_atividade) REFERENCES atividades (id_atividade)
);

CREATE TABLE local(
	id_local INT IDENTITY(1,1) PRIMARY KEY,
	local VARCHAR(50)
);

CREATE TABLE local_info(
	id INT NOT NULL,
	id_local INT NOT NULL,
	quando VARCHAR(50),

	CONSTRAINT local_info_palhaco_info FOREIGN KEY (id) REFERENCES palhaco_info (id),
	CONSTRAINT local_info_local FOREIGN KEY (id_local) REFERENCES local (id_local)
);

INSERT INTO atividades (atividade)
SELECT atividades FROM palhaco_info;

SELECT * FROM atividades;

UPDATE atividades SET atividade = 'balões' WHERE id_atividade = 1;
UPDATE atividades SET atividade = 'cometa' WHERE id_atividade = 3;
UPDATE atividades SET atividade = 'malabarismo' WHERE id_atividade = 7;
UPDATE atividades SET atividade = 'cantar' WHERE id_atividade = 8;

ALTER TABLE palhaco_info
DROP COLUMN atividades;

INSERT INTO local (local)
VALUES ('California'),
	   ('Nova York'),
	   ('São Paulo'),
	   ('Berlin'),
	   ('Roma'),
	   ('Livorpol'),
	   ('Barcelona'),
	   ('Paris'),
	   ('Rio de Janeiro');


INSERT INTO local_info (id, id_local, quando)
SELECT id, id_local, visto_ultimo 
FROM palhaco_info AS p
INNER JOIN local as l
ON l.id_local = p.id;


SELECT * FROM local_info;
SELECT * FROM local;


ALTER TABLE palhaco_info
DROP COLUMN visto_ultimo;






-- SEGURANÇA

CREATE TABLE animais_falantes(
	id_animal INT IDENTITY(1,1) PRIMARY KEY,
    tipo_animal VARCHAR(20),
    canta CHAR(1),
    danca CHAR(1)
    
);

CREATE TABLE tarefas(
	id_tarefa INT IDENTITY(1,1) PRIMARY KEY,
    nome_tarefa VARCHAR(20),
    local VARCHAR(20)
);


INSERT INTO animais_falantes (id_animal,tipo_animal,canta,danca)
VALUES (DEFAULT,'pássaro azul','S','S'),
	   (DEFAULT,'texugo','S','S'),
       (DEFAULT,'texugo','S','S'),
       (DEFAULT,'esquilo','S','S');
       
SELECT * FROM animais_falantes;       

INSERT INTO tarefas (id_tarefa,nome_tarefa,local)
VALUES (DEFAULT,'lavar','cozinha'),
	   (DEFAULT,'costurar','varanda'),
       (DEFAULT,'cozinhar','cozinha'),
       (DEFAULT,'arrumar as camas','quarto');
       
SELECT * FROM tarefas;


CREATE USER Elsie;
-- INDENTIED BY '123456';

GRANT SELECT ON 
tarefas
TO Elsie;
       

REVOKE SELECT ON
tarefas
FROM Elsie;
       
       
CREATE USER feliz;
CREATE USER soneca;

GRANT DELETE ON tarefas
TO feliz, soneca WITH
GRANT OPTION;

REVOKE DELETE ON tarefas
FROM soneca;