USE sucos_vendas;

SELECT LTRIM('       STRING') AS RESULTADO;
SELECT RTRIM('STRING       ') AS RESULTADO;
SELECT TRIM('       STRING       ') AS RESULTADO;

SELECT CONCAT('OLÁ', 'MUNDO') AS RESULTADO;

SELECT UPPER('olá mundo') AS RESULTADO;

SELECT SUBSTRING('OLÁ, MUNDO', 6) AS RESULTADO;

SELECT SUBSTRING('OLÁ, MUNDO', 6, 3) AS RESULTADO;

SELECT CONCAT(NOME, '(', CPF, ')') AS RESULTADO FROM tabela_de_clientes;

SELECT NOME, CONCAT(ENDERECO_1, ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO) AS COMPLETO
FROM tabela_de_clientes;

