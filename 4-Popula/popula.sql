
INSERT INTO proprietario VALUES
('12345678901','João Silva','Rua A, 10','Centro','Brasília','DF','61988887777','M','1985-05-10',40),
('98765432100','Maria Souza','Av. B, 20','Norte','Gama','DF','61999996666','F','1990-08-22',35),
('11122233344','Carlos Pereira','Rua C, 55','Sul','Taguatinga','DF','61977778888','M','1978-02-14',47),
('55566677788','Ana Oliveira','Rua D, 77','Leste','Ceilândia','DF','61955554444','F','1995-11-03',30),
('99988877766','Paulo Santos','Av. E, 100','Oeste','Samambaia','DF','61933332222','M','1982-09-25',43);

INSERT INTO categoria VALUES
('01','Automóvel'),
('02','Motocicleta'),
('03','Caminhão'),
('04','Ônibus'),
('05','Utilitário');

INSERT INTO modelo VALUES
('100001','GOL MI'),
('100002','GOL 1.8'),
('100003','UNO CS'),
('100004','COROLLA XEI'),
('100005','CB 500');

INSERT INTO veiculo VALUES
('ABC1234','9BWZZZ377VT004251','Prata',2015,'12345678901','100001','01'),
('XYZ9876','8AFGHK123TT009876','Preto',2018,'98765432100','100004','01'),
('JKL4567','1HGBH41JXMN109186','Vermelho',2012,'11122233344','100003','01'),
('MNO7890','5FNRL38217B045678','Branco',2019,'55566677788','100002','01'),
('PQR6543','9C2SC50009R123456','Azul',2020,'99988877766','100005','02');

INSERT INTO agente VALUES
(1001,'Roberto Lima','2015-01-10',130),
(1002,'Fernanda Alves','2018-03-15',90),
(1003,'Cláudio Nunes','2020-07-01',65),
(1004,'Rita Gomes','2012-09-05',150),
(1005,'André Costa','2016-11-20',108);

INSERT INTO local_infracao(latitude, longitude, velocidade_permitida) VALUES
(-15.7801,-47.9292,60),
(-15.8300,-47.9000,80),
(-15.7500,-47.9500,50),
(-15.8200,-47.8900,70),
(-15.7600,-47.9400,60);

INSERT INTO tipo_infracao(descricao, valor) VALUES
('Avanço de sinal vermelho',293.47),
('Parada sobre a faixa de pedestres',195.23),
('Excesso de velocidade até 20%',130.16),
('Excesso de velocidade acima de 50%',880.41),
('Estacionar em local proibido',195.23);

INSERT INTO infracao(placa, id_tipo, id_local, matricula_agente, data_hora, velocidade_aferida) VALUES
('ABC1234',1,1,1001,'2025-01-10 08:30:00',NULL),
('PQR6543',3,2,1002,'2025-02-15 14:45:00',95),
('XYZ9876',2,3,1003,'2025-03-20 10:10:00',NULL),
('JKL4567',4,4,1004,'2025-04-05 22:00:00',150),
('MNO7890',5,5,1005,'2025-05-25 18:30:00',NULL);