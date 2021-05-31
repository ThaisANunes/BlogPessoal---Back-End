CREATE TABLE tb_categoria(
id_categoria BIGINT NOT NULL AUTO_INCREMENT,
funcionario VARCHAR(30) NOT NULL,
caixa VARCHAR(20),
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produto(
id_produto BIGINT NOT NULL AUTO_INCREMENT,
produto VARCHAR(40),
valor DOUBLE NOT NULL,
data_compra DATE NOT NULL,
pagamento VARCHAR(10),
fk_categoria BIGINT,
PRIMARY KEY (id_produto),
FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (funcionario, caixa) 
VALUES
("Carlos","Maria"), 
("Bruno","Amanda"), 
("Carlos","Maria"), 
("Bruno","Amanda"), 
("Carlos","Amanda");

INSERT INTO tb_produto (produto, valor, data_compra, pagamento, fk_categoria)
VALUES
("Peito de frango", 10.0, "2021-04-20", "Dinheiro",1),
("Frango assado", 22.0, "2021-04-20", "Dinheiro",2),
("Salsicha", 7.99, "2021-04-20", "Dinheiro",3),
("Fígado", 11.0, "2021-04-20", "Cartão",4),
("Nuggets", 23.9, "2021-04-21", "Cartão",5),
("Linguiça Toscana", 15.5, "2021-04-21", "Cartão",1),
("Costela", 35.0, "2021-04-21", "Cartão",2),
("Contra filé", 42.0, "2021-04-21", "Dinheiro",3);

SELECT*FROM tb_produto WHERE valor > 50;

SELECT*FROM tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT*FROM tb_produto WHERE produto LIKE '%c%';

SELECT tb_categoria.funcionario, tb_produto.produto, tb_categoria.caixa, tb_produto.data_compra ,tb_produto.valor
FROM tb_produto
INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT*FROM tb_categoria WHERE funcionario = "Carlos";