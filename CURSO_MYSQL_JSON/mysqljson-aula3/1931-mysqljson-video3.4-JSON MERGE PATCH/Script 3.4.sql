
-- JSON MERGE PATCH -- 
-- A propriedade que existir no primeiro e não existir no segundo 
-- A propriedade que existir no segundo e não existir no primeiro
-- Propriedades em comum = propriedade do segundo. 

SELECT JSON_MERGE_PATCH('{"nome":"James","sobrenome":"Bond"}', '{"salario":10000,"cidade":"Rio de Janeiro"}');
SELECT JSON_MERGE_PATCH('{"nome":"James","sobrenome":"Bond"}', '{"nome":"Maxwell","cidade":"Rio de Janeiro"}');

SELECT JSON_MERGE_PATCH('{"nome":"James","sobrenome":"Bond"}', '{"salario":10000,"cidade":"Rio de Janeiro"}'),
JSON_MERGE_PRESERVE('{"nome":"James","sobrenome":"Bond"}', '{"salario":10000,"cidade":"Rio de Janeiro"}');

SELECT JSON_MERGE_PATCH('{"nome":"James","sobrenome":"Bond"}', '{"nome":"Maxwell","cidade":"Rio de Janeiro"}'),
JSON_MERGE_PRESERVE('{"nome":"James","sobrenome":"Bond"}', '{"nome":"Maxwell","cidade":"Rio de Janeiro"}');

SELECT JSON_MERGE_PATCH('[1,2]','[true, false]');
SELECT JSON_MERGE_PATCH('{"array2":[1,2]}','{"array2":[true, false]}');
SELECT JSON_MERGE_PATCH('[1,2]','[true, false]');

