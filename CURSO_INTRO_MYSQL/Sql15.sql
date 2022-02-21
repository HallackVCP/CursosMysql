USE sucos;

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro';

SELECT * FROM tbproduto WHERE SABOR = 'Limão';
UPDATE tbproduto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão';
SELECT * FROM tbproduto WHERE SABOR = 'Cítricos';

SELECT * FROM tbvendedor WHERE NOME = 'Cláudia Morais';