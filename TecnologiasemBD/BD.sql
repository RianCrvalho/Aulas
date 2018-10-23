create database olxifpi;

use olxifpi;

create table estado(
	UF varchar(2) not null,
	nome varchar(35),
	primary key(UF)
);

create table categoria(
	idCategoria int not null,
	nome varchar(30),
	primary key(idCategoria)
);

create table usuario(
	idUsuario int not null,
	nome varchar(35),
	primary key(idUsuario)
);

create table postagem(
	numPostagem int not null,
	idCategoria int not null,
	idUsuario int not null,
	descricao varchar(50),
	primary key(numPostagem),
	foreign key(idCategoria) references categoria(idCategoria),
	foreign key(idUsuario) references usuario(idUsuario)
);


--2

insert into estado values("PI","Piaui");
insert into estado values("CE","Ceara");
insert into estado values("MA","Maranhão");
	insert into estado(uf) values("PE");

--3
insert into estado(uf) values("PE");

--4
delete from estado
	where uf="PE"

--5
insert into categoria values(1,"Imoveis");
insert into categoria values(2,"Veiculos");
insert into categoria values(3,"Emprego");

--6
alter table usuario
add idade int;

--7
insert into usuario values(1,"Denival",40);
insert into usuario values(2,"Marilia"39);
insert into usuario values(3,"Jamilly",12);

insert into usuario(idUsuario,nome) values(4,"Athanio");


-- 8
update usuario
	set idade=36
	    nome ="Cabra da peste"
where idUsuario =4;

--9
alter table postagem
add uf varchar(2);

--10
alter table postagem
add foreign key(uf) references estado(uf);

--11
alter table usuario
modify idade int check(idade>=12);

--12
update usuario
	set idade=41
where idUsuario=1;


--13

insert into postagem values(1,1,1,"Vendo casa em LC","PI");
insert into postagem values(2,3,3,"Estagiu em BD","MA");
insert into postagem values(3,2,2,"Vendo fusca 67","CE");
	