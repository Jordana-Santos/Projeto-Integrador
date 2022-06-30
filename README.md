# TRABALHO DE PI: Projeto Athena
Trabalho desenvolvido durante a disciplina de Desenvolvimento de Sistemas e Projeto Integrador

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo:<br>
Breno Amâncio Affonso: brenoaaffonso@gmail.com <br>
Débora Cristina de Souza Buzatto: deborabuzatto27@gmail.com <br>
Jordana Lourenço Santos: jordanals0519@gmail.com


### 2.MINIMUNDO<br>

O sistema proposto, terá as características aqui descritas. Um cliente solicitou um sistema para uma biblioteca, onde há empréstimos de livros para os alunos, adição e exclusão de livros disponíveis, além da classificação e organização entre eles. O sistema então contém livros que são emprestados a alunos e possuem as seguintes características: título do livro, ISBN, data de lançamento, editora e um autor, este último possuindo uma nacionalidade. A organização destes livros se dá com base em gêneros, que possuem códigos e descrições específicas, além de existirem sem nenhum livro disponível englobado por ele.
O sistema também aborda o cadastro de usuários para uma posterior identificação, contendo nome completo, data de nascimento, nome de usuário (username), e-mail, senha e um código para diferenciar entre aluno e funcionário. Cada aluno pode ter mais de um contato, mas um contato só existe com apenas um usuário. O aluno também pode avaliar os livros da biblioteca, deixando registrado o nome do livro, um comentário sobre e uma nota entre 1 e 5. Um livro possui apenas uma avaliação por usuário, mas um usuário pode avaliar mais de um livro.

 
 
### 3.PMC<br>
a) inclusão do PMC desenvolvido pelo grupo <br>
![Arquivo PDF do PMC de Breno, Débora e Jordana](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/PMC_biblioteca.pdf)


### 4.Personas e Histórias de usuário<br>

a) inclusão dos Personas desenvolvidos pelo grupo<br>

b) inclusão das Histórias de usuário desenvolvidas pelo grupo<br>


### 5.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Arquivo PDF do Protótipo do Projeto Athena](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/prototipoPI.pdf)


#### 5.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informações? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que informe quais são os gerentes de cada departamento incluindo as seguintes informações: número do departamento,  nome do departamento, e nome do gerente.
* Relatório de empregados por projeto incluindo as seguintes informações: número do projeto, nome do projeto, rg do empregado, nome do empregado e quantidade de horas de trabalho do empregado alocadas ao projeto.
* Relatório de empregados com dependentes incluindo as seguintes informações: rg do empregado, nome do empregado, nome do dependente, tipo de relação, data de nascimento do dependente e sexo do dependente.
* Relatório com a quantidade de empregados por cada departamento incluindo as seguintes informações: nome do departamento, supervisor e quantidade de empregados alocados no departamento.
* Relatório de supervisores e supervisionados incluindo as seguintes informações: nome do supervisor e nome do supervisionado.


> Ideias de Relatórios: livros locados, alunos, avaliações, livros

 
### 6 TABELA DE DADOS DO SISTEMA:
    A) Esta tabela deve conter **todos os atributos do sistema** e um mínimo de 10 linhas/registros de dados.
    B) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    C) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho
    
![Tabela de dados do Projeto Athena](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/Planilha%20de%20dados%20Projeto%20Integrador%20-%20P%C3%A1gina1.pdf)


 
 
 ### 7.MODELO CONCEITUAL<br>
            
![Alt text](https://github.com/Jordana-Santos/template_projeto_integrador/blob/main/arquivos/modelo_conceitual.jpeg)
      
    
#### 7.1 Descrição dos dados <br>
    [objeto]: [descrição do objeto]
##### Tabelas <br>
EDITORA: Tabela que armazena as informações relativas à editora.<br>
LIVRO: Tabela que armazena as informações relativas aos livros.<br>
AUTOR: Tabela que armazena as informações relativas ao autor.<br>
STATUS_LOCA: Tabela que armazena as informações relativas ao status de locação.<br>
CATEGORIA: Tabela que armazena as informações relativas à categoria do livro.<br>
PESSOA: Tabela que armazena as informações relativas à pessoa ou usuário.<br>
TIPO_PESSOA: Tabela que armazena as informações relativas ao tipo de usuário.<br>

##### Atributos <br>
codigo_edit: campo que armazena o código de cada editora.<br>
nome: campo que armazena o nome de cada editora, autor ou usuário.<br>
codigo_livro: campo que armazena o código de cada livro.<br>
titulo: campo que armazena o título de cada livro.<br>
data_publicacao: campo que armazena a data de publicação de cada livro.<br>
ISBN: campo que armazena o International Standard Book Number (Padrão Internacional de Numeração de Livro) de cada livro.<br>
codigo_autor: campo que armazena o código de cada autor.<br>
nacionalidade: campo que armazena a nacionalidade de cada autor.<br>
* codigo_status: campo que armazena o código de cada status de locação.<br>
* dsc_status: campo que armazena a descrição do status de cada status de locação.<br>
codigo_cat: campo que armazena o código de cada categoria.<br>
* genero: campo que armazena o gênero de cada livro.<br>
codigo_pessoa: campo que armazena o código de cada pessoa.<br>
data_nasc: campo que armazena a data de nascimento de cada pessoa.<br>
senha: campo que armazena a senha de cada pessoa.<br>
email: campo que armazena o email de cada pessoa.<br>
tipo: campo que armazena o tipo de usuário de cada pessoa.<br>
username: campo que armazena o nome de usuário de cada pessoa.<br>
* codigo_tipo: campo que armazena o código de cada tipo de usuário.<br>
* dsc_tipo: campo que armazena a descrição de cada tipo.<br>
cod_locacao: campo que armazena o código de cada locação.<br>
data_locacao: campo que armazena a data de cada locação.<br>
status: campo que armazena o status de cada locação.<br>
prev_entrega: campo que armazena a previsão de entrega de cada locação.<br>
qtd_estrelas: campo que armazena a quantidade de estrelas (um número inteiro de 1 a 5) de cada avaliação.<br>
data: campo que armazena a data de cada avaliação.<br>
cod_avaliacao: campo que armazena o código de cada avaliação.<br>
comentario: campo que armazena o comentário realizado em cada avaliação.<br>



-----

### 8	RASTREABILIDADE DOS ARTEFATOS<br>
        a) Historia de usuários vs protótipo (mockup)
        b) Protótipo vs Modelo conceitual
        (não serão aceitos modelos que não estejam em conformidade)
        c) Backlog (caso solicitado)
       

### 9	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 10	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
        
       
### 11	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados 
 <br> + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 12	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 12.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 12.2 PRINCIPAIS CONSULTAS DO SISTEMA 
 Inserir as principais consultas (relativas aos 5 principais relatórios) definidas previamente no iten 3.1 deste template.
 <br>
  a) Você deve apresentar as consultas em formato SQL para cad um dos relatórios.
 <br>
  b) Além da consulta deve ser apresentada uma imagem com o resultado obtido para cada consulta.<br>
 #### 12.3 ANTEPROJETO VERSÃO 1
 
 Link para [Modelo de Anteprojeto](https://docs.google.com/document/d/1oeVS2CUffbSNYWxIWZFY_mX6E5ao_PHU/edit?usp=sharing&ouid=104104747195236161434&rtpof=true&sd=true)
 
 <br>
 <br>
 
 
 
 
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
