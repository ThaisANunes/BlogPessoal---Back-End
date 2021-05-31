create database db_ecommerce

use db_ecommerce;

create table tb_produtos(
id bigint(20) auto_increment,
marca varchar(50) not null,
tamanho varchar(10) not null,
cor varchar(20) not null,
valor decimal(10,2),
estampa boolean,
primary key(id)
);

insert into tb_produtos(marca, tamanho, cor, valor, estampa) values ("nike","M","Preta",59.99,true);
insert into tb_produtos(marca, tamanho, cor, valor, estampa) values ("nike","G","Rosa",59.99,true);
insert into tb_produtos(marca, tamanho, cor, valor, estampa) values ("nike","PP","Branca",200.00,false);
insert into tb_produtos(marca, tamanho, cor, valor, estampa) values ("adidas","XG","Cinza",799.00,true);
insert into tb_produtos(marca, tamanho, cor, valor, estampa) values ("adidas","M","Vermelha",299.00,false);
insert into tb_produtos(marca, tamanho, cor, valor, estampa) values ("Oakley","XXG","Azul",129.99,false);
insert into tb_produtos(marca, tamanho, cor, valor, estampa) values ("Oakley","M","Branca",499.99,true);
insert into tb_produtos(marca, tamanho, cor, valor, estampa) values ("Morena Rosa","P","Amarela",589.99,true);

select*from tb_produtos where valor > 500

select*from tb_produtos where valor < 500
update tb_produtos set valor = 89.99 where id = 1;
