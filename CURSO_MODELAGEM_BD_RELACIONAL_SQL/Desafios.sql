SELECT tb_projeto.NOME_PROJETO, tb_funcionario.PRIMEIRO_NOME FROM tb_funcionario 
INNER JOIN tb_departamento ON tb_funcionario.cpf = tb_departamento.CPF_GERENTE
INNER JOIN tb_projeto 
ON tb_departamento.NUMERO_DEPARTAMENTO = tb_projeto.NUMERO_DEPARTAMENTO;

SELECT tb_projeto.NUMERO_PROJETO, tb_projeto.NUMERO_DEPARTAMENTO
,tb_funcionario.ULTIMO_NOME, tb_funcionario.ENDERECO, tb_funcionario.DATA_NASCIMENTO FROM
tb_projeto
INNER JOIN tb_departamento ON tb_projeto.NUMERO_DEPARTAMENTO = tb_departamento.NUMERO_DEPARTAMENTO
INNER JOIN tb_funcionario ON tb_funcionario.cpf = tb_departamento.CPF_GERENTE
WHERE tb_projeto.LOCAL_PROJETO = 'Mauá';


SELECT tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME FROM tb_projeto 
INNER JOIN tb_trabalha_em ON tb_projeto.NUMERO_PROJETO = tb_trabalha_em.NUMERO_PROJETO
INNER JOIN tb_funcionario ON tb_trabalha_em.CPF_FUNCIONARIO = tb_funcionario.CPF
WHERE tb_projeto.NUMERO_DEPARTAMENTO = 5
GROUP BY tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME
HAVING COUNT(*) = (SELECT COUNT(*) FROM tb_projeto WHERE tb_projeto.NUMERO_DEPARTAMENTO = 5);

SELECT COUNT(*) FROM tb_projeto WHERE tb_projeto.NUMERO_DEPARTAMENTO = 5;


SELECT * FROM tb_projeto WHERE tb_projeto.NUMERO_DEPARTAMENTO = 5; -- 2 projeto.
SELECT * FROM tb_trabalha_em WHERE (tb_trabalha_em.NUMERO_PROJETO = 2 OR tb_trabalha_em.NUMERO_PROJETO = 3);


SELECT tb_trabalha_em.NUMERO_PROJETO FROM tb_funcionario
INNER JOIN tb_trabalha_em ON tb_funcionario.CPF = tb_trabalha_em.CPF_FUNCIONARIO
WHERE tb_funcionario.ULTIMO_NOME = 'Souza'
UNION
SELECT tb_projeto.NUMERO_PROJETO FROM tb_funcionario
INNER JOIN tb_departamento ON tb_funcionario.CPF = tb_departamento.CPF_GERENTE
INNER JOIN tb_projeto ON tb_projeto.NUMERO_DEPARTAMENTO = tb_departamento.NUMERO_DEPARTAMENTO
WHERE tb_funcionario.ULTIMO_NOME = 'Souza';


SELECT tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME FROM tb_funcionario
LEFT JOIN tb_dependente
ON tb_funcionario.CPF = tb_dependente.CPF_FUNCIONARIO
WHERE tb_dependente.CPF_FUNCIONARIO IS NULL;

SELECT DISTINCT tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME FROM tb_funcionario
INNER JOIN tb_dependente ON tb_funcionario.CPF = tb_dependente.CPF_FUNCIONARIO
INNER JOIN tb_departamento ON tb_funcionario.CPF = tb_departamento.CPF_GERENTE;