CREATE DATABASE db_farmacia;
USE db_farmacia;

CREATE TABLE tb_categorias(
	id 						BIGINT					AUTO_INCREMENT,
    categoria				VARCHAR(255)			NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_medicamentos(
	id						BIGINT					AUTO_INCREMENT,
    nome					VARCHAR(255)			NOT NULL,
    valor					DECIMAL(10,2)			NOT NULL,
    validade				DATE					NOT NULL,
    lote					VARCHAR(100),
    
    categoria_id			BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (categoria)
VALUES 	('Fitoterápico'), ('Alopático'), ('Homeopático'), 
		('Similar'), ('Genérico'), ('Referencia'), ('Manipulado');
        
SELECT CURDATE() + INTERVAL 30 DAY;
        
INSERT INTO tb_medicamentos (nome, valor, validade, lote, categoria_id)
VALUES 	('Ginko Biloba', 25, (SELECT CURDATE() + INTERVAL 30 DAY), '1B', 1),
		('Neocopan', 52, (SELECT CURDATE() + INTERVAL 40 DAY), '1D', 2),
        ('Atenol', 30, (SELECT CURDATE() + INTERVAL 60 DAY), '2C', 6),
        ('Atenol', 20, (SELECT CURDATE() + INTERVAL 60 DAY), '2C', 5),
        ('Atenopress', 10, (SELECT CURDATE() + INTERVAL 60 DAY), '2C', 4);

SELECT nome, valor, validade, lote FROM tb_medicamentos WHERE valor > 50;
SELECT nome, valor, validade, lote FROM tb_medicamentos WHERE valor BETWEEN 3 AND 60;
SELECT nome, valor, validade, lote FROM tb_medicamentos WHERE nome LIKE "%B%";

SELECT 	M.nome, M.valor, M.validade, C.categoria 
FROM tb_medicamentos AS M
INNER JOIN tb_categorias AS C
ON C.id = M.categoria_id;

SELECT 	M.nome, M.valor, M.validade, C.categoria 
FROM tb_medicamentos AS M
INNER JOIN tb_categorias AS C
ON C.id = M.categoria_id
WHERE M.validade = (SELECT CURDATE() + INTERVAL 60 DAY);

SELECT 	M.nome, M.valor, M.validade, C.categoria 
FROM tb_medicamentos AS M
INNER JOIN tb_categorias AS C
ON C.id = M.categoria_id
WHERE C.categoria LIKE 'Genérico';