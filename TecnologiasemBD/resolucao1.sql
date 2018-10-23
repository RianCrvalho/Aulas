idCor int not null,
nomeCor varchar(20) not null,
primary key(idCor));

create table MARCA(
idMarca int not null,
nomeMarca varchar(20) not null,
primary key(idMarca));


create table MODELO(
idModelo int not null,
nomeModelo varchar(30) not null,
marcar int not null,
primary key(idModelo),
foreign key(marcar) references Marcar(idMarca));

create table VEICULO(
placa varchar(8) not null,
cor int not null,
modelo int not null,
ano int,
valor numeric(9,2),
primary key(placa),
foreign key(cor) references COR(idCor);
foreign key(modelo) references MODELO(idModelo));






insert into COR values (1,"Branco");
insert into COR values (2,"Preto");
insert into COR values (3,"Vermelho");
insert into COR values (4,"Azul");
insert into COR values (5,"Cinza");


insert into MARCAR values (1,"Volskwagen");
insert into MARCAR values (2,"Toyota");
insert into MARCAR values (3,"Chervrolet");
insert into MARCAR values (4,"Fiat");
insert into MARCAR values (5,"Ford");



insert into MODELO values (1,"Hilux",2);
insert into MODELO values (2,"Siena",4);
insert into MODELO values (3,"Fiesta",5);
insert into MODELO values (4,"Fusca",1);
insert into MODELO values (5,"Corsa",3);



insert into VEICULO values ("LVW1510",1,5,2010,100000.00);
insert into VEICULO values ("YYY0510",2,2,2013,35000.00);
insert into VEICULO values ("AAA2512",1,3,2010,18000.00);
insert into VEICULO values ("XXX1010",5,3,2009,20000.00);
insert into VEICULO values ("TTT2510",3,4,1960,2000.00);



update VEICULO
	set cor=2
where placa="LVW1510";




update COR
	set nomeCor="Rosa choque"
where  nomeCor="Cinza";



update VEICULO
	set ano=2011
where ano=2010;



delete from VEICULO
	where placa="TTT2510";


delete from COR
	where nomeCor="Branco";


delete from MODELO
	where nomeModelo="Fusca";


	