CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id_produto BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    marca VARCHAR(255) NOT NULL,
    tamanho INT NOT NULL,
    avaliacao DECIMAL(2,1),
    PRIMARY KEY (id_produto)
);

ALTER TABLE tb_produtos
ADD COLUMN preco DECIMAL(6,2);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, marca, tamanho, preco, avaliacao)
VALUES ("Air Jordan 1 Retro High OG", 50, "Nike", 42, 749.99, 4.8);

INSERT INTO tb_produtos(nome, quantidade, marca, tamanho, preco, avaliacao)
VALUES ("Jordan Jumpman Diamond Mid", 30, "Nike", 40, 499.99, 4.5),
("Air Jordan 4 Retro", 40, "Nike", 41, 699.99, 3.9),
("Jordan Delta", 20, "Nike", 43, 399.99, 4.6),
("Adidas Ultraboost 21", 60, "Adidas", 42, 799.99, 4.9),
("Adidas NMD_R1", 25, "Adidas", 44, 599.99, 4.4),
("Adidas Superstar", 50, "Adidas", 41, 449.99, 4.5),
("Adidas Stan Smith", 43, "Adidas", 46, 699.99, 5.0);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET preco = 750.00
WHERE id_produto = 1;

SELECT * FROM tb_produtos;