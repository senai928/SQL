CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe (
id_classe INT AUTO_INCREMENT,
    classe ENUM ('Goleiro','Zagueiro','Meia','Atacante'),
    PRIMARY KEY (id_classe)
    );

INSERT INTO tb_classe(classe) VALUES ('Goleiro');
INSERT INTO tb_classe(classe) VALUES ('Zagueiro');
INSERT INTO tb_classe(classe) VALUES ('Meia');
INSERT INTO tb_classe(classe) VALUES ('Atacante');

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem (
id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    pais VARCHAR(255),
    pernaboa VARCHAR(255),
    chute FLOAT NULL,
    passe FLOAT NULL,
    ovr FLOAT NULL,
    fk_classe INT,
    PRIMARY KEY (id),
	FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
    );
    
INSERT INTO tb_personagem (nome, idade, pais, pernaboa, chute, passe, ovr, fk_classe)
VALUES ("Messi",32,"Argentina","Esq.",96,84,94,4);
INSERT INTO tb_personagem (nome, idade, pais, pernaboa, chute, passe, ovr, fk_classe)
VALUES ("Matheus Babi",24,"Brasil","Dir.",56,45,65,4);
INSERT INTO tb_personagem (nome, idade, pais, pernaboa, chute, passe, ovr, fk_classe)
VALUES ("Douglas Costa",30,"Brasil","Dir.",86,86,83,4);
INSERT INTO tb_personagem (nome, idade, pais, pernaboa, chute, passe, ovr, fk_classe)
VALUES ("Santos",32,"Brasil","Esq.",56,45,82,1);
INSERT INTO tb_personagem (nome, idade, pais, pernaboa, chute, passe, ovr, fk_classe)
VALUES ("Cristiano Ronaldo",35,"Portugal","Dir.",85,98,92,4);
INSERT INTO tb_personagem (nome, idade, pais, pernaboa, chute, passe, ovr, fk_classe)
VALUES ("Sergio Ramos",35,"Espanha","Dir.",85,34,89,2);
INSERT INTO tb_personagem (nome, idade, pais, pernaboa, chute, passe, ovr, fk_classe)
VALUES ("De Arrascaeta",24,"Uruguai","Esq.",80,80,83,3);
INSERT INTO tb_personagem (nome, idade, pais, pernaboa, chute, passe, ovr, fk_classe)
VALUES ("Anderson Talisca",28,"Brasil","Dir.",78,75,79,3);

SELECT nome AS Jogador, idade AS Idade, pais AS Pais, pernaboa AS Perna, 
chute AS Chute, passe AS Passe, ovr AS Geral, fk_classe AS Posicao FROM tb_personagem; -- Retorna todos os jogadores 

SELECT nome AS Jogador, idade AS Idade, pais AS Pais, pernaboa AS Perna, 
chute AS Chute, passe AS Passe, ovr AS Geral, fk_classe AS Posicao FROM tb_personagem WHERE ovr > 90; -- Retorna todos os jogadores com mais de 90 de chute (em referencia aos 2000 de ataque)

SELECT nome AS Jogador, idade AS Idade, pais AS Pais, pernaboa AS Perna, 
chute AS Chute, passe AS Passe, ovr AS Geral, fk_classe AS Posicao FROM tb_personagem WHERE passe < 90 AND passe > 80; -- Retorna todos os jogadores com menos de 90 e mais de 80 de passe (em referencia aos 2000 de defesa)

SELECT nome AS Jogador, idade AS Idade, pais AS Pais, pernaboa AS Perna, 
chute AS Chute, passe AS Passe, ovr AS Geral, fk_classe AS Posicao FROM tb_personagem WHERE nome LIKE 'C%';

SELECT nome AS Jogador, idade AS Idade, pais AS Pais, pernaboa AS Perna, 
chute AS Chute, passe AS Passe, ovr AS Geral, fk_classe AS Posicao
FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.id;
