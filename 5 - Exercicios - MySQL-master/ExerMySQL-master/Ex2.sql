CREATE DATABASE rh_macistore;
USE rh_macistore;

CREATE TABLE tb_estoque  (
    id_codigo INT NOT NULL AUTO_INCREMENT,
    produto VARCHAR(255),
    marca VARCHAR(255),
    cor VARCHAR(255),
    quantidade VARCHAR(255),
    preco DECIMAL(10,2),
    UNIQUE (id_codigo),
    PRIMARY KEY (id_codigo)
);

INSERT INTO tb_estoque (produto, cor, marca, quantidade, preco)
VALUES ("Air Max 90","Nike","Purple",2500);
INSERT INTO tb_estoque (produto, cor, marca, quantidade, preco)
VALUES ("Camisa Barcelona Home 19-20","Nike","Azul-Grena",250);
INSERT INTO tb_estoque (produto, cor, marca, quantidade, preco)
VALUES ("Camisa Arsenal Third 20-21","Adidas","Azul",350);
INSERT INTO tb_estoque (produto, cor, marca, quantidade, preco)
VALUES ("Bermuda de Moletom","Nike","Preto",150);
INSERT INTO tb_estoque (produto, cor, marca, quantidade, preco)
VALUES ("Calça Jogger","Adidas","Vermelha",450);

SELECT * FROM tb_estoque WHERE preco > 500;
SELECT * FROM tb_estoque WHERE preco < 500;
SELECT * FROM tb_estoque;