
CREATE TABLE DEFAULT_TABLE (ID INTEGER, NOME VARCHAR(100));

ALTER TABLE DEFAULT_TABLE ENGINE = MyISAM;

CREATE TABLE DEFAULT_TABLE2 (ID INTEGER, NOME VARCHAR(100)) ENGINE = MEMORY;