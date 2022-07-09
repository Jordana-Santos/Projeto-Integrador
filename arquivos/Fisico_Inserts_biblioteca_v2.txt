/* Logico_biblioteca_v2: */
-- Drops das tabelas já criadas
DROP TABLE IF EXISTS livro;
DROP TABLE IF EXISTS editora;
DROP TABLE IF EXISTS autor;
DROP TABLE IF EXISTS categoria;
DROP TABLE IF EXISTS pessoa;
DROP TABLE IF EXISTS status_loca;
DROP TABLE IF EXISTS comentario;
DROP TABLE IF EXISTS livro_pessoa_avalia;
DROP TABLE IF EXISTS tipo_pessoa;
DROP TABLE IF EXISTS livro_categoria;
DROP TABLE IF EXISTS livro_autor;
DROP TABLE IF EXISTS livro_pessoa_loca;

-- Creates das tabelas

CREATE TABLE EDITORA (
	codigo_edit integer PRIMARY KEY AUTO_INCREMENT,
	nome varchar(100)
);

CREATE TABLE AUTOR (
	codigo_autor integer PRIMARY KEY AUTO_INCREMENT,
	nome varchar(100),
	nacionalidade varchar(100)
);

CREATE TABLE CATEGORIA (
	dsc_categoria varchar(100),
	codigo_categoria integer PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE LIVRO (
	codigo_livro integer PRIMARY KEY AUTO_INCREMENT,
	titulo varchar(100),
data_publicacao date,
	ISBN bigint,
	FK_EDITORA_codigo_edit integer
);

CREATE TABLE LIVRO_AUTOR (
	FK_LIVRO_codigo_livro integer,
	FK_AUTOR_codigo_autor integer
);

CREATE TABLE LIVRO_CATEGORIA (
	FK_CATEGORIA_codigo_categoria integer,
	FK_LIVRO_codigo_livro integer
);

CREATE TABLE PESSOA (
	codigo_pessoa integer PRIMARY KEY AUTO_INCREMENT,
	nome varchar(150),
	data_nasc date,
	senha varchar(256),
	email varchar(100),
	username varchar(50),
	FK_TIPO_PESSOA_codigo_tipo integer
);

CREATE TABLE STATUS_LOCA (
	codigo_status integer PRIMARY KEY AUTO_INCREMENT,
	dsc_status varchar(50)
);

CREATE TABLE COMENTARIO (
	codigo_comentario integer PRIMARY KEY AUTO_INCREMENT,
dsc_comentario varchar(500)
);

CREATE TABLE LIVRO_PESSOA_AVALIA (
	FK_PESSOA_codigo_pessoa integer,
	FK_LIVRO_codigo_livro integer,
	FK_COMENTARIO_codigo_avaliacao_comentario integer,
	cod_avaliacao integer PRIMARY KEY AUTO_INCREMENT,
	data date,
	qtd_estrelas integer
);

CREATE TABLE TIPO_PESSOA (
	codigo_tipo integer PRIMARY KEY AUTO_INCREMENT,
	dsc_tipo varchar(50)
);

CREATE TABLE LIVRO_PESSOA_LOCA (
	FK_STATUS_LOCA_codigo_status integer,
	FK_PESSOA_codigo_pessoa integer,
	FK_LIVRO_codigo_livro integer,
	codigo_locacao integer,
	data_locacao date
);
 
ALTER TABLE LIVRO ADD CONSTRAINT FK_LIVRO_2
	FOREIGN KEY (FK_EDITORA_codigo_edit)
	REFERENCES EDITORA (codigo_edit)
	ON DELETE RESTRICT;
 
ALTER TABLE PESSOA ADD CONSTRAINT FK_PESSOA_2
	FOREIGN KEY (FK_TIPO_PESSOA_codigo_tipo)
	REFERENCES TIPO_PESSOA (codigo_tipo)
	ON DELETE CASCADE;
 
ALTER TABLE LIVRO_PESSOA_AVALIA ADD CONSTRAINT FK_LIVRO_PESSOA_AVALIA_2
	FOREIGN KEY (FK_PESSOA_codigo_pessoa)
	REFERENCES PESSOA (codigo_pessoa);
 
ALTER TABLE LIVRO_PESSOA_AVALIA ADD CONSTRAINT FK_LIVRO_PESSOA_AVALIA_3
	FOREIGN KEY (FK_LIVRO_codigo_livro)
	REFERENCES LIVRO (codigo_livro);
 
ALTER TABLE LIVRO_CATEGORIA ADD CONSTRAINT FK_LIVRO_CATEGORIA_1
	FOREIGN KEY (FK_CATEGORIA_codigo_categoria)
	REFERENCES CATEGORIA (codigo_categoria)
	ON DELETE SET NULL;
 
ALTER TABLE LIVRO_CATEGORIA ADD CONSTRAINT FK_LIVRO_CATEGORIA_2
	FOREIGN KEY (FK_LIVRO_codigo_livro)
	REFERENCES LIVRO (codigo_livro)
	ON DELETE SET NULL;
 
ALTER TABLE LIVRO_AUTOR ADD CONSTRAINT FK_LIVRO_AUTOR_1
	FOREIGN KEY (FK_LIVRO_codigo_livro)
	REFERENCES LIVRO (codigo_livro)
	ON DELETE RESTRICT;
 
ALTER TABLE LIVRO_AUTOR ADD CONSTRAINT FK_LIVRO_AUTOR_2
	FOREIGN KEY (FK_AUTOR_codigo_autor)
	REFERENCES AUTOR (codigo_autor)
	ON DELETE SET NULL;
 
ALTER TABLE LIVRO_PESSOA_LOCA ADD CONSTRAINT FK_LIVRO_PESSOA_LOCA_1
	FOREIGN KEY (FK_LIVRO_codigo_livro)
	REFERENCES LIVRO (codigo_livro)
	ON DELETE NO ACTION;
 
ALTER TABLE LIVRO_PESSOA_LOCA ADD CONSTRAINT FK_LIVRO_PESSOA_LOCA_2
	FOREIGN KEY (FK_STATUS_LOCA_codigo_status)
	REFERENCES STATUS_LOCA (codigo_status)
	ON DELETE NO ACTION;
 
ALTER TABLE LIVRO_PESSOA_LOCA ADD CONSTRAINT FK_LIVRO_PESSOA_LOCA_3
	FOREIGN KEY (FK_PESSOA_codigo_pessoa)
	REFERENCES PESSOA (codigo_pessoa)
	ON DELETE NO ACTION;

ALTER TABLE LIVRO_PESSOA_AVALIA ADD CONSTRAINT
FK_LIVRO_PESSOA_AVALIA_1
	FOREIGN KEY(FK_COMENTARIO_codigo_avaliacao_comentario)
	REFERENCES COMENTARIO(codigo_comentario)
	ON DELETE SET NULL;

-- Inserts

/*Tabela editora:*/
INSERT INTO editora(nome) VALUES ('milfontes'), ('LeYa'), ('Intrínseca');

/*Tabela livro:*/
INSERT INTO livro(titulo, data_publicacao, ISBN) VALUES ('harry potter e a pedra filosofal',
'1997-06-26', 9780613206334), ('percy jackson e o ladrão de raios', '2010-08-10', 9781423121701), ('gregor the overlander',
'2003-09-01', 9780439435369), ('god of war', '2018-08-28', 9788580444957), ('the witcher: the last wish', '1993-11-03', 9780316497541);

/*Tabela autor:*/
INSERT INTO autor(nome, nacionalidade) VALUES ('J.K. Rolling', 'Inglaterra'),
('Rick Riordan', 'Estados Unidos'), ('Suzanne Collins', 'Estados Unidos'), ('J.M.
Barlog', 'Estados Unidos'), ('Andrzej Sapkowski', 'Polônia');

/*Tabela categoria:*/
INSERT INTO categoria(dsc_categoria) VALUES ('romance'), ('literatura estrangeira'),
('fantasia'), ('terror'), ('suspense'), ('clássico'), ('poesia');

/* Tabela status_loca */
INSERT INTO status_loca(dsc_status) VALUES ('locado'), ('disponível');

/*Tabela livro_pessoa_loca */
INSERT INTO livro_pessoa_loca(data_locacao) VALUES ('2022-01-04'), ('2022-01-05'), ('2022-01-06'), ('2022-01-07'),
('2022-01-08');


/* Tabela tipo_pessoa */
INSERT INTO tipo_pessoa(dsc_tipo) VALUES ('administrador'), ('aluno');

/*Tabela pessoa:*/
INSERT INTO pessoa(nome, data_nasc, senha, email, username) VALUES
('Thiago da Silva', '2001-12-19', MD5(111), 'thiagosilva123@gmail.com', 'thigas'),
('André Pinheiros', '2006-03-06', MD5(222), 'andrepinhas@gmail.com',
'andrepinhas'), ('Alice Cardoso', '1993-05-07', MD5(333), 'rabbithole3@gmail.com', 
'lili'), ('Elisa Ramos', '2004-01-28', MD5(444), 'ramificalisa@gmail.com', 'lisa');

/*Tabela livro_pessoa_avalia:*/
INSERT INTO livro_pessoa_avalia(qtd_estrelas, data) VALUES (5,
'2022-06-04'), (3, '2022-06-15'), (4, '2022-09-07');

/*Tabela comentario*/
INSERT INTO comentario(dsc_comentario) VALUES ('Ótimo livro, imersão incrível, recomendo demais'), ('Os acontecimentos acontecem muito lentamente'), ('Um bom livro, porém está em más condições, quase desmontou enquanto lia.');

