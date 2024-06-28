CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT,
    posicao VARCHAR(50),
    decricao VARCHAR(50),
    PRIMARY KEY (id)
);

ALTER TABLE tb_classe
CHANGE COLUMN decricao descricao VARCHAR(50);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50),
    idade INT,
    time VARCHAR(50),
    ataque INT,
    drible INT,
    defesa INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

INSERT INTO tb_classe (posicao, descricao)
VALUES ("Goleiro", "Goleiro"),
("Defensor", "Zagueiro"),
("Defensor", "Lateral Direito"),
("Defensor", "Lateral Esquerdo"),
("Meio-de-Campo", "Volante"),
("Meio-de-Campo", "Meia"),
("Atacante", "Ponta"),
("Atacante", "Centro-avante");

SELECT * FROM tb_classe;

DROP TABLE tb_personagens;

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome, idade, time, ataque, drible, defesa, classe_id)
VALUES ("Weverton Pereira", 33, "Palmeiras", 1000, 3000, 9000, 1),
("Cássio Ramos", 34, "Cruzeiro", 1500, 2500, 9500, 1),
("Gustavo Gómez", 27, "Palmeiras", 3500, 5000, 8500, 2),
("Rodrigo Caio", 26, "Flamengo", 4000, 5500, 8200, 2),
("Fagner Conserva", 31, "Corinthians", 6500, 7000, 7500, 3),
("Marcos Rocha", 32, "Palmeiras", 6000, 6800, 7200, 3),
("Guilherme Arana", 23, "Atlético Mineiro", 7000, 7500, 7000, 4),
("Filipe Luís", 35, "Flamengo", 6500, 6800, 7500, 4),
("Felipe Melo", 36, "Fluminense", 6500, 6800, 7500, 5),
("Ranielle", 29, "Corinthians", 6800, 6000, 7000, 5),
("Éverton Ribeiro", 30, "Bahia", 7500, 8500, 6000, 6),
("Hernanes Lima", 35, "São Paulo", 7000, 8000, 5500, 6),
("Yuri Alberto", 25, "Corinthians", 5700, 4000, 3900, 8),
("Bruno Henrique", 29, "Flamengo", 8500, 9000, 4500, 7), 
("Marinho", 30, "Fortaleza", 8200, 8800, 4800, 7),
("Paulinho", 28, "Atlético Mineiro", 8600, 7500, 6000, 8);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque < 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, ataque, defesa, drible ,tb_classe.posicao, tb_classe.descricao
FROM tb_personagens INNER JOIN tb_classe
ON tb_personagens.classe_id = tb_classe.id;

SELECT nome, ataque, defesa, drible, tb_classe.descricao
FROM tb_personagens INNER JOIN tb_classe
ON tb_personagens.classe_id = tb_classe.id WHERE descricao = "Zagueiro";