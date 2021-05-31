create database db_escola;

use db_escola;

create table tb_alunes(
	id bigint(10) auto_increment,
    nome varchar(30) not null,
    serie bigint(20),
    nota double(2,1),
    turno varchar(30),
    matricula bigint(20),
    primary key (id)
);

insert into tb_alunes(nome, serie, nota, turno, matricula) values ("Melissa",2,8.5,"integral",1155);
insert into tb_alunes(nome, serie, nota, turno, matricula) values ("Pedro",2,6.5,"integral",1156);
insert into tb_alunes(nome, serie, nota, turno, matricula) values ("Luisa",2,9.5,"integral",1157);
insert into tb_alunes(nome, serie, nota, turno, matricula) values ("Alana",2,7.0,"integral",1158);
insert into tb_alunes(nome, serie, nota, turno, matricula) values ("Henrique",2,10,"integral",1159);
insert into tb_alunes(nome, serie, nota, turno, matricula) values ("Bruna",3,8.5,"manhã",1160);
insert into tb_alunes(nome, serie, nota, turno, matricula) values ("Matheus",3,4.5,"manhã",1161);
insert into tb_alunes(nome, serie, nota, turno, matricula) values ("Bianca",3,5.5,"manhã",1162);

select*from tb_alunes where nota > 7;

select*from tb_alunes where nota < 7;
update tb_alunes set nota = 8.0 where id = 2;
