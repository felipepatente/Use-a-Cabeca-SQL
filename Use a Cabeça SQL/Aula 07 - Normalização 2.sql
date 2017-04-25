SELECT * FROM meus_contatos;


CREATE TABLE interesses (
	id_int INT IDENTITY(1,1) PRIMARY KEY,
	interesse VARCHAR(50) NOT NULL,
	id_contato INT NOT NULL,
	CONSTRAINT meus_contatos_id_contato_fk FOREIGN KEY (id_contato) REFERENCES meus_contatos (id_contato)
);

SELECT * FROM interesses;

