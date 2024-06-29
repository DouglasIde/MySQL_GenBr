CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    massa VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome_pizza VARCHAR(50),
    valor DECIMAL(5,2),
    tamanho CHAR(1) NOT NULL,
    borda VARCHAR(20),
    categorias_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, massa)
VALUES("Salgada", "Fina"),
("Salgada", "Grossa"),
("Salgada", "PAN"),
("Salgada", "Vegana"),
("Doce", "Fina"),
("Doce", "Grossa"),
("Doce", "Vegana");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, borda, categorias_id)
VALUES("Portuguesa", 65.00, "M", "Recheada", 2),
("Calabresa", 60.00, "G", "Tradicional", 1), 
("Frango c/ Catupiry", 35.00, "F" , "Recheada c/ Queijo", 2), 
("Quatro Queijos", 70.00, "G" ,"Recheada c/ Cheddar", 3), 
("Napolitana", 50.00, "M" ,"Tradicional", 4), 
("Margherita", 20.00, "F" , "Integral", 4), 
("Romeu e Julieta", 45.00, "G" ,"Tradicional", 6), 
("Brigadeiro", 85.00, "M" ,"Rechada c/ Chocolate", 5),
("Banana c/ Canela", 70.00, "P" ,"Tradicional", 7);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%m%";

SELECT nome_pizza, valor, tamanho, tb_categorias.tipo, tb_categorias.massa
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT nome_pizza, valor, tamanho, tb_categorias.tipo, tb_categorias.massa
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id 
WHERE tipo = "Doce";

SELECT * FROM tb_categorias, tb_pizzas;