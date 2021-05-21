CREATE DATABASE db_curso;
USE db_curso;

CREATE TABLE tb_categorias(
	id				BIGINT				AUTO_INCREMENT,
    categoria		VARCHAR(100),
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_curso(
	id				BIGINT				AUTO_INCREMENT,
    nome			VARCHAR(255)		NOT NULL,
    valor			DECIMAL(10,2)		NOT NULL,
    categoria_id	BIGINT				NOT NULL,
	descricao		VARCHAR(255),
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (categoria)
VALUES ('Front-End'), ('Back-End'), ('Mobile');

INSERT INTO tb_curso (nome, valor, categoria_id, descricao)
VALUES	('HTML, CSS, JS', 100, 1, 'Curso de HTML 5 CSS3 e JS'),
		('BootSrtap', 100, 1, 'O mais popular framework front-end responsivo'),
        ('Materialize', 200, 1, 'Um framework front-end moderno e responsivo'),
		('Java Puro', 500, 1, 'Curso mais didático e completo de Java e OO'),
        ('C#', 500, 1, 'Aprenda C# em um só curso!'),
        ('PHP', 480, 1, 'Torne-se um Desenvolvedor PHP Completo'),
        ('Android Studio', 570, 3, '');

SELECT * FROM tb_curso WHERE valor > 500;
SELECT * FROM tb_curso WHERE valor BETWEEN 300 AND 600;
SELECT * FROM tb_curso WHERE nome LIKE "%j%";

SELECT 	tb_curso.nome, tb_curso.valor, tb_curso.descricao,
		tb_categorias.categoria
FROM tb_curso
INNER JOIN tb_categorias 
ON tb_curso.categoria_id = tb_categorias.id
WHERE  tb_curso.descricao LIKE "%completo%";