-- 3.35
SELECT A.NOME_DO_PRODUTO FROM tabela_de_produtos A;

-- 53722.96
SELECT A.NOME_DO_PRODUTO, C.QUANTIDADE FROM tabela_de_produtos A INNER JOIN ITENS_NOTAS_FISCAIS C ON A.CODIGO_DO_PRODUTO = C.CODIGO_DO_PRODUTO;

-- 210201.25
SELECT A.NOME_DO_PRODUTO,YEAR(B.DATA_VENDA) AS ANO, C.QUANTIDADE FROM tabela_de_produtos A INNER JOIN ITENS_NOTAS_FISCAIS C ON A.CODIGO_DO_PRODUTO = C.CODIGO_DO_PRODUTO INNER JOIN notas_fiscais B ON C.NUMERO = B.NUMERO;
-- 210201.25
SELECT A.NOME_DO_PRODUTO,YEAR(B.DATA_VENDA) AS ANO, SUM(C.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos A INNER JOIN ITENS_NOTAS_FISCAIS C ON A.CODIGO_DO_PRODUTO = C.CODIGO_DO_PRODUTO INNER JOIN notas_fiscais B ON C.NUMERO = B.NUMERO GROUP BY  A.NOME_DO_PRODUTO,YEAR(B.DATA_VENDA) ORDER BY  A.NOME_DO_PRODUTO,YEAR(B.DATA_VENDA);