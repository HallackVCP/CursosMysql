SELECT 
JSON_EXTRACT(JSON,"$.Primeiro_Nome")
,JSON_EXTRACT(JSON,"$.Data_Nascimento")
,JSON_EXTRACT(JSON,"$.Salario")
FROM tb_object_funcionario;

SELECT 
REPLACE(JSON_EXTRACT(JSON,"$.Primeiro_Nome"),'"','')
,JSON_EXTRACT(JSON,"$.Data_Nascimento")
,JSON_EXTRACT(JSON,"$.Salario")
FROM tb_object_funcionario;

SELECT 
JSON_UNQUOTE(JSON_EXTRACT(JSON,"$.Primeiro_Nome"))
,JSON_UNQUOTE(JSON_EXTRACT(JSON,"$.Data_Nascimento"))
,JSON_EXTRACT(JSON,"$.Salario")
FROM tb_object_funcionario;

SELECT 
JSON_TYPE(JSON_EXTRACT(JSON,"$.Primeiro_Nome"))
,JSON_TYPE(JSON_EXTRACT(JSON,"$.Data_Nascimento"))
,JSON_TYPE(JSON_EXTRACT(JSON,"$.Salario"))
FROM tb_object_funcionario;

SELECT 
JSON_UNQUOTE(JSON_EXTRACT(JSON,"$.Primeiro_Nome"))
,JSON_UNQUOTE(JSON_EXTRACT(JSON,"$.Data_Nascimento"))
,JSON_EXTRACT(JSON,"$.Salario")
FROM tb_object_funcionario
WHERE YEAR(JSON_EXTRACT(JSON,"$.Data_Nascimento")) >= 1980;

SELECT JSON_EXTRACT(JSONVALUE, "$.Nome_Departamento")
FROM tb_object_departamento WHERE YEAR(JSON_EXTRACT(JSONVALUE,"$.Data_Inicio_Gerente")) = 2005;