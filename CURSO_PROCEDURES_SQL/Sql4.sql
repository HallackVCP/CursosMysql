USE vendas_sucos;

SELECT * FROM clientes;

call cliente_novo_velho('19290992743');


SELECT * FROM produtos;

call acha_status_preco('326779');

call acha_sabor_produto('1000889');
call acha_tipo_sabor('1000889');

call acha_tipo_sabor_erro('1004327');

call acha_status_preco('1000889');
call acha_status_preco_case('1000889');