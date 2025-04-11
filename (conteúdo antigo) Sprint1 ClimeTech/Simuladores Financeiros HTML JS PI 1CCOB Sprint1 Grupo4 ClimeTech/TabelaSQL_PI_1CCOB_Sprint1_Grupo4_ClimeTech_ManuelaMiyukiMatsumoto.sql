create database sprint1;
use sprint1;

drop database sprint1;

-- criando a tabela de avaliações que só pode conter valores específicos

create table avaliacao(
id_nota int primary key auto_increment,
nota varchar (10),
constraint chk_nota check (nota in("boa", "ruim", "pessima", "regular"))
);


drop table avaliacao;
drop table ClimeTech;

-- criando a tabela que irá conter os dados

create table ClimeTech(
id_show int primary key auto_increment,
nome_show varchar (50),
publico int,
dataShow varchar (10),
qtd_reclamacoes int,
fk_avaliacao int,
foreign key (fk_avaliacao) references avaliacao(id_nota)
)auto_increment = 100;


-- inserts das tabelas

insert into avaliacao(nota)
	values      ("boa"),
	            ("ruim"),
	            ("regular"),
	            ("boa"),
	            ("regular"),
	            ("pessima"),
	            ("regular"),
	            ("boa"),
	            ("pessima"),
	            ("pessima"),
	            ("boa"),
	            ("ruim"),
	            ("regular"),
	            ("boa"),
	            ("regular"),
	            ("pessima"),
	            ("regular"),
	            ("boa"),
	            ("pessima"),
		    ("pessima");

            
            
insert into ClimeTech(nome_show, dataShow, publico, qtd_reclamacoes,fk_avaliacao)
	values          ('Coldplay', '2023-03-10', 60000, 150, 1),
			('Taylor Swift', '2024-11-24', 70000, 90, 2),
			('Paul McCartney', '2023-12-10', 50000, 120, 3),
			('Metallica', '2022-05-10', 55000, 180, 4),
			('Beyoncé', '2023-09-26', 65000, 80, 5),
			('The Weeknd', '2023-10-10', 58000, 100, 6),
			('RBD', '2023-11-17', 45000, 200, 7),
			('Ed Sheeran', '2023-02-14', 75000, 60, 8),
			('Foo Fighters', '2024-01-25', 50000, 110, 9),
			('Madonna', '2024-05-04', 68000, 140, 10),
			('Harry Styles', '2022-12-13', 73000, 75, 11),
			('Bruno Mars', '2023-09-08', 62000, 95, 12),
			('U2', '2017-10-19', 88000, 130, 13),
			('Kiss', '2022-04-30', 40000, 160, 14),
			('Guns N’ Roses', '2022-09-24', 70000, 170, 15),
			('Red Hot Chili Peppers', '2023-11-10', 55000, 105, 16),
			('Arctic Monkeys', '2022-11-04', 45000, 85, 17),
			('Justin Bieber', '2022-09-14', 69000, 190, 18),
			('Imagine Dragons', '2022-10-25', 52000, 100, 19),
			('Travis Scott', '2023-12-05', 50000, 145, 20);
            
            
	-- exibir a tabela
            
	select * from ClimeTech;
