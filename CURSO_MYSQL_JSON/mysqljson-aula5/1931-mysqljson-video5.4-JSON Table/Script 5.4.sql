
CREATE TABLE X (Y JSON);
INSERT INTO X VALUES ('{"HOBBY":[{"nome":"PRAIA","local":"Ar Livre"},{"nome":"FUTEBOL","local":"Ar Livre"},
{"nome":"CINEMA","local":"Fechado"}]}');
SELECT Y FROM X;

SELECT JSON_EXTRACT(Y,"$.HOBBY[0].nome") AS NOME, JSON_EXTRACT(Y,"$.HOBBY[0].local") AS LOCAL FROM X
UNION
SELECT JSON_EXTRACT(Y,"$.HOBBY[1].nome") AS NOME, JSON_EXTRACT(Y,"$.HOBBY[1].local") AS LOCAL FROM X
UNION
SELECT JSON_EXTRACT(Y,"$.HOBBY[2].nome") AS NOME, JSON_EXTRACT(Y,"$.HOBBY[2].local") AS LOCAL FROM X;

UPDATE X SET Y = '{"HOBBY":[{"nome":"PRAIA","local":"Ar Livre"},{"nome":"FUTEBOL","local":"Ar Livre"},
{"nome":"CINEMA","local":"Fechado"}, {"nome":"PISCINA","local":"Ar Livre"}]}';

SELECT JSON_EXTRACT(Y,"$.HOBBY[0].nome") AS NOME, JSON_EXTRACT(Y,"$.HOBBY[0].local") AS LOCAL FROM X
UNION
SELECT JSON_EXTRACT(Y,"$.HOBBY[1].nome") AS NOME, JSON_EXTRACT(Y,"$.HOBBY[1].local") AS LOCAL FROM X
UNION
SELECT JSON_EXTRACT(Y,"$.HOBBY[2].nome") AS NOME, JSON_EXTRACT(Y,"$.HOBBY[2].local") AS LOCAL FROM X
UNION
SELECT JSON_EXTRACT(Y,"$.HOBBY[3].nome") AS NOME, JSON_EXTRACT(Y,"$.HOBBY[3].local") AS LOCAL FROM X;


SELECT T2.NOME, T2.LOCAL FROM X
CROSS JOIN
JSON_TABLE ( JSON_EXTRACT (Y, "$.HOBBY"), "$[*]" 
COLUMNS (NOME VARCHAR(10) PATH "$.nome", LOCAL VARCHAR(10) PATH "$.local")) T2;

UPDATE X SET Y = '{"HOBBY":[{"nome":"PRAIA","local":"Ar Livre"},{"nome":"FUTEBOL","local":"Ar Livre"},
{"nome":"CINEMA","local":"Fechado"}, {"nome":"PISCINA","local":"Ar Livre"}, {"nome":"TENIS","local":"Ar Livre"}]}';





