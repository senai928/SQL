CREATE DATABASE rh_escola;
USE rh_escola;

CREATE TABLE tb_alunos  (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    sala VARCHAR(255),
    curso VARCHAR(255),
    media FLOAT NULL,
    UNIQUE (id_usuario),
    PRIMARY KEY (id_usuario)
);

INSERT INTO tb_alunos (nome, sala, curso, media)
VALUES ("João Victor Maciel","1Y","Informatica para Internet",8);
INSERT INTO tb_alunos (nome, sala, curso, media)
VALUES ("Ricardo Oliveira","3E","Informatica",4);
INSERT INTO tb_alunos (nome, sala, curso, media)
VALUES ("Marcelo Carlos","2A","Mecatronica",5);
INSERT INTO tb_alunos (nome, sala, curso, media)
VALUES ("Halisson Siqueira","2D","Ensino Medio",7);



SELECT * FROM tb_alunos WHERE media > 7;
SELECT * FROM tb_alunos WHERE media < 7;
UPDATE tb_alunos SET media = 7
WHERE id_usuario=2;

SELECT * FROM tb_funcionario;