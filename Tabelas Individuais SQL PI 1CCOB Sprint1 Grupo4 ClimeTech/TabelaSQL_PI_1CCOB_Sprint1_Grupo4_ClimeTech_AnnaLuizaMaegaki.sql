create database ClimeTech;

use ClimeTech;

create table eventos_estadio(
id           int auto_increment,
evento       varchar(50) not null default 'Jogo',
umidade      int not null,
temperatura  int not null,
publico      int,
reclamacoes  int,
primary key (id)
);

insert into eventos_estadio (evento, umidade, temperatura, publico, reclamacoes)
values                      ('Show da Taylor Swift', '35', '42', '30.000', '20000'),
                            ('Jogo Palmeiras', '38', '32', '21.000', '9000'),
                            ('Show do Bruno Mars', '53', '24', '55.000', '500'),
                            ('Jogo São Paulo', '46', '21', '39.000', '900'),
                            ('Jogo Copa Catar', '57', '23', '25.000', '50'),
                            ('Festival de música', '30', '26', '15.000', '5000'),
                            ('Final de Campeonato', '70', '25', '50000', '120'),
							('Show de Rock', '65', '22', '40000', '85'),
                            ('Jogo', '75', '26', '30000', '60'),
							('Evento Corporativo', '50', '20', '5000', '10'),
							('Show de Pop', '68', '24', '45000', '95');
                            
select * from eventos_estadio;

select * from eventos_estadio order by reclamacoes desc;

select * from eventos_estadio order by umidade asc;