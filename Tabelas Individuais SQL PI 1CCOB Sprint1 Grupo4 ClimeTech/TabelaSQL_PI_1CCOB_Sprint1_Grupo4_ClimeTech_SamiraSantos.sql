use sprint_01;

create table registros (
id int auto_increment primary key,
evento varchar(40),
data_evento date,
hora_evento time,
temperatura varchar(10),
umidade varchar(10)
);

insert into registros (evento, data_evento, hora_evento, temperatura, umidade)
values 				 
('lollapalooza', '2025-04-24', '18:00:00', '32°C', '45%'),
('rockinsp', '2025-10-15', '19:00:00', '35°C', '30%'),
('the town', '2025-08-09', '18:30:00', '29°C', '50%'),
('eletronic', '2025-11-19', '20:00:00', '39°C', '18%');
                      
-- selecionando os registros na tabela
select * from registros;

select * from registros where temperatura >30;

select * from registros where evento like '%o%';

select * from registros where umidade <40;




