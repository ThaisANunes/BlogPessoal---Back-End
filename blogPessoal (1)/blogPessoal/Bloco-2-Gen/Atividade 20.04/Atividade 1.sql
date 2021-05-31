create database db_rh;

use db_rh;

create table tb_funcionaries (
id bigint (10) auto_increment,
nome varchar(50) not null,
idade bigint(3),
matricula bigint(20) not null,
funcao varchar(50) not null,
salario decimal(10,2),
primary key (id)
);


insert into tb_funcionaries (nome, idade, matricula, funcao, salario) values ("Thais",29,001,"Dev Junior",5000);
insert into tb_funcionaries (nome, idade, matricula, funcao, salario) values ("Melissa",18,222,"Estagiária",2000);
insert into tb_funcionaries (nome, idade, matricula, funcao, salario) values ("Alana",25,333,"Dev Junior",5500);
insert into tb_funcionaries (nome, idade, matricula, funcao, salario) values ("Marina",54,444,"Dev Sênior",10000);
insert into tb_funcionaries (nome, idade, matricula, funcao, salario) values ("Heloísa",36,555,"Dev Pleno",8000);

select * from tb_funcionaries where salario > 2000;

select * from tb_funcionaries where salario < 2000;

update tb_funcionaries set matricula = 111 where id = 1;

select*from tb_funcionaries