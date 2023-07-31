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

insert into
editora (nome, site)
values
('Penguin Books', 'https://www.penguin.co.uk/'),
('Companhia das Letras', 'https://www.companhiadasletras.com.br/'),
('Rocco', 'https://www.rocco.com.br/editora/'),
('Harper & Row', default),
('Martins Fontes', 'https://www.martinsfontespaulista.com.br/'),
('Editora 34', 'https://www.editora34.com.br/'),
('Agir', default),
('Editora José Olympio', default);

insert into
autor (nome, nascimento, nacionalidade, biografia)
values
('Machado de Assis', '1839-06-21', 'Brasileiro', 'Machado de Assis foi um escritor, poeta, dramaturgo, crítico literário e jornalista brasileiro, considerado um dos maiores expoentes da literatura em língua portuguesa. Ele nasceu no Rio de Janeiro, no bairro do Morro do Livramento, então uma área degradada da cidade. Filho de pais mulatos e de origem humilde, Machado de Assis enfrentou dificuldades financeiras e obstáculos raciais ao longo de sua vida.'),
('George Orwell', '1903-06-25', 'Britânico', 'George Orwell foi um escritor e jornalista britânico, conhecido por suas obras distópicas e críticas sociais. Ele nasceu em Motihari, na Índia Britânica (atualmente parte da Índia), e estudou na Inglaterra em escolas privadas renomadas, como Eton.'),
('J.K. Rowling', '1965-07-31', 'Britânica', 'J.K. Rowling, cujo nome completo é Joanne Rowling, é uma escritora britânica famosa por ter criado a bem-sucedida série de livros "Harry Potter". Ela nasceu em Yate, Gloucestershire, na Inglaterra. Antes de se tornar uma autora renomada, Rowling enfrentou dificuldades financeiras e pessoais.'),
('Gabriel García Márquez', '1927-03-6', 'Colombiano', 'Gabriel García Márquez foi um escritor, jornalista e ganhador do Prêmio Nobel de Literatura em 1982. Ele nasceu na cidade de Aracataca, localizada no departamento de Magdalena, na Colômbia. García Márquez é considerado um dos mais importantes e influentes autores do século XX, conhecido principalmente por suas obras que pertencem ao gênero literário do realismo mágico.'),
('J.R.R. Tolkien', '1892-02-3', 'Britânico', 'J.R.R. Tolkien foi um escritor, professor universitário e filólogo britânico, mundialmente conhecido por ser o autor de algumas das obras mais importantes e influentes da literatura de fantasia. Ele nasceu em Bloemfontein, na então colônia britânica do Estado Livre de Orange (atualmente parte da África do Sul), mas passou a maior parte de sua vida na Inglaterra.'),
('Fiódor Dostoiévski', '1821-11-11', 'Russo', 'Fiódor Dostoiévski foi um dos mais importantes e influentes escritores da literatura russa e mundial. Ele nasceu em Moscou, na Rússia, em uma família de origem nobre. Seu pai era um médico militar e Dostoiévski foi criado em um ambiente com forte influência da cultura russa.'),
('Franz Kafka', '1883-07-03', 'Austro-Húngaro (atualmente República Tcheca)', 'Franz Kafka foi um dos escritores mais importantes do século XX e é amplamente conhecido por suas obras surrealistas e repletas de temas relacionados à alienação, burocracia e ansiedade existencial. Ele nasceu em Praga, que na época fazia parte do Império Austro-Húngaro e hoje é a capital da República Tcheca.'),
('Antoine de Saint-Exupéry', '1900-06-29', 'Francês', 'Antoine de Saint-Exupéry foi um escritor, piloto e aviador francês, conhecido principalmente por sua obra mais famosa, "O Pequeno Príncipe" (Le Petit Prince). Ele nasceu em Lyon, França, em uma família aristocrática, e desde jovem demonstrou interesse pela aviação.'),
('Harper Lee', '1926-04-28', 'Americana', 'Harper Lee foi uma renomada escritora americana, conhecida principalmente por seu aclamado romance "O Sol é para Todos" (To Kill a Mockingbird), publicado em 1960. Ela nasceu em Monroeville, Alabama, nos Estados Unidos.');

insert into
livros (editora_id, autor_id, titulo, ano_pubricacao, idioma, N_paginas, genero_id)
values
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












