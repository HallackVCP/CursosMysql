USE vendas_sucos;

SELECT f_numero_aleatorio(15,300);

CREATE TABLE TABELA_ALEATORIOS(NUMERO INT);

call Tabela_Numeros();
SELECT * FROM tabela_aleatorios;

SELECT f_cliente_aleatorio();
SELECT f_produto_aleatorio();
SELECT f_vendedor_aleatorio();

SELECT NUMERO FROM notas;