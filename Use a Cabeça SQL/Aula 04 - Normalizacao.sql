CREATE TABLE peixe_info(
	popular VARCHAR(50),
	especie VARCHAR(50),
	locall VARCHAR(50),
	peso VARCHAR(50)
);

INSERT INTO peixe_info VALUES('rabalo','M. salmoides','Lago Montgomery,GA','22 lb 4 oz');
INSERT INTO peixe_info VALUES('olho de peixe','S.vitreus','Lago Old Hickory, TN','25 lb 0 oz');
INSERT INTO peixe_info VALUES('truta, cultthroat','O.Claki','Lago Pyramid, NV','41 lb 0 oz');
INSERT INTO peixe_info VALUES('perca','P.Flavescens','Bordentown, NJ','4 lb 3 oz');
INSERT INTO peixe_info VALUES('guelas azuis','L.Macrochirus','Lago Ketona,AL','4 lb 12 oz');
INSERT INTO peixe_info VALUES('peixe agulha','L. Osseus','Rio Trinity, TX','50 lb 5 oz');
INSERT INTO peixe_info VALUES('crappie','P.annularis','Represa Enid, MS','5 lb 3 oz');
INSERT INTO peixe_info VALUES('lúcio','E. americanus','Lago Dewart, IN','1 lb 0 oz');
INSERT INTO peixe_info VALUES('peixe dourado','C. auratus','Lago Hodges,CA','6 lb 10 oz');
INSERT INTO peixe_info VALUES('salmao','O. Tshawytscha','Rio Kenai,AK','97 lb 4 oz');

SELECT * FROM peixe_info;


CREATE TABLE peixe_recordes(
	primeiro_nome VARCHAR(50),
	sobrenome VARCHAR(50),
	popular VARCHAR(50),
	locall VARCHAR(50),
	estado VARCHAR(50),
	GA VARCHAR(50),
	peso VARCHAR(50),
	data DATE
);

ALTER TABLE peixe_recordes
DROP COLUMN GA;

SELECT * FROM peixe_recordes;

CREATE PROCEDURE inserirRecordes 
	@primeiro_nome VARCHAR(50),
	@sobrenome VARCHAR(50),
	@popular VARCHAR(50),
	@locall VARCHAR(50),
	@estado VARCHAR(50),
	@peso VARCHAR(50),
	@data DATE

AS
BEGIN
	INSERT INTO peixe_recordes VALUES(
	@primeiro_nome,
	@sobrenome,
	@popular,
	@locall,
	@estado,
	@peso,
	@data
);
END

EXEC inserirRecordes  'George', 'Perry','rabalo','Lago Montgomery','GA','22 lb 4 oz','02-06-1932';
EXEC inserirRecordes  'Mabry', 'Harper','olho de peixe','Lago Old Hickory','TN','25 lb 0 oz','02-08-1960';
EXEC inserirRecordes  'John', 'Skimmerhom','truta, cultthroat','Lago Pyramid','NV','41 lb 0 oz','01-12-1925';
EXEC inserirRecordes  'C.C.', 'Abbot','perca','Bordentown','NJ','4 lb 3 oz','01-05-1865';
EXEC inserirRecordes  'T.S.', 'Hudson','guelras azuis','Lago Ketona','AL','4 lb 12 oz','09-04-1950';
EXEC inserirRecordes  'Townsend', 'Miller','peixe agulha','Rio Trinity','TX','50 lb 5 oz','30-07-1954';
EXEC inserirRecordes  'Fred', 'Bright','crappie','Represa Enid','MS','5 lb 3 oz','31-07-1957';
EXEC inserirRecordes  'Mike', 'Berg','lúcio','Lago Dewart','IN','1 lb 0 oz','09-06-1990';
EXEC inserirRecordes  'Florentino', 'Abena','peixe dourado','Lago Hodges','CA','6 lb 10 oz','17-4-1996';
EXEC inserirRecordes  'Les', 'Anderson','Salmão','Rio Kenai','AK','97 lb 4 oz','17-05-1985';


-- Adicionando uma coluna com chave primaria
ALTER TABLE meus_contatos 
ADD id_contato int IDENTITY(1,1) PRIMARY KEY;

SELECT * FROM meus_contatos;
















