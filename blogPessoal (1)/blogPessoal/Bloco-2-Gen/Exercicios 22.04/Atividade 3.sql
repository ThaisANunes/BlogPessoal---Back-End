CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id_categoria BIGINT NOT NULL AUTO_INCREMENT,
	categoria VARCHAR(50),
	loja INT(10),
	PRIMARY KEY (id_categoria)
    );
    
CREATE TABLE tb_produto(
id_produto BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
valor DOUBLE,
pagamento VARCHAR(100),
retirada VARCHAR(100),
fk_categoria BIGINT,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO db_farmacia_do_bem.tb_categoria (categoria, loja)
VALUES
("Perfumaria",1),
("Medicamento",1),
("Perfumaria",2),
("Medicamento",2),
("Medicamento",3);

INSERT INTO db_farmacia_do_bem.tb_produto (nome, valor, pagamento, retirada, fk_categoria)
VALUES
("Nimesulida",10.9,"dinheiro","Delivery",2),
("Shampoo",22.5,"cartão","Retirada Loja",1),
("Dorflex",5.9,"dinheiro","Delivery",4),
("Sabonete",2.2,"dinheiro","Retirada Loja",3),
("Soro Fisiológico",6.1,"cartão","Delivery",5),
("Sorine",19.9,"dinheiro","Delivery",2),
("Protetor Solar",29.9,"cartão","Retirada Loja",3),
("Band-aid",8.9,"dinheiro","Delivery",1);

SELECT*FROM db_farmacia_do_bem.tb_produto WHERE valor > 50;

SELECT*FROM db_farmacia_do_bem.tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT*FROM db_farmacia_do_bem.tb_produto WHERE nome LIKE '%b%';

SELECT*FROM tb_categoria
INNER JOIN tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT*FROM db_farmacia_do_bem.tb_produto WHERE fk_categoria = 1 AND  3;

SELECT*FROM db_pizzaria_legal.tb_categoria where ID_categoria = 2 AND 5;