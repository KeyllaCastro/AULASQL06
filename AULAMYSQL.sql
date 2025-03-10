/* DDl - Comando de definição de estrutura, CRIANDO BIBBLIOTECA*/
CREATE DATABASE biblioteca_uirapuru;

/* Diz que SGBDR que vamos usar este banco de dados daqui para frente. ESTRUTURA DE UMA TABELA*/
USE biblioteca_uirapuru;

CREATE TABLE livros (
	id INT PRIMARY KEY, 
    titulo VARCHAR(255),
    autor VARCHAR(255),
    preco DECIMAL (10, 2),
    editora VARCHAR(255),
    genero VARCHAR(255),
    ano_publicado INT
);

/*Removendo coluna genero, alterando a estrutura*/
ALTER TABLE livros DROP genero;

/*Removendo coluna editora, alterando a estrutura*/
ALTER TABLE livros DROP editora;

SELECT * FROM livros; /*DQL - consultando a estrutura*/

/*omando para adicionar uma coluna em uma tabela*/
ALTER TABLE livros ADD CNPJ INT;
SELECT * FROM livros; /*DQL - consultando a estrutura*/

/*Alterar o tipo de dado de uma coluna, exemplo: em 2025, o campo de cnpj
passará a ser alfanumerico então ele pode ser INT, vamos alterar*/
ALTER TABLE livros MODIFY CNPJ VARCHAR(25);

SELECT * FROM livros; /*DQL - consultando a estrutura da tabela*/

DESC livros; /*Vai mostrar o tipo, mostra descrição da tabela*/

/*Alterar a coluna para impedir que ela seja nula, ou seja, ela vai precisar ter registro
senão dará erro*/

ALTER TABLE livros MODIFY tituLo VARCHAR(255) NOT NULL;
ALTER TABLE livros MODIFY autor VARCHAR(255) NOT NULL;

DESC livros; /*Vai mostrar o tipo, mostra descrição da tabela*/

/*REMOVENDO A COLUNA CNPJ*/
ALTER TABLE livros DROP CNPJ;
SELECT * FROM livros; /*DQL - consultando a estrutura da tabela*/

/*inserir multiplos registreos DML*/

INSERT INTO livros (id, titulo, autor)VALUES
(1, 'Quebrando a cabeça com JAVA', 'Josefino'),
(2, 'JAVA 8', 'Peter Jand1'),
(3, 'Google Android', 'Ricardo Lechete');

SELECT * FROM livros; /*DQL - consultando a estrutura da tabela*/
UPDATE livros
SET preco = 99.99
WHERE id = 1;

/*Deleta todos os registros da tabela*/
TRUNCATE TABLE livros;

SELECT * FROM livros; /*DQL - consultando a estrutura da tabela*/
DROP TABLE livros;



