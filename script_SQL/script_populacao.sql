-- Inserção de gêneros literários na tabela 'genero'
INSERT INTO 
genero (nome)
VALUES 
('Ficção Distópica'),
('Fantasia'),
('Realismo Mágico'),
('Sátira Política'),
('Fantasia Épica'),
('Romance Psicológico'),
('Ficção Absurda'),
('Literatura Infantil'),
('Romance Clássico');

-- Inserção de editoras na tabela 'editora'
INSERT INTO
editora (nome, site)
VALUES
('Penguin Books', 'https://www.penguin.co.uk/'),
('Companhia das Letras', 'https://www.companhiadasletras.com.br/'),
('Rocco', 'https://www.rocco.com.br/editora/'),
('Harper & Row', default), -- 'default' indica que o valor padrão da coluna será usado
('Martins Fontes', 'https://www.martinsfontespaulista.com.br/'),
('Editora 34', 'https://www.editora34.com.br/'),
('Agir', default), -- 'default' novamente para o valor padrão
('Editora José Olympio', default);

-- Inserção de autores na tabela 'autor'
INSERT INTO
autor (nome, nascimento, nacionalidade, biografia)
VALUES
('Machado de Assis', '1839-06-21', 'Brasileiro', 'Machado de Assis foi um escritor...'),
('George Orwell', '1903-06-25', 'Britânico', 'George Orwell foi um escritor...'),
('J.K. Rowling', '1965-07-31', 'Britânica', 'J.K. Rowling, cujo nome completo...'),
('Gabriel García Márquez', '1927-03-6', 'Colombiano', 'Gabriel García Márquez foi um escritor...'),
('J.R.R. Tolkien', '1892-02-3', 'Britânico', 'J.R.R. Tolkien foi um escritor...'),
('Fiódor Dostoiévski', '1821-11-11', 'Russo', 'Fiódor Dostoiévski foi um dos mais importantes...'),
('Franz Kafka', '1883-07-03', 'Austro-Húngaro (atualmente República Tcheca)', 'Franz Kafka foi um dos escritores...'),
('Antoine de Saint-Exupéry', '1900-06-29', 'Francês', 'Antoine de Saint-Exupéry foi um escritor...'),
('Harper Lee', '1926-04-28', 'Americana', 'Harper Lee foi uma renomada escritora...');

-- Inserção de livros na tabela 'livros'
INSERT INTO
livros (editora_id, autor_id, titulo, ano_pubricacao, idioma, N_paginas, genero_id)
VALUES
(2, 1, 'Dom Casmurro', '1899', 'Português', 240, 1),
(1, 2, '1984', '1949', 'Inglês', 328, 2),
(3, 3, 'Harry Potter e a Pedra Filosofal', '1997', 'Português', 223, 3),
(4, 4, 'Cem Anos de Solidão', '1967', 'Espanhol', 432, 4),
(2, 2, 'A Revolução dos Bichos', '1945', 'Português', 152, 5),
(5, 5, 'O Senhor dos Anéis - A Sociedade do Anel', '1954', 'Português', 576, 6),
(6, 6, 'Crime e Castigo', '1866', 'Português', 544, 7),
(2, 7, 'A Metamorfose', '1915', 'Português', 112, 8),
(7, 8, 'O Pequeno Príncipe', '1943', 'Português', 96, 9),
(8, 9, 'O Sol é para Todos', '1960', 'Português', 364, 10);
