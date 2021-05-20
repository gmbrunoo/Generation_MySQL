CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_produtos(
	id			BIGINT				NOT NULL		AUTO_INCREMENT,
    nome		VARCHAR(255) 	 	NOT NULL,
    preco		DECIMAL				NOT NULL,
    
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, preco) VALUES	('tomate', 10.00),
												('maçã', 5.00);
                                
SELECT * FROM tb_produtos;
SELECT nome, preco FROM tb_produtos;
SELECT nome, preco FROM tb_produtos WHERE id = 2;
SELECT * FROM tb_produtos WHERE preco >= 10.00;

ALTER TABLE tb_produtos ADD COLUMN descricao VARCHAR(255);
ALTER TABLE tb_produtos DROP COLUMN descricao;

UPDATE tb_produtos SET descricao = 'mini tomate' WHERE id = 1;
UPDATE tb_produtos SET descricao = 'maça fuji' WHERE id = 2;

DELETE FROM tb_produtos WHERE id = 2;

