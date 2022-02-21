USE vendas_sucos;

call Hello_World;
call mostra_numero;
call sp_com_funcoes;
call exibe_variavel;
call tipos_dados;
call data_hora_local;

DELIMITER $$
CREATE PROCEDURE `Exerc01`()

BEGIN

DECLARE Cliente VARCHAR(10);
DECLARE Idade INT;
DECLARE DataNascimento DATE;
DECLARE Custo FLOAT;

SET Cliente = 'João';
SET Idade = 10;
SET DataNascimento = '20170110';
SET Custo = 10.23;

SELECT Cliente;
SELECT Idade;
SELECT DataNascimento;
SELECT Custo;

END $$
DELIMITER ;