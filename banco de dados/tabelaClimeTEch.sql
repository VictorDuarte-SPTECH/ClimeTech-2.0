create database climetech;
use climetech;

create table temperatura(
id int primary key auto_increment,
temperatura int
);

insert into temperatura(temperatura)
		values(33),
			  (32),
              (28),
              (29);


create table umidade(
id int primary key auto_increment,
umidade int
)auto_increment=100;


insert into umidade(umidade)
			values(45),
				  (44),
                  (47),
                  (45);


create table registro(
id int primary key auto_increment,
email varchar(50),
senha varchar(30),
cpf char(11)
)auto_increment=1000;


insert into registro(email,senha,cpf)
	values("joão.pinheiro@sptech.school","hello","12345678901"),
		  ("manu.matsumoto@sptech.school","salve","12345678902"),
          ("renan@sptech.school","camisa","12345678903"),
          ("Pedro@sptech.school","hi","12345678904"),
          ("Victor@sptech.school","bueno","12345678905"),
          ("Samira@sptech.school","aaaaa","12345678906"),
          ("Anna@sptech.school","sure","12345678907");


create table AnaliseDados(
id int primary key auto_increment,
evento varchar(50),
fk_temperatura int,
fk_umidade int,
horario datetime,
foreign key (fk_temperatura) references temperatura(id),
foreign key (fk_umidade) references umidade(id)
)auto_increment=10000;



insert into AnaliseDados(id,evento,fk_temperatura,fk_umidade,horario)
		values(default,"clime&tech",1, 100, curtime());

select * from AnaliseDados;





