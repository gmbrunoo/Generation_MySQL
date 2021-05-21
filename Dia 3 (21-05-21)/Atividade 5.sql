CREATE DATABASE db_contruindo;
USE db_contruindo;

CREATE TABLE tb_categorias(
	id				BIGINT				AUTO_INCREMENT,
    categoria		VARCHAR(100),
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
	id				BIGINT				AUTO_INCREMENT,
    nome			VARCHAR(255)		NOT NULL,
    valor			DECIMAL(10,2)		NOT NULL,
    categoria_id	BIGINT				NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (categoria)
VALUES ('categoria A'), ('categoria B'), ('categoria C');

INSERT INTO tb_produtos (nome, valor, categoria_id)
VALUES	('PRODUTO 1', 10, 1),('PRODUTO 2', 10, 1),('PRODUTO 3', 20, 1),('PRODUTO 4', 20, 1),
		('PRODUTO 5', 30, 2),('PRODUTO 6', 30, 2),('PRODUTO 7', 40, 2),
        ('PRODUTO 8', 50, 3),('PRODUTO 9', 100, 3);

SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%8";

SELECT 	tb_produtos.nome, tb_produtos.valor,
		tb_categorias.categoria
FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id
WHERE  tb_categorias.categoria = 'Categoria B';