create database Sprint1;

use Sprint1;

-- criação Tabela de Armazenamento de dados Para o ClimeTec

-- complemento tabela full
create table Temperatura(
id int primary key auto_increment,
temperatura int,
constraint chkTemperatura check ( 0> temperatura <45)
);
  
insert into Temperatura(temperatura)
	values(1),
		  (2),
          (3),
          (30),
          (15),
		  (28),
          (32),
          (31);
          
          select*from Temperatura;









-- complemento tabela full
create table Umidade(
id int primary key auto_increment,
umidade int,
constraint chkUmidade check( 0> umidade <100)
)auto_increment=2000;


insert into Umidade(umidade)
	values(60),
		  (65),
          (57),
          (70),
          (50),
          (78),
          (76),
          (45);



select*from Umidade;



-- tabela full
create table ClimeTec(
idClime int primary key auto_increment,
show_eventos varchar(50),
horasReal datetime,
fk_umidade int,
fk_temperatura int,
foreign key (fk_umidade) references Umidade(id),
foreign key (fk_temperatura) references Temperatura(id)
)auto_increment = 7000;


    insert into ClimeTec(show_eventos,horasReal,fk_umidade,fk_temperatura)
                values("Taylor Swift",default,2004,2);
                
                select*from ClimeTec;
                
                
                
