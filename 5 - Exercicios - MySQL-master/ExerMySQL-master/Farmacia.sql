CREATE DATABASE farmacia_do_bem;
USE farmacia_do_bem;

CREATE TABLE tb_categoria (
id_cat INT AUTO_INCREMENT,
    classe ENUM ('Remedio sem Prescricao','Remedio com Prescricao','Outros'),
    PRIMARY KEY (id_cat)
    );

INSERT INTO tb_categoria(classe) VALUES ('Remedio sem Prescricao');
INSERT INTO tb_categoria(classe) VALUES ('Remedio com Prescricao');
INSERT INTO tb_categoria(classe) VALUES ('Outros');


SELECT * FROM tb_categoria;

CREATE TABLE tb_produto (
id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(225),
    medida VARCHAR(225),
    preco FLOAT,
    fk_categoria INT,
    PRIMARY KEY (id),
	FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_cat)
    );
    
INSERT INTO tb_produto (nome,descricao,medida,preco,fk_categoria)
VALUES ("Amoxixilina","Remedio p/gripe","Un",45.00,1);
INSERT INTO tb_produto (nome,descricao,medida,preco,fk_categoria)
VALUES ("Chocolate Light","Chocolate Meio-Amargo","Un",5.00,3);
INSERT INTO tb_produto (nome,descricao,medida,preco,fk_categoria)
VALUES ("Coca-Cola Zero","Refrigerante de Cola sem Acucar","L",5.00,3);
INSERT INTO tb_produto (nome,descricao,medida,preco,fk_categoria)
VALUES ("Dipirona","Remedio p/ Febre","Un",15.00,2);
INSERT INTO tb_produto (nome,descricao,medida,preco,fk_categoria)
VALUES ("Esparadrapo","Faixa p/ Curativos","Un",10.00,3);
INSERT INTO tb_produto (nome,descricao,medida,preco,fk_categoria)
VALUES ("Minoxidil","Produto p/ Crescimento Capilar","Un",44.00,3);
INSERT INTO tb_produto (nome,descricao,medida,preco,fk_categoria)
VALUES ("Loratadina","Remedio p/ Tosse","Un",14.00,1);
INSERT INTO tb_produto (nome,descricao,medida,preco,fk_categoria)
VALUES ("Chiclete","Goma de Mascar","Un",4.00,3);

SELECT nome AS Produto, descricao AS Descricao, medida AS Medida, preco AS Preco, 
fk_categoria AS Tipo FROM tb_produto; -- Retorna todos os produtos 

SELECT nome AS Produto, descricao AS Descricao, medida AS Medida, preco AS Preco, 
fk_categoria AS Tipo FROM tb_produto WHERE preco > 50;

SELECT nome AS Produto, descricao AS Descricao, medida AS Medida, preco AS Preco, 
fk_categoria AS Tipo FROM tb_produto WHERE preco > 3 AND preco <60;

SELECT nome AS Produto, descricao AS Descricao, medida AS Medida, preco AS Preco, 
fk_categoria AS Tipo FROM tb_produto WHERE nome LIKE 'B%';

SELECT nome AS Produto, descricao AS Descricao, medida AS Medida, Preco AS Preco, 
fk_categoria AS Tipo 
FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.id;