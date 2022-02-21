USE sucos_vendas;

SELECT DAYNAME('2000-07-19');
SELECT CURDATE();
SELECT CURRENT_TIME();
SELECT CURRENT_TIMESTAMP();

SELECT YEAR(CURRENT_TIMESTAMP());
SELECT DAY(CURRENT_TIMESTAMP());
SELECT MONTH(CURRENT_TIMESTAMP());
SELECT DAYNAME(CURRENT_TIMESTAMP());
SELECT MONTHNAME(CURRENT_TIMESTAMP());

SELECT DATEDIFF(CURRENT_TIMESTAMP(), '2000-07-19') AS RESULTADO;

SELECT DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO;

SELECT DISTINCT DATA_VENDA,
DAYNAME(DATA_VENDA) AS DIA, MONTHNAME(DATA_VENDA) AS MES, YEAR(DATA_VENDA) AS ANO
 FROM notas_fiscais;
 
SELECT NOME, TIMESTAMPDIFF (YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS    IDADE
FROM  tabela_de_clientes;