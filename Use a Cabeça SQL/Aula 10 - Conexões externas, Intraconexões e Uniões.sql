SELECT * FROM garotos;
SELECT * FROM Brinquedo;

SELECT g.garoto, b.brinquedo
FROM garotos AS g
LEFT JOIN Brinquedo AS b
ON G.id_Brinquedo = b.id_Brinquedo;


SELECT g.garoto, b.brinquedo
FROM garotos AS g
RIGHT JOIN Brinquedo AS b
ON G.id_Brinquedo = b.id_Brinquedo;

SELECT * FROM palhaco_info;

ALTER TABLE palhaco_info
ADD id INT;

ALTER TABLE palhaco_info
ADD id_chefe INT;

UPDATE palhaco_info SET id = 1, id_chefe = 3 WHERE nome = 'Elsie';
UPDATE palhaco_info SET id = 2, id_chefe = 5 WHERE nome = 'Pickles';
UPDATE palhaco_info SET id = 3, id_chefe = 10 WHERE nome = 'Snuggles';
UPDATE palhaco_info SET id = 4, id_chefe = 3 WHERE nome = 'Mr.Hobo';
UPDATE palhaco_info SET id = 5, id_chefe = 10 WHERE nome = 'Elsie';
UPDATE palhaco_info SET id = 6, id_chefe = 3 WHERE nome = 'Clarabelle';
UPDATE palhaco_info SET id = 7, id_chefe = 3 WHERE nome = 'Scooter';
UPDATE palhaco_info SET id = 8, id_chefe = 5 WHERE nome = 'Babe';
UPDATE palhaco_info SET id = 9, id_chefe = 5 WHERE nome = 'Bonzo';


-- Auto Relacionamento
SELECT p1.nome, p2.nome AS 'Chefe'
FROM palhaco_info AS p1
INNER JOIN palhaco_info AS p2
ON p1.id_chefe = p2.id;



INSERT INTO garotos(garoto) VALUES ('figurinhas');

-- UION conbina os resultados de todos os SELECT de todas as tabelas
SELECT garoto
FROM garotos
UNION
SELECT brinquedo
FROM Brinquedo;

-- UNION ALL funciona exatamente como o UNION, exceto que eles retornam todos os valores das colunas, ao invés de apenas umaa instância de cada
-- valor que é duplicado.
SELECT garoto
FROM garotos
UNION ALL
SELECT brinquedo
FROM Brinquedo;

-- Os dados devem estar em ambas as tabelas para serem exibidas
SELECT garoto
FROM garotos
INTERSECT
SELECT brinquedo
FROM Brinquedo;

-- Apenas os dados que não estão na tabela espcificada por EXCEPT é que são exibidos.
SELECT garoto
FROM garotos
EXCEPT
SELECT brinquedo
FROM Brinquedo;


