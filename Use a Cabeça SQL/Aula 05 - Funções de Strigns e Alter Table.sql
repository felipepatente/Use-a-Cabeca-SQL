CREATE TABLE lista_de_projeto(
	id_proj INT,
	descricao_proj VARCHAR(50),
	empresa_nome VARCHAR(10)
);

ALTER TABLE lista_de_projeto
DROP COLUMN id_proj

ALTER TABLE lista_de_projeto
ADD id_proj INT PRIMARY KEY IDENTITY(1,1)

SELECT * FROM lista_de_projeto;

ALTER TABLE lista_de_projeto
ADD empresa_fone VARCHAR(10);

ALTER TABLE lista_de_projeto
ADD data_inicio DATE;

ALTER TABLE lista_de_projeto
ADD custo_est DECIMAL(7,2);


ALTER TABLE lista_de_projeto
DROP COLUMN data_inicio;


-- SUBSTRING(sua linha_de_texto, posicao_de_inicio, tamanho) fornece parte da sua linha de texto, iniciando pela letra na posicao_de_inicio.
-- Tamanho é o quanto do texto você quer selecionado.
SELECT SUBSTRING ('San Antonio, TX', 5 ,3);


-- UPPER(sua_linha_de_texto) e LOWER(sua_linha_de_texto) muda tudo na sua string para caixa alta ou baixa, respectivamente
SELECT UPPER('uSa');
SELECT LOWER('spaGHEtti');


-- REVERSE(sua_linha_texto) faz justamente o que diz, ela reverte a ordem de letras na sua linha de texto.
SELECT REVERSE('palmeiras');

-- LTRIM(sua_linha_de_texto) e RTRIM(sua_linha_de_texto) retornam sua string espaços extras removidos de antes (á esquerda) ou (á direita) da string
SELECT LTRIM('     comida de cachorro');
SELECT RTRIM('comida de cachorro');

SELECT * 
FROM meus_contatos;

ALTER TABLE meus_contatos
ADD cidade VARCHAR(50);

ALTER TABLE meus_contatos
ADD estado VARCHAR(3);

-- jogas as duas ultimas letras da coluna 'locall' para a coluna estado. Por exemplo Nova Youk, NY, as letras NY vai ser jogado na coluna estado
UPDATE meus_contatos
SET estado = RIGHT(locall,2);












