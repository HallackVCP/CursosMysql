USE vendas_sucos;

START TRANSACTION;
SELECT * FROM vendedores;

UPDATE vendedores SET COMISSAO = COMISSAO * 1.15;

ROLLBACK;

COMMIT;


START TRANSACTION;

INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
('99999',
'JOAO DA SILVA',
'ICARAI',
0.08,
'2012-01-15',
0);
SELECT * FROM vendedores;

UPDATE vendedores SET COMISSAO = COMISSAO * 1.15;

INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
('99998',
'JOAO DA SILVA2',
'ICARAI',
0.08,
'2012-01-15',
0);

ROLLBACK;
COMMIT;

