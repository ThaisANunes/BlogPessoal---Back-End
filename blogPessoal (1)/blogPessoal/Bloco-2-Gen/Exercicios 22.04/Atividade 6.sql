CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id_categoria BIGINT NOT NULL AUTO_INCREMENT,
curso VARCHAR(40) NOT NULL,
hora_aula DOUBLE NOT NULL,
PRIMARY KEY(id_categoria)
);

CREATE TABLE tb_curso(
id_curso BIGINT NOT NULL AUTO_INCREMENT,
aluno VARCHAR(30) NOT NULL,
matricula DOUBLE NOT NULL,
turno VARCHAR(10) NOT NULL,
valor DOUBLE NOT NULL,
fk_categoria BIGINT NOT  NULL,
PRIMARY KEY (id_curso),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (curso, hora_aula)
VALUES
("Java",200),
("GitHub",50),
("Spring Boot",100),
("My Sql",150),
("Eclipse",80);

INSERT INTO tb_curso (aluno, matricula, turno, valor, fk_categoria)
VALUES
("Melissa", 1122, "Matutino", 22.90, 1),
("Thaís", 1123, "Noturno", 29.90, 2),
("Bruna", 1124, "Matutino", 55.90, 3),
("Cauã", 1125, "Matutino", 62.90, 4),
("Bianca", 1126, "Noturno", 75.90, 5),
("Patricia", 1127, "Noturno", 22.90, 1),
("Isis", 1128, "Matutino", 29.90, 2),
("Isabele", 1129, "Matutino", 55.90, 3);

SELECT*FROM db_cursodaminhavida.tb_curso WHERE valor > 50;

SELECT*FROM db_cursodaminhavida.tb_curso WHERE valor BETWEEN 3 AND 60;

SELECT*FROM db_cursodaminhavida.tb_categoria WHERE curso LIKE '%j%'; 

SELECT tb_curso.aluno, tb_categoria.curso, tb_curso.turno
FROM tb_categoria
INNER JOIN tb_curso
ON tb_categoria.id_categoria = tb_curso.fk_categoria;

SELECT curso FROM tb_categoria;