-- Simulador Financeiro Pedro Tomaszewski Martins 04251077 1CCOB

create database climetech;

use climetech;

create table clima (
	id				int primary key auto_increment,
    temperatura		int,
    umidade			int)auto_increment=1;

create table usuario (
	id			int primary key auto_increment,
    nome 		varchar(20) not null,
    email 		varchar(50) not null,
    senha		varchar(30) not null,
    cpf 		char(11) not null)auto_increment=100;
    
insert into clima (temperatura, umidade) values (31, 40);
insert into clima (temperatura, umidade) values (21, 54);
insert into clima (temperatura, umidade) values (18, 27);
insert into clima (temperatura, umidade) values (38, 19);
insert into clima (temperatura, umidade) values (22, 62);

insert into usuario (nome, email, senha, cpf) values ('Pedro', 'pedro.martins@sptech.school', 'calangolegal123', 52600241841);
insert into usuario (nome, email, senha, cpf) values ('Manuela', 'manuela.matsumoto@sptech.school', 'abacaxi4090', 15623489254);
insert into usuario (nome, email, senha, cpf) values ('João', 'joao.pinheiro@sptech.school', 'viagemmaneira0000', 54896215248);
insert into usuario (nome, email, senha, cpf) values ('Samira', 'samira.bezerra@sptech.school', 'caminhaoinsano23', 18492845712);
insert into usuario (nome, email, senha, cpf) values ('Victor', 'victor.duarte@sptech.school', 'europa099090', 45978154325);
insert into usuario (nome, email, senha, cpf) values ('Renan', 'renan.pereira@sptech.school', 'banana!11!', 28173945297);

select * from clima;
select * from usuario;