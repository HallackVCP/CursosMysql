CREATE TABLE TAB_LOOPING(ID INT);

call looping_while(1, 100);

call teste_select_into();

call cursor_primeiro_contato();
call cursor_looping();

call looping_cursor_multiplas_colunas();

SET GLOBAL log_bin_trust_function_creators = 1;

SELECT f_acha_tipo_sabor('Laranja');

SELECT DESCRITOR, SABOR, f_acha_tipo_sabor(SABOR) FROM produtos;