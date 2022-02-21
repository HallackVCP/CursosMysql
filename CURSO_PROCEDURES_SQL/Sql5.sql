
USE `vendas_sucos`;

;

DELIMITER $$
USE `vendas_sucos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `acha_tipo_sabor_erro`(vProduto varchar(50))
BEGIN
	DECLARE vSabor VARCHAR(50);
    SELECT SABOR INTO vSabor FROM produtos
    WHERE CODIGO = vProduto;
    CASE vSabor
		WHEN 'Lima/Limão' THEN SELECT 'Cítrico';
		WHEN 'Morango/Limão' THEN SELECT 'Cítrico';
		WHEN 'Laranja' THEN SELECT 'Cítrico';
        WHEN 'Uva' THEN SELECT 'Neutro';
        WHEN 'Morango' THEN SELECT 'Neutro';
	
    END CASE;
    
    
END$$

DELIMITER ;
;
