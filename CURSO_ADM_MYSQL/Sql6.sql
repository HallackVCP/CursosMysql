INSERT INTO itens_notas_fiscais2 SELECT * FROM itens_notas_fiscais;

INSERT INTO notas_fiscais2 SELECT * FROM notas_fiscais;

INSERT INTO tabela_de_produtos2 SELECT * FROM tabela_de_produtos;

-- 1322122.80
SELECT A.NOME_DO_PRODUTO, C.QUANTIDADE FROM tabela_de_produtos2 A
INNER JOIN ITENS_NOTAS_FISCAIS2 C ON A.CODIGO_DO_PRODUTO = C.CODIGO_DO_PRODUTO;
