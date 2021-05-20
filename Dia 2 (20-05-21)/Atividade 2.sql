CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos (
	id					INT					AUTO_INCREMENT,
    nome				VARCHAR(255)  		NOT NULL,
    descricao			VARCHAR(255),
    valorUnitario		DECIMAL				NOT NULL,
    minEstoque			SMALLINT,
    
PRIMARY KEY (id)
);

ALTER TABLE produtos MODIFY COLUMN valorUnitario DECIMAL(6,2);

INSERT INTO produtos (nome, descricao, valorUnitario, minEstoque) 
VALUES	('calça', 'calça jeans preta Gucci', 1000.00, 5),
		('camiseta', 'camiseta polo', '80.00', 10),
		('blusa', 'blusa de moleton', '200.00', 3),
		('tenis', 'tenis Nike', '300.00', 5),
		('boné', 'boné Lakers', '1200.00', 1);

SELECT * FROM produtos WHERE valorUnitario > 500.00;
SELECT * FROM produtos WHERE valorUnitario < 500.00;

UPDATE produtos SET minEstoque = 10 WHERE id = 4;