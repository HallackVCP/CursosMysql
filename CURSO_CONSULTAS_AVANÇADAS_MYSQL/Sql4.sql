USE sucos_vendas;

SELECT EMBALAGEM, TAMANHO FROM tabela_de_produtos;

SELECT DISTINCT EMBALAGEM, TAMANHO FROM tabela_de_produtos;

SELECT DISTINCT EMBALAGEM, TAMANHO FROM tabela_de_produtos WHERE SABOR = 'Laranja' ;

SELECT DISTINCT BAIRRO FROM tabela_de_clientes WHERE CIDADE = 'Rio de Janeiro';

SELECT * FROM notas_fiscais WHERE DATA_VENDA = '2017-01-01' LIMIT 10;