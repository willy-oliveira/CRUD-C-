CREATE TABLE Tipo(id_tipo varchar(10) not null, descricao varchar(30), primary key (id_tipo));

CREATE TABLE Situacao(id_situacao varchar(10) not null, descricao varchar(30), primary key (id_situacao));

CREATE TABLE Cliente(CPF varchar(11) not null, 
					 Nome varchar(30) not null, 
					 Sexo char(1) not null, 
					 FK_idTipo varchar(10), FK_idSituacao varchar(10),  
                     PRIMARY KEY (CPF), 
					 FOREIGN KEY (FK_idTipo) REFERENCES Tipo (id_tipo),
					 FOREIGN KEY (FK_idSituacao) REFERENCES Situacao (id_situacao)); 

