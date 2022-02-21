
DELIMITER $$
USE `vendas_sucos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `acha_status_preco_case`(vProduto varchar (50))
BEGIN
	DECLARE vPreco FLOAT;
    DECLARE vMensagem VARCHAR(50);
    SELECT PRECO_LISTA INTO vPreco FROM produtos
    WHERE CODIGO = vProduto;
    CASE
		WHEN vPreco >= 12 THEN SET vMensagem = 'Produto caro';
		WHEN vPreco >= 7 AND vPreco < 12 THEN SET vMensagem = 'Produto em conta';
        WHEN vPreco < 7 THEN SET vMensagem = 'Produto Barato';
    END CASE;
    SELECT vMensagem;
END$$

DELIMITER ;
;
