CREATE DATABASE rh;
USE rh;

CREATE TABLE funcionarios(
	id				INT					AUTO_INCREMENT,
    nome			VARCHAR(255)		NOT NULL,
    idade			INT					NOT NULL,
    cpf				VARCHAR(11)			NOT NULL,
    salario			DECIMAL(6,2)		NOT NULL,
    cargo			VARCHAR(255)		NOT NULL,
    
PRIMARY KEY (id)    
);

INSERT INTO funcionarios (nome, idade, cpf, salario, cargo)
VALUES 	('Bruno Godinho', 25, '38606171840', 4000.00, 'Dev Java Jr'),
		('Jaqueline Nakazawa', 24, '12345678910', 5000.00, 'Pericia contábil'),
        ('Anne Nakazawa', 18, '98765432100', '1500.00', 'Estagiaria');
        
SELECT id, nome, idade, cpf, salario, cargo
FROM funcionarios
WHERE salario > 2000.00;

SELECT id, nome, idade, cpf, salario, cargo
FROM funcionarios
WHERE salario < 2000.00;

UPDATE funcionarios SET cargo = 'Fiscal',  salario = '1800.00' WHERE id = 3;

