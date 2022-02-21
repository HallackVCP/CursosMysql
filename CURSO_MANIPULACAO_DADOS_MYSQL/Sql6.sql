SELECT * FROM vendedores;
SELECT * FROM sucos_vendas.tabela_de_vendedores;

SELECT * FROM vendedores A
INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3);

UPDATE vendedores A INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3)
SET A.FERIAS = B.DE_FERIAS;

UPDATE vendedores A INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3)
SET A.NOME = B.NOME;

UPDATE CLIENTES A 
INNER JOIN VENDEDORES B ON A.BAIRRO = B.BAIRRO
SET A.VOLUME_COMPRA = A.VOLUME_COMPRA * 1.30;

