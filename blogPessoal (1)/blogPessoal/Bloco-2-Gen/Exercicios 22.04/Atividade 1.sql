CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id_classe BIGINT(30) AUTO_INCREMENT,
arqueiro CHAR,
lanceiro CHAR,
escudo CHAR,
PRIMARY KEY (id_classe)
);
CREATE TABLE tb_personagem(
id_personagem BIGINT(30) AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
poder_ataque DOUBLE NOT NULL,
poder_defesa DOUBLE NOT NULL,
forca VARCHAR(10) NOT NULL,
agilidade VARCHAR(10) NOT NULL,
classe_id BIGINT(30) NOT NULL,
PRIMARY KEY (id_personagem),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id_classe)
);
INSERT INTO db_generation_game_online.tb_classe (arqueiro, lanceiro, escudo)
VALUES
("S","N","N"),
("N","S","S"),
("N","N","S"),
("N","S","N"),
("S","N","S");

INSERT INTO db_generation_game_online.tb_personagem (nome, poder_ataque, poder_defesa, forca, agilidade,classe_id)
VALUES
("caca", 3000, 4000, "alta", "media",1),
("mel", 4000, 4000, "alta", "alta",2),
("mika", 500, 1000, "media", "baixa",3),
("niki", 1000, 2000, "baixa", "alta",2),
("cadu", 2000, 3000, "media", "alta",1),
("lala", 1000, 2000, "media", "media",3),
("lili", 2000, 2000, "alta", "media",2),
("cindi", 4000, 5000, "media", "alta",1);

select*from tb_personagem where poder_ataque > 2000;

select*from tb_personagem where poder_defesa > 1000 and poder_defesa < 2000;

SELECT * FROM tb_personagem WHERE nome LIKE '%c%';

select*from tb_personagem
inner join tb_classe on tb_classe.id_classe = tb_personagem.classe_id

select*from tb_personagem where classe_id = 1;





