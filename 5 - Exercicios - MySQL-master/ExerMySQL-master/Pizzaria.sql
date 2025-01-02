CREATE DATABASE pizzaria_legal;
USE pizzaria_legal;

CREATE TABLE tb_categoria (
id_cat INT AUTO_INCREMENT,
    classe ENUM ('Pizza Doce','Pizza Salgada','Mista','Refrigerante','Acompanhamento'),
    PRIMARY KEY (id_cat)
    );

INSERT INTO tb_categoria(classe) VALUES ('Pizza Doce');
INSERT INTO tb_categoria(classe) VALUES ('Pizza Salgada');
INSERT INTO tb_categoria(classe) VALUES ('Mista');
INSERT INTO tb_categoria(classe) VALUES ('Refrigerante');
INSERT INTO tb_categoria(classe) VALUES ('Acompanhamento');

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza (
id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(225),
    medida VARCHAR(225),
    preco FLOAT,
    fk_categoria INT,
    PRIMARY KEY (id),
	FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_cat)
    );
    
INSERT INTO tb_pizza (nome,descricao,medida,preco,fk_categoria)
VALUES ("Calabresa","Pizza de Calabresa","Un",45.00,2);
INSERT INTO tb_pizza (nome,descricao,medida,preco,fk_categoria)
VALUES ("Chocolate","Pizza de Chocolate","Un",50.00,1);
INSERT INTO tb_pizza (nome,descricao,medida,preco,fk_categoria)
VALUES ("Coca-Cola","Refrigerante de Cola","L",10.00,4);
INSERT INTO tb_pizza (nome,descricao,medida,preco,fk_categoria)
VALUES ("Pepsi","Refrigerante de Cola","L",9.00,4);
INSERT INTO tb_pizza (nome,descricao,medida,preco,fk_categoria)
VALUES ("Portuguesa","Pizza com ervilha, azeitona, molho de tomate, cebola, ovos, queijo, linguiça calabresa e orégano","Un",40.00,2);
INSERT INTO tb_pizza (nome,descricao,medida,preco,fk_categoria)
VALUES ("Mussarella","Pizza de Queijo Muzzarella","Un",40.00,2);
INSERT INTO tb_pizza (nome,descricao,medida,preco,fk_categoria)
VALUES ("Batata Frita","Porçao de 250g de Batatas Fritas","G",24.00,5);
INSERT INTO tb_pizza (nome,descricao,medida,preco,fk_categoria)
VALUES ("Isca de Frango","Porçao de 250g frango empanado servido em isca","G",15.00,5);

SELECT nome AS Produto, descricao AS Descricao, medida AS Medida, preco AS Preco, 
fk_categoria AS Tipo FROM tb_pizza; -- Retorna todos os produtos 

SELECT nome AS Produto, descricao AS Descricao, medida AS Medida, preco AS Preco, 
fk_categoria AS Tipo FROM tb_pizza WHERE preco > 45; -- Retorna todos os jogadores com mais de 90 de chute (em referencia aos 2000 de ataque)

SELECT nome AS Produto, descricao AS Descricao, medida AS Medida, preco AS Preco, 
fk_categoria AS Tipo FROM tb_pizza WHERE preco > 29 AND preco <60;

SELECT nome AS Produto, descricao AS Descricao, medida AS Medida, preco AS Preco, 
fk_categoria AS Tipo FROM tb_pizza WHERE nome LIKE 'C%';

SELECT nome AS Produto, descricao AS Descricao, medida AS Medida, Preco AS Preco, 
fk_categoria AS Tipo 
FROM tb_pizza
INNER JOIN tb_categoria ON tb_pizza.id;