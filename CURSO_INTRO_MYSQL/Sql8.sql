USE sucos;
UPDATE tbvendedor SET PERCENTUAL_COMISSAO = 0.11
WHERE MATRICULA = '00236';
UPDATE tbvendedor SET NOME = 'José Geraldo da Fonseca Junior'
WHERE MATRICULA = '00233';
SELECT * FROM tbvendedor;