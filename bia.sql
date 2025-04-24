create database viagem;
use viagem;
create table passageiro(
id_passageiro int not null auto_increment,
nome varchar (50),
idade varchar(100),
sexo char (1),
rg varchar(11),
primary key (id_passageiro)
);

desc passageiro;

create table viagem(
id_viagem int not null auto_increment,
cod_passageiro int,
data_viagem date,
poltrona varchar(5),
valor float,
primary key (id_viagem)

);

desc viagem;

create table destino(
id_destino int not null auto_increment,
cod_passageiro int,
cidade varchar(30),
estado varchar(30),
primary key (id_destino)
);

desc destino;

create table pacote(
id_pacote int not null auto_increment,
cod_viagem int,
cod_destino int,
nome_pacote varchar(30),
primary key(id_pacote)
);

desc pacote;

alter table viagem add foreign key (cod_passageiro) references
passageiro (id_passageiro);

alter table destino add foreign key(cod_passageiro) references
passageiro (id_passageiro);

alter table pacote add foreign key (cod_destino) references
destino (id_destino);

alter table pacote add foreign key (cod_viagem) references
viagem (id_viagem);

insert into passageiro (nome, idade, sexo, rg) values
('Gael Lima','20','M','1.234.567.8-9');

insert into passageiro (nome, idade, sexo, rg) values
('Maria Eduarda','20','F','1.234.567.8-9');

select * from passageiro;

insert into viagem (data_viagem, poltrona, valor, cod_passageiro) values
('2025-05-24','07','200.00','2');

insert into viagem (data_viagem, poltrona, valor, cod_passageiro) values
('2025-06-15','10','150.00','1');

select * from viagem;

insert into destino (cidade, estado, cod_passageiro) values
('São Paulo','Taboão','2');

insert into destino (cidade, estado, cod_passageiro) values
('Curitiba','Paraná','1');

select * from destino;


insert into pacote (nome_pacote, cod_destino, cod_viagem) values
('Natal','2','1');

insert into pacote (nome_pacote, cod_destino, cod_viagem) values
('Ano Novo','1','1');

select * from pacote;

select viagem.id_viagem, passageiro.nome, viagem.data_viagem
from viagem
inner join passageiro on viagem.cod_passageiro=passageiro.id_passageiro;



