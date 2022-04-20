CREATE DATABASE db_RH_Server;
USE db_RH_Server;

CREATE TABLE tb_colaboradores(
	id_colaborador int auto_increment primary key,
    nome varchar(200),
    cargo varchar(20),
    celular varchar(12),
    cpf varchar(100),
    salario decimal(65, 2)
);

ALTER TABLE tb_colaboradores MODIFY salario decimal(65, 3);
ALTER TABLE tb_colaboradores MODIFY cargo varchar(50);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Gabriel D", "Está começando a entender", "4002-8922", "1234-5678", 4.000);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Patati", "Sorrir", "980-823", "2346-908", 3.000);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Patata", "Brincar", "9008-45", "40-922", 3.001);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Vasco", "Morte em time", "92345-2384", "122-036", 2.000);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Grêmio", "Afeta o Grêmio", "91-2382", "73-672", 1.250);

SELECT * FROM tb_colaboradores WHERE salario > 2.000;
SELECT * FROM tb_colaboradores WHERE salario <= 2.000;

UPDATE tb_colaboradores SET salario = 2.000 WHERE id_colaborador = 4;
UPDATE tb_colaboradores SET cargo = "Entendi como funciona" WHERE id_colaborador = 1;
UPDATE tb_colaboradores SET celular = "98734-8291" WHERE id_colaborador = 4;

SELECT * FROM tb_colaboradores;