SELECT * FROM garotos;
SELECT * FROM Brinquedo;


SELECT g.garoto, b.brinquedo
FROM garotos AS g
INNER JOIN Brinquedo AS b
ON g.id_Brinquedo = b.id_Brinquedo;


CREATE VIEW garotos_brinquedos AS
	SELECT g.garoto, b.brinquedo
	FROM garotos AS g
	INNER JOIN Brinquedo AS b
	ON g.id_Brinquedo = b.id_Brinquedo;


SELECT garoto, brinquedo FROM garotos_brinquedos;


BEGIN TRANSACTION
UPDATE garotos SET garoto = 'Figuras' WHERE garoto = 'figurinhas'
SELECT * FROM garotos
ROLLBACK
SELECT * FROM garotos


BEGIN TRANSACTION
UPDATE garotos SET garoto = 'Figuras' WHERE garoto = 'figurinhas'
SELECT * FROM garotos
COMMIT
SELECT * FROM garotos














