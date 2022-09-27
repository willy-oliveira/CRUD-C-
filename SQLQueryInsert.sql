insert into Tipo(id_tipo, descricao) values ('I', 'Interno'), ('E', 'Externo'); 
insert into Situacao(id_situacao, descricao) values ('ATV', 'Ativo'), ('INV', 'Inativo'), ('INA', 'Inadimplente'); 


Insert into cliente(CPF, Nome, Sexo, FK_idTipo, FK_idSituacao) values 
(12334598723, 'willy', 'M', 'I', 'INV'), 
(27789551892, 'Carla', 'F', 'E', 'ATV'),
(12734598701, 'Lucas', 'M', 'E', 'INA');
