/* Logico_biblioteca_v2: */


CREATE TABLE LIVRO (
        codigo_livro integer PRIMARY KEY AUTO_INCREMENT,
        ISBN bigint,
        data_publicacao date,
        titulo varchar(100),
        FK_EDITORA_codigo_edit integer
);


CREATE TABLE EDITORA (
        codigo_edit integer PRIMARY KEY AUTO_INCREMENT,
        nome varchar(100)
);


CREATE TABLE AUTOR (
        nome varchar(100),
        codigo_autor integer PRIMARY KEY AUTO_INCREMENT,
        nacionalidade varchar(100)
);


CREATE TABLE CATEGORIA (
        dsc_categoria varchar(100),
        codigo_categoria integer PRIMARY KEY AUTO_INCREMENT
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
        dsc_comentario varchar(500),
        codigo_comentario integer PRIMARY KEY AUTO_INCREMENT
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


CREATE TABLE LIVRO_CATEGORIA (
        FK_CATEGORIA_codigo_categoria integer,
        FK_LIVRO_codigo_livro integer
);


CREATE TABLE LIVRO_AUTOR (
        FK_LIVRO_codigo_livro integer,
        FK_AUTOR_codigo_autor integer
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