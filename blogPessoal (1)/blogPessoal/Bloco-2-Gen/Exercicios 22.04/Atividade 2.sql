CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id_categoria BIGINT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(10),
    tamanho VARCHAR(10),
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizza(
	id_pizza BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40)NOT NULL,
    preco DOUBLE NOT NULL,
    ingredientes VARCHAR(80),
    pagamento VARCHAR(20)NOT NULL,
    fk_categoria BIGINT,
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)    
);

INSERT INTO db_pizzaria_legal.tb_categoria(tipo, tamanho)
VALUES
("Salgada","Grande"),
("Doce","Pequena"),
("Salgada","Média"),
("Salgada","Grande"),
("Doce","Média");

INSERT INTO db_pizzaria_legal.tb_pizza(nome, preco, ingredientes, pagamento, fk_categoria)
VALUES
("Quatro queijos",48.9,"Queijo mussarela, parmesão, catupiry, provolone","Debito",1),
("La Grazzia",40.5,"frango, catupiry e bacon","Credito",4),
("Romeu e Julieta",35.5,"Queijo e Goiabada","Dinheiro",2),
("Mussarela",26.9,"Queijo mussarela","Debito",3),
("Calabresa",26.9,"Calabresa moída e cebola","Dinheiro",1),
("Chocolate",42.5,"Chocolate ao leite e morango","Credito",5),
("Brocólis",46.7,"Queijo mussarela,brócolis, catupiry e bacon","Debito",1),
("Portuguesa",42.5,"Queijo mussarela, ovo, presunto, cebola, ervilha e milho","Dinheiro",1);

SELECT*FROM db_pizzaria_legal.tb_pizza where preco > 45;

SELECT*FROM db_pizzaria_legal.tb_pizza WHERE preco BETWEEN 29 AND 60;

SELECT*FROM db_pizzaria_legal.tb_pizza WHERE nome LIKE '%c%';

SELECT*FROM tb_categoria
INNER JOIN tb_pizza 
ON tb_categoria.id_categoria = tb_pizza.fk_categoria;
    
SELECT*FROM db_pizzaria_legal.tb_categoria where ID_categoria = 2 AND 5;

