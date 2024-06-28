CREATE DATABASE bd_escola;

USE bd_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    numero_matricula VARCHAR(11),
    turma INT,
    endereco VARCHAR(150),
    PRIMARY KEY (id)
);

ALTER TABLE tb_estudantes
ADD COLUMN nota DECIMAL(2,1);

ALTER TABLE tb_estudantes
MODIFY COLUMN nota DECIMAL(3,1);

INSERT INTO tb_estudantes(nome, data_nascimento, numero_matricula, turma, endereco, nota)
VALUES("Ana Flavia", '2006-04-15', 12345678901, 101, "Rua das Flores, 123, São Paulo, SP", 10.0),
("Bruno Santos", '2007-11-22', 23456789012, 102, "Avenida Paulista, 456, São Paulo, SP", 8.7),
("Caroline Rocha", '2005-07-30', 34567890123, 102, "Rua Augusta, 789, São Paulo, SP", 6.0),
("Daniel Costa", '2006-01-10', 45678901234, 104, "Rua da Consolação, 321, São Paulo, SP", 4.6),
("Gabriel Alfredo", '2007-09-18', 56789012345, 101, "Rua Haddock Lobo, 654, São Paulo, SP", 2.0),
("Felipe Mendes", '2005-05-24', 67890123456, 104, "Rua Oscar Freire, 987, São Paulo, SP", 5.0),
("Ruan Godoy", '2006-12-12', 78901234567, 101, "Rua Frei Caneca, 111, São Paulo, SP", 3.8),
("Pietra Marcelos", '2007-08-05', 89012345678, 102, "Rua Peixoto Gomide, 222, São Paulo, SP", 7.7);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes 
SET nota = 6.6
WHERE id = 5;

SELECT * FROM tb_estudantes WHERE id = 5;

    