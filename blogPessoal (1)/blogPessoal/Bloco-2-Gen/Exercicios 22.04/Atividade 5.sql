CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id_categoria BIGINT NOT NULL AUTO_INCREMENT,
alvenaria VARCHAR(40) NOT NULL,
hidraulica VARCHAR(40) NOT NULL,
acabamento VARCHAR(40) NOT NULL,
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produto(
id_produto BIGINT NOT NULL AUTO_INCREMENT,
funcionario VARCHAR(20) NOT NULL,
nome_cliente VARCHAR(30) NOT NULL,
valor DOUBLE NOT NULL,
entrega VARCHAR(10),
fk_categoria BIGINT,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (alvenaria, hidraulica, acabamento)
VALUES
("Tijolo de concreto","Tubo de PVC", "Argamassa"),
("Tijolo de cerâmica","Ralo Sifonado", "Tinta parede branca"),
("Tijolo de vidro ","Joelho 90 esgoto", "Lixa madeira"),
("Tijolo de concreto","TE esgoto", "Azulejo"),
("Tijolo de vidro ","Tubo de PVC", "Porcelanato");

INSERT INTO tb_produto (funcionario, nome_cliente, valor, entrega, fk_categoria)
VALUES
("Luna", "Maria C.", 450, "Retirada", 1),
("Luna", "Camila", 189.5, "Retirada", 2),
("Luna", "Jorge A.", 129.8, "Retirada", 3),
("Camila", "Luis B.", 144.2, "Retirada", 4),
("Camila", "Thiago N.", 222.5, "Delivery", 5),
("Camila", "Bruno G.", 55.2, "Delivery", 1),
("Bia", "Viviane R.", 44, "Deliverya", 2),
("Bia", "Melissa N.", 60, "Delivery", 3);

SELECT*FROM tb_produto WHERE valor > 50;

SELECT*FROM tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT*FROM tb_produto WHERE nome_cliente LIKE '%c%';

SELECT tb_produto.nome_cliente, tb_categoria.alvenaria, tb_categoria.hidraulica, tb_categoria.acabamento, tb_produto.valor
FROM tb_produto
INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT alvenaria FROM tb_categoria;

