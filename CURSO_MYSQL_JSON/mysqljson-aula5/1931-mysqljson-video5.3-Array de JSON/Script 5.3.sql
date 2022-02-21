
-- ["PRAIA","FUTEBOL","CINEMA"]

SELECT '["PRAIA","FUTEBOL","CINEMA"]';
SELECT JSON_EXTRACT('["PRAIA","FUTEBOL","CINEMA"]',"$[1]");
SELECT '{"HOBBY":["PRAIA","FUTEBOL","CINEMA"]}';
SELECT JSON_EXTRACT('{"HOBBY":["PRAIA","FUTEBOL","CINEMA"]}',"$.HOBBY[1]");

-- {"HOBBY":[{"nome":"PRAIA","local":"Ar Livre"},{"nome":"FUTEBOL","local":"Ar Livre"},{"nome":"CINEMA","local":"Fechado"}]}

SELECT JSON_EXTRACT('{"HOBBY":[{"nome":"PRAIA","local":"Ar Livre"},{"nome":"FUTEBOL","local":"Ar Livre"},{"nome":"CINEMA","local":"Fechado"}]}',"$.HOBBY[1]");
SELECT JSON_EXTRACT('{"HOBBY":[{"nome":"PRAIA","local":"Ar Livre"},{"nome":"FUTEBOL","local":"Ar Livre"},{"nome":"CINEMA","local":"Fechado"}]}',"$.HOBBY[1].nome");
SELECT JSON_EXTRACT('{"HOBBY":[{"nome":"PRAIA","local":"Ar Livre"},{"nome":"FUTEBOL","local":"Ar Livre"},
{"nome":"CINEMA","local":"Fechado"}]}',"$.HOBBY[0].nome")
UNION
SELECT JSON_EXTRACT('{"HOBBY":[{"nome":"PRAIA","local":"Ar Livre"},{"nome":"FUTEBOL","local":"Ar Livre"},
{"nome":"CINEMA","local":"Fechado"}]}',"$.HOBBY[1].nome")
UNION
SELECT JSON_EXTRACT('{"HOBBY":[{"nome":"PRAIA","local":"Ar Livre"},{"nome":"FUTEBOL","local":"Ar Livre"},
{"nome":"CINEMA","local":"Fechado"}]}',"$.HOBBY[2].nome");
