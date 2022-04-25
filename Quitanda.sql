CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome_do_produto varchar(255) not null,
    qtd_produto int not null,
    preco decimal (65, 2) not null,
    peso decimal (65, 3) not null,
    validade boolean not null,
    id_categoria bigint,
	primary key (id),
    foreign key(id) references tb_categoria(id_categoria)
);

CREATE TABLE tb_categoria(
	id_categoria bigint auto_increment,
    categoria varchar(255),
    primary key (id_categoria)
);

INSERT tb_categoria(categoria) VALUES ("Hortaliça");
INSERT tb_categoria(categoria) VALUES ("Fruta");
INSERT tb_categoria(categoria) VALUES ("Legume");
INSERT tb_categoria(categoria) VALUES ("Conserva");
INSERT tb_categoria(categoria) VALUES ("Grãos");

INSERT tb_produtos (nome_do_produto, qtd_produto, preco, peso, validade) VALUES ("Cebola",45,7.77,0.200,true);
INSERT tb_produtos (nome_do_produto, qtd_produto, preco, peso, validade) VALUES ("Abacaxi",8,11.00,0.700,false);
INSERT tb_produtos (nome_do_produto, qtd_produto, preco, peso, validade) VALUES ("Alcachofra",17,55.00,0.450,true);
INSERT tb_produtos (nome_do_produto, qtd_produto, preco, peso, validade) VALUES ("Atum",4,51.51,0.235,true);
INSERT tb_produtos (nome_do_produto, qtd_produto, preco, peso, validade) VALUES ("Sorgo",10000,0.59,0.003,false);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categoria;

SELECT * FROM tb_categoria INNER JOIN tb_produtos ON  tb_categoria.id_categoria = 
tb_produtos.id_categoria WHERE tb_produtos.preco > 50.00;

SELECT * FROM tb_produtos WHERE nome_do_produto LIKE "%a%";

UPDATE tb_produtos SET nome_do_produto = "Pêssego" WHERE id = 2;