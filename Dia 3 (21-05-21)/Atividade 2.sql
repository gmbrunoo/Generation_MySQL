CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id					BIGINT				AUTO_INCREMENT,
    categoria			VARCHAR(255),
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id					BIGINT				AUTO_INCREMENT,
    sabor				VARCHAR(255)		NOT NULL,
    preco				DECIMAL(10,2)		NOT NULL,
    
    categoria_id		BIGINT				NOT NULL,
        
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (categoria)
VALUES ('Tradicionais'), ('Especiais'), ('Premium'), ('Doces tradicionais'), ('Doces Especiais');

INSERT INTO tb_pizzas (sabor, preco, categoria_id)
VALUES 	('Mussarela', 29.95, 1), ('Calabresa', 29.95, 1), ('4 Queijos', 49.95, 2), 
		('Portuguesa', 49.95, 2), ('Lombo c/ Catupiry', 59.95, 2), ('Pepperoni', 59.95, 3),
        ('Parma c/ Gongonzola', 69.95, 3), ('Chocolate', 49.95, 4), ('Chocolate c/ Morango', 59.95, 5);
        
SELECT sabor, preco FROM tb_pizzas WHERE preco > 45.00;
SELECT sabor, preco FROM tb_pizzas WHERE preco BETWEEN 29.00 AND 60.00;
SELECT sabor, preco FROM tb_pizzas WHERE sabor LIKE "%Choc%";

SELECT 	P.sabor, P.preco, C.categoria 
FROM tb_pizzas AS P
INNER JOIN tb_categorias AS C
ON C.id = P.categoria_id;

SELECT 	P.sabor, P.preco, C.categoria 
FROM tb_pizzas AS P
INNER JOIN tb_categorias AS C
ON C.id = P.categoria_id
WHERE C.categoria = "Especiais";