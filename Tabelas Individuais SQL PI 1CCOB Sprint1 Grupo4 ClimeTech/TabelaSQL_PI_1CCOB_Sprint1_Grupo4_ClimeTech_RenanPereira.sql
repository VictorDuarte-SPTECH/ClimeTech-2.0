create database sprint1;

use sprint1;

create table medicao(
id           int primary key auto_increment,
data         date not null,
hora         time not null,
temperatura  int not null,
umidade      int not null
);
INSERT INTO medicao (data, hora, temperatura, umidade) VALUES
('2025-03-03', '12:00:00', 28, 55),
('2025-03-03', '13:00:00', 30, 50),
('2025-03-03', '14:00:00', 32, 38), 
('2025-03-03', '15:00:00', 29, 52),
('2025-03-03', '16:00:00', 31, 36),
('2025-03-18', '12:00:00', 27, 60),
('2025-03-18', '13:00:00', 29, 58),
('2025-03-18', '14:00:00', 31, 39), 
('2025-03-18', '15:00:00', 33, 35), 
('2025-03-18', '16:00:00', 28, 50),
('2025-04-02', '12:00:00', 26, 65),
('2025-04-02', '13:00:00', 28, 55),
('2025-04-02', '14:00:00', 34, 33), 
('2025-04-02', '15:00:00', 30, 45),
('2025-04-02', '16:00:00', 32, 38),
('2025-04-17', '12:00:00', 25, 70),
('2025-04-17', '13:00:00', 27, 60),
('2025-04-17', '14:00:00', 29, 55),
('2025-04-17', '15:00:00', 31, 37), 
('2025-04-17', '16:00:00', 33, 34); 


select * from medicao where umidade <40;

select data, hora, temperatura from medicao where temperatura > 30;

select * from medicao order by umidade;

select * from medicao where data between '2025-04-02' and '2025-04-17';