CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(50),
    fornecedor VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(50),
    valor DECIMAL(5,2),
    validade DATE,
    quantidade int,
    categorias_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(tipo, fornecedor)
VALUES ("Medicamento", "FarmaTudo"),
("Higiene", "Oral B"),
("Suplementos", "Growth Suplementos"),
("Beleza", "Granado"),
("Primeiros Socorros", "PrimeirosAuxilios");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome_produto, valor, validade, quantidade, categorias_id)
VALUES("Tylenol 500mg", 16.00, '2026-02-05', 20, 1),
("Shampoo Nutritive", 25.00, '2026-05-02', 35, 2),
("Whey Protein", 100.00, '2027-01-01', 5, 3),
("Bandagem", 1.00, '2027-01-12', 40, 5),
("Batom Matte", 37.00, '2026-12-12', 30, 4),
("Creatina", 70.00, '2028-02-03', 12, 3),
("Centrum Vitamina C 1000mg", 25.00, '2025-01-07', 46, 1),
("Sabonete Liquido", 16.00, '2025-05-08', 12, 2);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "c%";

SELECT nome_produto, valor, validade, quantidade, tb_categorias.tipo, tb_categorias.fornecedor
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT nome_produto, valor, validade, quantidade, tb_categorias.tipo, tb_categorias.fornecedor
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id 
WHERE tipo = "Suplementos";