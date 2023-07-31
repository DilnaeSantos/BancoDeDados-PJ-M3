create table editora (
 id int PRIMARY KEY not null auto_increment,
 nome varchar(255) not null default 'indefinida',
 site varchar(255)
)default charset = utf8mb4;

create table autor (
  id int PRIMARY KEY not null auto_increment,
  nome varchar(255) not null default 'desconhecido',
  nascimento date,
  nacionalidade varchar(255),
  biografia text
)default charset = utf8mb4;

create table livros (
  id int PRIMARY KEY not null auto_increment,
  editora_id int,
  autor_id int not null, 
  titulo varchar(255) not null,
  ano_pubricacao year,
  idioma varchar(50) not null,
  N_paginas int,
  FOREIGN KEY (editora_id) REFERENCES editora(id),
  FOREIGN KEY (autor_id) REFERENCES autor(id)
)default charset = utf8mb4;

create table genero (
  id int PRIMARY KEY not null auto_increment,
  nome varchar(50) not null default 'indefinido'
)default charset = utf8mb4;

create table livro_genero (
  livro_id int not null,
  genero_id int not null, 
  FOREIGN KEY (livro_id) REFERENCES livros(id),
  FOREIGN KEY (genero_id) REFERENCES genero(id),
  PRIMARY KEY (livro_id, genero_id)
)default charset = utf8mb4;

ALTER TABLE livros ADD FOREIGN KEY (autor_id) REFERENCES autor(id);

ALTER TABLE editora
DROP COLUMN endereco;

alter table editora # modificar alguma coluna
modify column site varchar(255) default 'Não tem';

alter table autor # modificar alguma coluna
modify column biografia longtext;

ALTER TABLE livros
ADD COLUMN genero_id INTEGER;
ALTER TABLE livros
ADD CONSTRAINT fk_genero
FOREIGN KEY (genero_id)
REFERENCES genero (id);
