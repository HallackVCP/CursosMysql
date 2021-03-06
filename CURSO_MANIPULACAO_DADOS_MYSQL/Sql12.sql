USE vendas_sucos;

SELECT * FROM itens_notas;
SELECT * FROM notas;
SELECT * FROM tab_faturamento;

UPDATE ITENS_NOTAS SET QUANTIDADE = 200
WHERE NUMERO = '0102' AND CODIGO = '1002334';

DELIMITER // 
CREATE TRIGGER TG_CALCULA_FATURAMENTO_UPDATE AFTER UPDATE ON itens_notas
FOR EACH ROW BEGIN
	DELETE FROM TAB_FATURAMENTO;
	INSERT INTO TAB_FATURAMENTO
	SELECT A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO)  AS TOTAL_VENDA FROM NOTAS A 
	INNER JOIN itens_notas B 
	ON A.NUMERO = B.NUMERO
	GROUP BY DATA_VENDA;
END//

DELIMITER // 
CREATE TRIGGER TG_CALCULA_FATURAMENTO_DELETE AFTER DELETE ON itens_notas
FOR EACH ROW BEGIN
	DELETE FROM TAB_FATURAMENTO;
	INSERT INTO TAB_FATURAMENTO
	SELECT A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO)  AS TOTAL_VENDA FROM NOTAS A 
	INNER JOIN itens_notas B 
	ON A.NUMERO = B.NUMERO
	GROUP BY DATA_VENDA;
END//


INSERT INTO notas(NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO)
VALUES('0106', '2019-05-08', '1471156710', '235', 0.10);
INSERT INTO itens_notas(NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES('0106', '1000889', 100, 10);
INSERT INTO itens_notas(NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES('0106', '1002334', 100, 10);

SELECT * FROM TAB_FATURAMENTO;

DELETE FROM ITENS_NOTAS WHERE NUMERO = '0106' AND CODIGO = '1002334';

UPDATE ITENS_NOTAS SET QUANTIDADE = 400
WHERE NUMERO = '0100' AND CODIGO = '1002334'; 
