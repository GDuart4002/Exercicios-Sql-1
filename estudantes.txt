CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_estudantes(
	id_estudante int auto_increment primary key,
    nome_est varchar(200),
    idade int,
    serie varchar(3),
    periodo varchar(10),
    nota decimal(65,1)
);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Gabriel Duarte", 18, "9ºB", "Manhã", 7.9);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Patches", 50, "9ªC", "Noturno", 10.0);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Fire Keeper", 90, "1ªE", "Madrugada", 8.9);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Astora", 100, "1ªD", "Nenhum", 1.0);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Sif", 35, "6ªC", "Noturno", 8.9);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Artorias", 25, "8ªE", "Noturno", 9.2);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Big Hat Logan", 45, "8ªA", "Integral", 10.0);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Gwyn", 99999, "9ªA", "Integral", 0.1);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 6.0 WHERE id_estudante = 2;

SELECT * FROM tb_estudantes;