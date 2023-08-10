
<h1>Olá, seja bem-vindo à Biblioteca Virtual de Livros</h1>

<h2>Banco de Dados "Biblioteca de Livros"</h2>
<p>Este banco de dados foi projetado para armazenar informações sobre uma biblioteca de livros, incluindo detalhes sobre editoras, autores, gêneros e os próprios livros.</p>

<h2>Tabelas</h2>

<h3>Tabela <em>editora</em></h3>
<p>Armazena informações sobre as editoras dos livros.</p>
<ul>
 <li><strong>id:</strong> ID único da editora.</li>
 <li><strong>nome:</strong> Nome da editora.</li>
 <li><strong>site:</strong> Site da editora.</li>
</ul>

<h3>Tabela <em>autor</em></h3>
<p>Armazena informações sobre os autores dos livros.</p>
<ul>
 <li><strong>id:</strong> ID único do autor.</li>
 <li><strong>nome:</strong> Nome do autor.</li>
 <li><strong>nascimento:</strong> Data de nascimento do autor.</li>
 <li><strong>nacionalidade:</strong> Nacionalidade do autor.</li>
 <li><strong>biografia:</strong> Biografia do autor.</li>
</ul>

<h3>Tabela <em>genero</em></h3>
<p>Armazena informações sobre os gêneros literários.</p>
<ul>
 <li><strong>id:</strong> ID único do gênero.</li>
 <li><strong>nome:</strong> Nome do gênero.</li>
</ul>

<h3>Tabela <em>livros</em></h3>
<p>Armazena informações sobre os livros.</p>
<ul>
 <li><strong>id:</strong> ID único do livro.</li>
 <li><strong>editora_id:</strong> Chave estrangeira para a tabela 'editora'.</li>
 <li><strong>autor_id:</strong> Chave estrangeira para a tabela 'autor'.</li>
 <li><strong>titulo:</strong> Título do livro.</li>
 <li><strong>ano_pubricacao:</strong> Ano de publicação do livro.</li>
 <li><strong>idioma:</strong> Idioma do livro.</li>
 <li><strong>N_paginas:</strong> Número de páginas do livro.</li>
 <li><strong>genero_id:</strong> Chave estrangeira para a tabela 'genero'.</li>
</ul>

<h3>Tabela <em>livro_genero</em></h3>
<p>Tabela de relacionamento muitos-para-muitos entre 'livros' e 'genero'.</p>
<ul>
 <li><strong>livro_id:</strong> Chave estrangeira para a tabela 'livros'.</li>
 <li><strong>genero_id:</strong> Chave estrangeira para a tabela 'genero'.</li>
</ul>

<h2>População de Dados</h2>
<p>Exemplos de dados de exemplo foram inseridos nas tabelas:</p>
<ul>
 <li>Tabela 'genero': Gêneros literários foram inseridos.</li>
 <li>Tabela 'editora': Editoras, com e sem sites, foram inseridas.</li>
 <li>Tabela 'autor': Autores com biografias e detalhes foram inseridos.</li>
 <li>Tabela 'livros': Diversos livros foram inseridos, associados a editoras, autores e gêneros.</li>
</ul>

<h2>Exemplos de Consultas</h2>
<p>Alguns exemplos de consultas que podem ser executadas neste banco de dados:</p>
<ul>
 <li>Encontrar todos os livros de um autor específico.</li>
 <li>Encontrar todos os livros de um determinado gênero.</li>
 <li>Recuperar detalhes sobre um livro específico, incluindo autor, editora e gênero.</li>
</ul>

<h2>Instruções de Uso</h2>
<p>Para usar este banco de dados, você pode executar consultas SQL para recuperar informações específicas que você precisa. Você também pode adicionar mais dados conforme necessário para construir sua própria biblioteca virtual.</p>

<h2>Considerações</h2>
<p>Este banco de dados usa chaves primárias e estrangeiras para garantir a integridade dos dados. Certifique-se de entender essas relações ao adicionar ou consultar informações.</p>
