USE sucos;
SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';

SELECT * FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;

SELECT * FROM tbcliente WHERE MONTH(DATA_NASCIMENTO) = 07;

SELECT * FROM tbvendedor WHERE YEAR(DATA_ADMISSAO) >= 2016;