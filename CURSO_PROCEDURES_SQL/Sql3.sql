USE vendas_sucos;
call inclui_novo_produto_parametro('4000002', 'Sabor do Pantanal 1 Litro - Melancia',
'Melancia', '1 Litro', 'PET', 4.76);
SELECT * FROM produtos WHERE CODIGO = '4000001';
call acha_sabor_produto('4000001');