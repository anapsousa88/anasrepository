create database bdracing;

USE bdracing;

CREATE TABLE tbcarro
(
  id INT NOT NULL AUTO_INCREMENT, 
  nome_piloto VARCHAR(30) NOT NULL,
  nome_equipe VARCHAR(15) NOT NULL,
  modelo VARCHAR(15) NOT NULL,
  potencia VARCHAR(10) NOT NULL,
  CONSTRAINT PK_CARRO PRIMARY KEY (id)
);

CREATE TABLE tbcorrida
(
  id INT NOT NULL,
  id_pista_fk INT,
  id_carro1_fk INT,
  id_carro2_fk INT,
  nome_corrida VARCHAR(30),
  CONSTRAINT TBCORRIDA_PK PRIMARY KEY(id),
  FOREIGN KEY (id_carro1_fk) REFERENCES tbcarro(id),
  FOREIGN KEY (id_carro2_fk) REFERENCES tbcarro(id)
);

CREATE TABLE tbpista
(
  id INT NOT NULL AUTO_INCREMENT,
  nome_pista VARCHAR(50),
  CONSTRAINT TBPISTA_PK PRIMARY KEY(id)
);

CREATE TABLE tbtrecho
(
  id INT NOT NULL AUTO_INCREMENT,
  nome_trecho VARCHAR(50),
  acelera_reduz VARCHAR(50),
  CONSTRAINT TBTRECHO_PK PRIMARY KEY(id)
);

CREATE TABLE tbtrechopista
(
   id INT NOT NULL AUTO_INCREMENT,
  id_pista INT NOT NULL,
  Id_trecho INT NOT NULL,
  CONSTRAINT TBTRECHOPISTA_PK PRIMARY KEY(id),
  FOREIGN KEY (id_pista) REFERENCES tbpista(id),
  FOREIGN KEY (Id_trecho) REFERENCES tbtrecho(id)
);
