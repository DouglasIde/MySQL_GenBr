CREATE DATABASE db_recursos_humanos;

USE db_recursos_humanos;

CREATE TABLE tb_recursos_humanos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    salario INT NOT NULL,
    email VARCHAR(255) NOT NULL,
    cpf VARCHAR(255),
    endereco VARCHAR(255),
    PRIMARY KEY (id)
);

SELECT * FROM tb_recursos_humanos;

INSERT INTO tb_recursos_humanos(nome, salario, email, cpf, endereco)
VALUES("Mario Gomes", 1600, "marios_gomes@gmail.com", "123.456.789-00", "Rua das Flores, 123, Bairro Jardim, Cidade Nova, SP");
INSERT INTO tb_recursos_humanos(nome, salario, email, cpf, endereco)
VALUES("Julia Tribiane", 2400,"julia_tribiane01@gmail.com","987.654.321-00","Avenida Paulista, 456, Ap. 78, Centro, São Paulo, SP");
INSERT INTO tb_recursos_humanos(nome, salario, email, cpf, endereco)
VALUES("Luigi Silva",2000,"luigi_silva_2@gmail.com","111.222.333-44","Rua dos Pinheiros, 789, Bairro Alto, Rio de Janeiro, RJ");
INSERT INTO tb_recursos_humanos(nome, salario, email, cpf, endereco)
VALUES("Fernanda Olka", 3500,"fernandaolkak@gmail.com","555.666.777-88","Alameda Santos, 101, Sala 12, Bairro Bela Vista, Porto Alegre, RS");
INSERT INTO tb_recursos_humanos(nome, salario, email, cpf, endereco)
VALUES("Douglas Junior",5000,"douglasjr@gmail.com","999.888.777-66","Rua do Sol, 202, Bairro Luz, Salvador, BA");

SELECT *
FROM tb_recursos_humanos
WHERE salario >= 2000;

SELECT *
FROM tb_recursos_humanos
WHERE salario <= 2000;

UPDATE tb_recursos_humanos
SET salario = 4000
WHERE id = 4;

SELECT * 
FROM tb_recursos_humanos;

ALTER TABLE tb_recursos_humanos
MODIFY salario DECIMAL(6,2);

SELECT *
FROM tb_recursos_humanos;

