CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno (
	id					INT					AUTO_INCREMENT,
    nome				VARCHAR(255)  		NOT NULL,
    ra					VARCHAR(9)			NOT NULL,
    cpf					VARCHAR(11)			NOT NULL			UNIQUE,
    nota				DECIMAL				NOT NULL,
    curso				VARCHAR(255)		NOT NULL,
    
PRIMARY KEY (id)
);

ALTER TABLE aluno MODIFY COLUMN nota DECIMAL(6,2);

INSERT INTO aluno (nome, ra, cpf, nota, curso)
VALUES	('Bruno Godinho', '123456789', '38606171840', 10.0, 'Desenvolvedor Java'),
		('Isaque', '987654321', '12345678910', 3, 'Desenvolvedor Java'),
        ('Jorge', '112233445', '09876543210', 8, 'Turismo'),
        ('Juarez', '987654123', '00012345678', 10, 'Economia');
        
SELECT * FROM aluno WHERE nota > 7.0;
SELECT id, nome, ra, cpf, nota, curso FROM aluno WHERE nota < 7.0;

UPDATE aluno SET nota = 3.7 WHERE id = 2;

