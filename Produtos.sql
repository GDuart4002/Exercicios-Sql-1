CREATE DATABASE db_comercio;
USE db_comercio; 

CREATE TABLE tb_produtos(
	cod_prod int auto_increment primary key,
    nome varchar(200),
    qtd bigint,
    avaliacao decimal(65, 2),
    valor decimal(65, 3)
);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Iphone 7x9.857", 15, 4.5, 3.000);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Samsung 19524", 20, 4.3, 4.000);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Nokia Infinite", 25, 4.0, 5.750); 

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Freezer", 5, 3.5, 6.500);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("TV", 10, 3.0, 7.500);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("IPTV", 30, 4.9, 8.250);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Sanduicheira", 45, 2.5, 9.150);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Cabo", 50, 2.0, 10.000);

SELECT * FROM tb_produtos WHERE valor > 5;

SELECT * FROM tb_produtos WHERE valor < 5;

UPDATE tb_produtos SET qtd = 100 WHERE cod_prod = 8;

SELECT * FROM tb_produtos;
