CREATE TABLE palhaco_info(
	nome VARCHAR(50),
	Visto_ultimo VARCHAR(50),
	aparecencia VARCHAR(50),
	atividades VARCHAR(50),
);


INSERT INTO palhaco_info VALUES ('Elsie','Centro da Terceira Idade Cherry Hill','F,cabelo vermelho, vestido verde, p�s enormes','bal�es, carrinho');
INSERT INTO palhaco_info VALUES ('Pickles','Festa de Jack Green','M, cabelo laranja, terno azul, p�s enormes','m�mica');
INSERT INTO palhaco_info VALUES ('Snuggles','Mercado de Bolas','F,camiseta amarela, cal�as largas e vermelhas','corneta, guarda-chuva');
INSERT INTO palhaco_info VALUES ('Mr.Hobo','Circo BG','M, charuto, cabelo preto, chap�u comprido','violino');
INSERT INTO palhaco_info VALUES ('Clarabelle','Centro da Terceira Idade Belmont','F,cabelo rosa, flores gigantes, vestido azul','gritar e dan�ar');
INSERT INTO palhaco_info VALUES ('Scooter','Hospital Oakland','M, cabelo azul, terno vermelho, nariz enorme','bal�es');
INSERT INTO palhaco_info VALUES ('Zippo','Shopping Millstone','F,terno laranja, cal�as largas, p�s enormes','dan�ar');
INSERT INTO palhaco_info VALUES ('Babe','Autopecas do Earl','F, toda rosa e brilhosa','malabarismo, carrinho');
INSERT INTO palhaco_info VALUES ('Bonzo',NULL,'M, vestido comprido de bolinhas','cantar, dan�ar');
INSERT INTO palhaco_info VALUES ('Sniffles','Tracy''s','M, terno verde e roxo, nariz pontudo',NULL);

SELECT * FROM palhaco_info; 

DELETE FROM palhaco_info
WHERE atividades = 'dan�ar';

INSERT INTO palhaco_info VALUES ('Clarabelle','Centro da Terceira Idade Belmont','F,cabelo rosa, flores gigantes, vestido azul','dan�ar');


DELETE FROM palhaco_info
WHERE atividades = 'gritar e dan�ar' AND nome = 'Clarabelle';

SELECT * FROM drink_info;

DELETE FROM drink_info
WHERE calorias = 171;

INSERT INTO drink_info VALUES('kiss on the lips',5.5,42.5,'roxo','S',170);

UPDATE drink_info SET cor = 'Dourado'
WHERE cor = 'amarelo';

SELECT * FROM notas_donuts;

UPDATE notas_donuts
SET tipo = 'cobertura'
WHERE tipo = 'cobertura simples';

SELECT * FROM drink_info;

UPDATE drink_info
SET preco = preco + 1
WHERE nome_do_drink = 'Blackthorn';

UPDATE drink_info
SET preco = preco + 1
WHERE
	nome_do_drink = 'Blue Moon'
OR
	nome_do_drink = 'Oh My Gosh'
OR
	nome_do_drink = 'Lime Fizz';
