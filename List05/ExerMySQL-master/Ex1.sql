CREATE DATABASE rh_maciform;
USE rh_maciform;

CREATE TABLE tb_funcionarios  (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    email VARCHAR(255),
    cpf VARCHAR(255),
    salario FLOAT NULL,
    UNIQUE (id_usuario),
    PRIMARY KEY (id_usuario)
);

INSERT INTO tb_funcionarios (nome, email, cpf, salario)
VALUES ("João Victor Maciel","jvictormaciel@email.com","494.564.564-65",5000);
INSERT INTO tb_funcionarios (nome, email, cpf, salario)
VALUES ("Francisco Roberto da Silva","cisco@email.com","443.544.463-65",3000);
INSERT INTO tb_funcionarios (nome, email, cpf, salario)
VALUES ("Cristian Oliveira","cris@email.com","344.434.469-35",1000);
INSERT INTO tb_funcionarios (nome, email, cpf, salario)
VALUES ("Paulo Roberto da Silva","paulo@email.com","443.324.433-25",8000);
INSERT INTO tb_funcionarios (nome, email, cpf, salario)
VALUES ("Victor Gustavo Mendes","vg@email.com","433.321.333-55",1000);

SELECT nome, salario FROM tb_funcionarios WHERE salario > 2000;
SELECT nome, salario FROM tb_funcionarios WHERE salario < 2000;
UPDATE tb_funcionarios SET salario = 10000 WHERE id_usuario = 4;
SELECT * FROM tb_funcionarios;