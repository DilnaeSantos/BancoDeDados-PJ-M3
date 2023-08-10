-- Criação da tabela 'editora'
create table editora (
 id int PRIMARY KEY not null auto_increment, -- ID da editora (chave primária)
 nome varchar(255) not null default 'indefinida', -- Nome da editora (obrigatório, valor padrão é 'indefinida')
 site varchar(255) -- Site da editora
)default charset = utf8mb4;

-- Criação da tabela 'autor'
create table autor (
  id int PRIMARY KEY not null auto_increment, -- ID do autor (chave primária)
  nome varchar(255) not null default 'desconhecido', -- Nome do autor (obrigatório, valor padrão é 'desconhecido')
  nascimento date, -- Data de nascimento do autor
  nacionalidade varchar(255), -- Nacionalidade do autor
  biografia text -- Biografia do autor
)default charset = utf8mb4;

-- Criação da tabela 'livros'
create table livros (
  id int PRIMARY KEY not null auto_increment, -- ID do livro (chave primária)
  editora_id int, -- ID da editora do livro
  autor_id int not null, -- ID do autor do livro (obrigatório)
  titulo varchar(255) not null, -- Título do livro (obrigatório)
  ano_pubricacao year, -- Ano de publicação do livro
  idioma varchar(50) not null, -- Idioma do livro (obrigatório)
  N_paginas int, -- Número de páginas do livro
  FOREIGN KEY (editora_id) REFERENCES editora(id), -- Chave estrangeira referenciando a tabela 'editora'
  FOREIGN KEY (autor_id) REFERENCES autor(id) -- Chave estrangeira referenciando a tabela 'autor'
)default charset = utf8mb4;

-- Criação da tabela 'genero'
create table genero (
  id int PRIMARY KEY not null auto_increment, -- ID do gênero (chave primária)
  nome varchar(50) not null default 'indefinido' -- Nome do gênero (obrigatório, valor padrão é 'indefinido')
)default charset = utf8mb4;

-- Criação da tabela 'livro_genero' para relação muitos-para-muitos entre 'livros' e 'genero'
create table livro_genero (
  livro_id int not null, -- ID do livro
  genero_id int not null, -- ID do gênero
  FOREIGN KEY (livro_id) REFERENCES livros(id), -- Chave estrangeira referenciando a tabela 'livros'
  FOREIGN KEY (genero_id) REFERENCES genero(id), -- Chave estrangeira referenciando a tabela 'genero'
  PRIMARY KEY (livro_id, genero_id) -- Chave primária composta pelos IDs do livro e do gênero
)default charset = utf8mb4;

-- Adiciona uma chave estrangeira na tabela 'livros' para 'genero'
ALTER TABLE livros
ADD COLUMN genero_id INTEGER;
ALTER TABLE livros
ADD CONSTRAINT fk_genero
FOREIGN KEY (genero_id)
REFERENCES genero (id);

-- Adiciona uma chave estrangeira na tabela 'livros' para 'autor'
ALTER TABLE livros ADD FOREIGN KEY (autor_id) REFERENCES autor(id);

-- Remove a coluna 'endereco' da tabela 'editora'
ALTER TABLE editora
DROP COLUMN endereco;

-- Modifica a coluna 'site' da tabela 'editora' para ter um valor padrão 'Não tem'
alter table editora
modify column site varchar(255) default 'Não tem';

-- Modifica a coluna 'biografia' da tabela 'autor' para ter o tipo 'longtext'
alter table autor
modify column biografia longtext;

