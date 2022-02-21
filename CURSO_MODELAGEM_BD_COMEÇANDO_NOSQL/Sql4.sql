SELECT REPLACE(JSON_EXTRACT(`JSON`,"$.Cpf"),"""","") AS CPF,
JSON_EXTRACT(`JSON`,"$.Data_Nascimento")  as Data_Nascimento,
YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Ano_Nascimento,
MONTH(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Mes_Nascimento,
REPLACE(JSON_EXTRACT(`JSON`,"$.Primeiro_Nome"),"""","") AS Primeiro_Nome,
REPLACE(JSON_EXTRACT(`JSON`,"$.Sexo"),"""","") AS Sexo
FROM tb_object_funcionario
WHERE YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento")) >= 1980;

SELECT REPLACE(JSON_EXTRACT(`JSON`,"$.Cpf"),"""","") AS CPF,
JSON_EXTRACT(`JSON`,"$.Data_Nascimento")  as Data_Nascimento,
YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Ano_Nascimento,
MONTH(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Mes_Nascimento,
REPLACE(JSON_EXTRACT(`JSON`,"$.Primeiro_Nome"),"""","") AS Primeiro_Nome,
REPLACE(JSON_EXTRACT(`JSON`,"$.Sexo"),"""","") AS Sexo,
REPLACE(JSON_EXTRACT(`JSON`,"$.Salario"),"""","") AS Salario
FROM tb_object_funcionario
WHERE YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento")) >= 1980
AND JSON_EXTRACT(`JSON`,"$.Sexo") = 'M';

SELECT REPLACE(JSON_EXTRACT(`JSON`,"$.Cpf"),"""","") AS CPF,
JSON_EXTRACT(`JSON`,"$.Data_Nascimento")  as Data_Nascimento,
YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Ano_Nascimento,
MONTH(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Mes_Nascimento,
REPLACE(JSON_EXTRACT(`JSON`,"$.Primeiro_Nome"),"""","") AS Primeiro_Nome,
REPLACE(JSON_EXTRACT(`JSON`,"$.Sexo"),"""","") AS Sexo,
REPLACE(JSON_EXTRACT(`JSON`,"$.Salario"),"""","") AS Salario
FROM tb_object_funcionario
WHERE YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento")) >= 1980
AND JSON_EXTRACT(`JSON`,"$.Sexo") = 'M' 
AND JSON_EXTRACT(`JSON`,"$.Salario") >= 19000;