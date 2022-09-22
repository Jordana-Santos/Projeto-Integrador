# TRABALHO DE PI: Projeto Athena
Trabalho desenvolvido durante a disciplina de Desenvolvimento de Sistemas e Projeto Integrador

## 1. Componentes<br>
Integrantes do grupo:<br>
Breno Amâncio Affonso: brenoaaffonso@gmail.com <br>
Débora Cristina de Souza Buzatto: deborabuzatto27@gmail.com <br>
Jordana Lourenço Santos: jordanals0519@gmail.com


## 2. Minimundo<br>
O sistema proposto, terá as características aqui descritas. Um cliente solicitou um sistema para uma biblioteca, onde há empréstimos de livros para os alunos, adição e exclusão de livros disponíveis, além da classificação e organização entre eles. O sistema então contém livros que são emprestados a alunos e possuem as seguintes características: título do livro, ISBN, data de lançamento, editora e um autor, este último possuindo uma nacionalidade. A organização destes livros se dá com base em gêneros, que possuem códigos e descrições específicas, além de existirem sem nenhum livro disponível englobado por ele.
O sistema também aborda o cadastro de usuários para uma posterior identificação, contendo nome completo, data de nascimento, nome de usuário (username), e-mail, senha e um código para diferenciar entre aluno e funcionário. Cada aluno pode ter mais de um contato, mas um contato só existe com apenas um usuário. O aluno também pode avaliar os livros da biblioteca, deixando registrado o nome do livro, um comentário sobre e uma nota entre 1 e 5. Um livro possui apenas uma avaliação por usuário, mas um usuário pode avaliar mais de um livro.


## 3. PMC<br>
PMC desenvolvido pelo grupo: <br>

![PMC de Breno, Débora e Jordana](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/PMC%20Projeto%20Integrador.png) <br> 


## 4. Personas e Histórias de usuário<br>
Personas <br>
![Personas](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/persona%201.jpg)<br>

![Arquivo PDF das Personas](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/Atividade_personas.pdf)

Histórias de Usuário <br>
![Historias de Usuário](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/historias%20de%20usuario.jpg) <br>

![Arquivo PDF das Histórias de Usuário](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/hist%C3%B3rias%20de%20usu%C3%A1rio%20(2).pdf)


## 5. Rascunhos Básicos da Interface (Mockups)<br>

### 5.1 Protótipo do sistema web
Tela de login <br>
![Tela login web](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/login.png) <br>

Tela home do aluno <br>
![Tela home aluno web](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/home%20aluno.png) <br>

Tela home do bibliotecario <br>
![Tela home bibliotecario](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/home%20bibliotecario.png) <br>

Tela do perfil do aluno <br>
![Tela perfil aluno web](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/perfil%20aluno.png) <br>

Protótipo completo: <br>
![Arquivo PDF do protótipo web](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/projeto%20integrador%20v2.pdf)

### 5.1 Protótipo do sistema mobile
Tela de login <br>
![Tela login mobile](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/login_mobile.png) <br>

Tela home <br>
![Tela home mobile](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/home_mobile.png) <br>

Tela lista livros <br>
![Tela lista livros mobile](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/lista_livros_mobile.png) <br>

Tela de perfil <br>
![Tela perfil mobile](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/perfil_mobile.png) <br>

Protótipo completo: <br>
![Arquivo PDF do protótipo mobile](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/prototipo_mobile.pdf)

### 5.3 Quais Perguntas Podem Ser Respondidas Com o Sistema Proposto?
O Projeto Athena precisa, inicialmente, dos seguintes relatórios: <br>
Relatório que informe todos os livros já cadastrados no banco de dados, incluindo informações como: código, título, data de publicação, autor e editora.<br>
Relatório que informe alunos cadastrados, incluindo informações como: nome, data de nascimento, e-mail, username.<br>
Relatório que informe os livros locados bem como as informações de locação, como: nome do livro, código do livro, data de locação e previsão de entrega.<br>
Relatório dos autores já cadastrados, contendo o nome e sua nacionalidade.<br>
Relatório das editoras com livros cadastrados no sistema.<br>
Relatório de avaliações de um determinado livro contendo: o nome do livro, sua nota, a data de avaliação e um comentário.<br>


## 6. Tabela de Dados do Sistema: <br>

![Arquivo PDF da Tabela de dados](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/Planilha%20de%20dados%20Projeto%20Integrador.pdf)

 ## 7. Modelo Conceitual<br>
            
![Modelo conceitual em PNG](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/Conceitual_Athena.png) <br>

![Modelo conceitual BrModelo](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/Conceitual_Athena.brM3) <br>
<br>
3 principais entidades do sistema: <br>
 - LIVRO
 - PESSOA
 - STATUS_LOCA

Principais fluxos de informação do sistema: <br>
- LIVRO
- PESSOA
- LIVRO_PESSOA_FAV

### 7.1 Descrição dos dados <br>

> Tabela 
>> Atributos da tabela 

> EDITORA: Tabela que armazena as informações relativas à editora.<br>
>> codigo_edit: campo que armazena o código de cada editora.<br>
   nome: campo que armazena o nome de cada editora.<br>

> LIVRO: Tabela que armazena as informações relativas aos livros.<br>
>> codigo_livro: campo que armazena o código de cada livro.<br>
   titulo: campo que armazena o título de cada livro.<br>
   data_publicacao: campo que armazena a data de publicação de cada livro.<br>
   ISBN: campo que armazena o International Standard Book Number (Padrão Internacional de Numeração de Livro) de cada livro.<br>
   sinopse: campo que armazena a sinopse de cada livro.<br> 
   edicao: campo que armazena a edição de cada livro.<br>
   volume: campo que armazena o volume de cada livro.<br>
   qtd_paginas: campo que armazena a quantidade de páginas de cada livro.<br>

> AUTOR: Tabela que armazena as informações relativas ao autor.<br>
>> codigo_autor: campo que armazena o código de cada autor.<br>
   nome: campo que armazena o nome de cada autor.<br>
   nacionalidade: campo que armazena a nacionalidade de cada autor.<br>
   
> STATUS_LOCA: Tabela que armazena as informações relativas ao status de locação.<br>
>> codigo_status: campo que armazena o código de cada status de locação.<br>
   dsc_status: campo que armazena a descrição do código de cada status de locação.<br>

> CATEGORIA: Tabela que armazena as informações relativas à categoria do livro.<br>
>> codigo_categoria: campo que armazena o código de cada categoria.<br>
   dsc_categoria: campo que armazena a descrição do código (o nome do gênero) de cada categoria.<br>
   img_categoria: campo que armazena a imagem da capa de cada livro.<br>

> PESSOA: Tabela que armazena as informações relativas à pessoa ou usuário.<br>
>> codigo_pessoa: campo que armazena o código de cada pessoa.<br>
   nome: campo que armazena o nome de cada usuário.<br>
   data_nasc: campo que armazena a data de nascimento de cada pessoa.<br>
   senha: campo que armazena a senha de cada pessoa.<br>
   email: campo que armazena o email de cada pessoa.<br>
   username: campo que armazena o nome de usuário de cada pessoa.<br>
   img_perfil: campo que armazena a imagem de perfil de cada pessoa.<br>

> TIPO_PESSOA: Tabela que armazena as informações relativas ao tipo de usuário.<br>
>> codigo_tipo: campo que armazena o código de cada tipo de usuário.<br>
   dsc_tipo: campo que armazena a descrição do código de cada tipo de usuário.<br>
   
 > COMENTARIO: Tabela que armazena o comentário realizado em cada avaliação <br>
>> codigo_cometário: Campo que armazena o código de cada comentário. <br>
   dsc_comentario: Campo que armazena os comentários. <br>

> Atributos do relacionamento LOCADO: <br>
>> codigo_locacao: campo que armazena o código de cada locação.<br>
   data_locacao: campo que armazena a data de cada locação.<br>
   data_entrega: campo que armazena a data de entrega de cada livro.<br>

> Atributos do relacionamento AVALIADO:
>> qtd_estrelas: campo que armazena a quantidade de estrelas (um número inteiro de 1 a 5) de cada avaliação.<br>
   data: campo que armazena a data de cada avaliação.<br>
   cod_avaliacao: campo que armazena o código de cada avaliação.<br> 
   
> Atributos do relacionamento FAVORITADO: <br>
>> codigo_favorito: campo que armazena o código ao favoritar o livro.<br> <br>


## 8.	Rastreabilidade dos Artefatos <br>
Historia de usuários vs protótipo (mockup) <br>
![hu x prototipo](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/hu%20x%20prototipo.jpg) <br>

Protótipo vs Modelo conceitual <br>
![prototipo x modelo conceitual](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/prototipo%20x%20mod%20conceitual.jpg) <br>

![Arquivo completo de Rastreabilidade](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/Rastreabilidade%20no%20sistema.pdf) <br>

## 9.	Modelo Lógico <br>
![Modelo lógico em PNG](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/Logico_Athena.png) <br>

![Modelo lógico no BrModelo](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/Logico_Athena.brM3) <br>

## 10.	Modelo Físico <br>
        
![Modelo físico em .txt](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/Fisico_Athena.txt) <br>

![Modelo físico em .sql](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/Fisico_Athena.sql) <br>

## 11.	Insert Aplicado Nas Tabelas do Banco de Dados <br>

![Inserts em .txt das tabelas](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/Fisico_Inserts_Athena.txt) <br>

![Inserts em .sql das tabelas](https://github.com/Jordana-Santos/Projeto-Integrador/blob/main/arquivos/Fisico_Inserts_Athena.sql) <br>

## 12.	Tabelas e Principais Consultas <br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 12.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 12.2 PRINCIPAIS CONSULTAS DO SISTEMA 
 Inserir as principais consultas (relativas aos 5 principais relatórios) definidas previamente no iten 3.1 deste template.
 <br>
  a) Você deve apresentar as consultas em formato SQL para cad um dos relatórios.
 <br>
  b) Além da consulta deve ser apresentada uma imagem com o resultado obtido para cada consulta.<br>
  
 #### 12.3 ANTEPROJETO VERSÃO 1
 
 ![Anteprojeto em .pdf](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/AnteProjeto.pdf)
 
 <br>
 <br>
 
 ---
 
 
 ### 13 Gráficos, relatórios, integração com Linguagem de programação e outras solicitações.<br>
     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>
 #### 13.1	Integração com Linguagem de programação; <br>
 #### 13.2	Desenvolvimento de gráficos/relatórios pertinentes, juntamente com demais <br>
 #### solicitações feitas pelo professor. <br>
 #### 13.3 ANTEPROJETO VERSÃO 2
 <br>
 <br>
 
 
 ### 14 Slides e Apresentação em vídeo. <br>
     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>
 #### 14.1 Slides; <br>
 #### 14.2 Apresentação em vídeo <br>
 #### 14.3 ANTEPROJETO VERSÃO FINAL
 <br>
 <br>   


    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
   
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/

#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")
