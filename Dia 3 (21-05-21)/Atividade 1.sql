CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
	id				BIGINT			AUTO_INCREMENT,
    classe			VARCHAR(100),
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagem(
	id				BIGINT			AUTO_INCREMENT,
    nome			varchar(255),
    str				INT,
    dex				INT,
    con				INT,
    intt			INT,
    wis				INT,
    cha				INT,
    class_id		BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (class_id) REFERENCES tb_classe (id)
);

INSERT INTO tb_classe (classe)
VALUES 	('Espadachim'),('Monges'),('Necromante'),('Guerreiro'),
		('Magos'),('Feiticeiros'),('Ranger'),('Ladinos'),('Paladinos'),
        ('Druida'),('Bárbaros '),('Clérigo'),('Arqueiros');
        
INSERT INTO tb_personagem (nome, str, dex, con, intt, wis, cha, class_id)
VALUES	('Elra', 13, 20, 15, 17, 17, 14, 9),
		('Grom', 18, 16, 16, 12, 15, 9, 11),
        ('Osvald Rayleigh', 11, 10, 22, 18, 16, 10, 5),
        ('Legolas', 13, 18, 16, 15, 13, 10, 13);
        
SELECT * FROM tb_personagem WHERE str > 15;
SELECT * FROM tb_personagem WHERE intt BETWEEN 15 AND 30;
SELECT * FROM tb_personagem WHERE nome Like "%grom%";

SELECT 	P.nome, C.classe, 
		P.con AS "Constituição",
        P.intt AS "Inteligencia",
        P.wis AS "Sabedoria"
FROM tb_personagem AS P
INNER JOIN tb_classe AS C
ON C.id = P.class_id
WHERE C.classe LIKE "%magos%";

SELECT 	tb_personagem.nome, tb_classe.classe
FROM tb_personagem
INNER JOIN tb_classe
ON tb_classe.id = tb_personagem.class_id;

