-- PROJETO DE PI TABELA SPRINT 1
-- ClimeTech

-- Criar database.
create database TabelaSprint1PI;
-- Pôr database em uso.
use TabelaSprint1PI;

-- Criar tabela.
create table TemperUmid (
	temperatura	float,
    umidade		float,
    data		date,
    horario		time);

-- Inserir dados na tabela.
insert into TemperUmid values ('22', '58', '2025-03-18', '10:00:00');
insert into TemperUmid values ('24', '56', '2025-03-18', '10:01:00');
insert into TemperUmid values ('26', '49', '2025-03-18', '10:02:00');
insert into TemperUmid values ('25', '45', '2025-03-18', '10:03:00');
insert into TemperUmid values ('25', '48', '2025-03-18', '10:04:00');
insert into TemperUmid values ('28', '43', '2025-03-18', '10:05:00');
insert into TemperUmid values ('31', '42', '2025-03-18', '10:06:00');
insert into TemperUmid values ('30', '41', '2025-03-18', '10:07:00');
insert into TemperUmid values ('29', '39', '2025-03-18', '10:08:00');
insert into TemperUmid values ('27', '38', '2025-03-18', '10:09:00');
insert into TemperUmid values ('26', '37', '2025-03-18', '10:10:00');
insert into TemperUmid values ('24', '40', '2025-03-18', '10:11:00');
insert into TemperUmid values ('24', '42', '2025-03-18', '10:12:00');
insert into TemperUmid values ('23', '41', '2025-03-18', '10:13:00');
insert into TemperUmid values ('21', '41', '2025-03-18', '10:14:00');
insert into TemperUmid values ('19', '39', '2025-03-18', '10:15:00');
insert into TemperUmid values ('18', '37', '2025-03-18', '10:16:00');
insert into TemperUmid values ('17', '38', '2025-03-18', '10:17:00');
insert into TemperUmid values ('19', '41', '2025-03-18', '10:18:00');
insert into TemperUmid values ('20', '42', '2025-03-18', '10:19:00');
insert into TemperUmid values ('24', '43', '2025-03-18', '10:20:00');
insert into TemperUmid values ('26', '42', '2025-03-18', '10:21:00');
insert into TemperUmid values ('27', '46', '2025-03-18', '10:22:00');
insert into TemperUmid values ('28', '50', '2025-03-18', '10:23:00');
insert into TemperUmid values ('26', '52', '2025-03-18', '10:24:00');


-- Mostrar todos os dados.
select * from TemperUmid;

-- Mostrar as vezes que a temperatura foi alta suficiente para ativar o sistema de resfriamento.
select	temperatura	as Temperatura,
		data		as Data,
        horario		as Horário
from TemperUmid
where temperatura >= 28;

-- Mostrar as vezes que a umidade foi baixa suficiente para ativar o sistema de umidificação.
select	umidade	as Umidade,
		data	as Data,
        horario	as Horário
from TemperUmid
where umidade < 40;


-- Mostrar as vezes que a temperatura foi alta suficiente para ativar o sistema de resfriamento
-- E a umidade foi baixa suficiente para ativar o sistema de umidificação.
select	temperatura	as Temperatura,
		umidade		as Umidade,
		data		as Data,
        horario		as Horário
from TemperUmid
where temperatura >= 28 and umidade < 40;

-- Mostrar as vezes que a temperatura foi alta suficiente para ativar o sistema de resfriamento
-- OU a umidade foi baixa suficiente para ativar o sistema de umidificação.
select	temperatura as Temperatura,
		umidade		as Umidade,
		data		as Data,
        horario		as Horário
from TemperUmid
where temperatura >= 28 or umidade < 40;
