create database Carros;
use carros;
create table COR(
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


