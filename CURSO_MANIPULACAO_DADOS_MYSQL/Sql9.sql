USE vendas_sucos;

CREATE TABLE TAB_IDENTITY(ID INT AUTO_INCREMENT, DESCRITOR VARCHAR(20), PRIMARY KEY(ID));

INSERT INTO TAB_IDENTITY(DESCRITOR)VALUES('CLIENTE1');

SELECT * FROM tab_identity;

INSERT INTO TAB_IDENTITY(DESCRITOR)VALUES('CLIENTE2');

INSERT INTO TAB_IDENTITY(DESCRITOR)VALUES('CLIENTE3');

INSERT INTO TAB_IDENTITY(ID, DESCRITOR)VALUES(NULL, 'CLIENTE4');

