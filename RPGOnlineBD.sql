--dql
Create database SenaiExercicio

Use SenaiExercicio

create table usuario(
	UsuarioID Int primary key identity,
	Email varchar (100) unique not null,
	Senha varchar (255) unique not null
	)

create table classes(
	ClasseID int primary key identity,
	Nome Varchar (50) unique not null,
	Descricao varchar (255)
	)

create table Personagens(
	PersonagemID int primary key identity,
	NomePersonagem varchar (20) unique not null,
	Usuarioid int unique foreign key references usuario(UsuarioID),
	ClasseID int foreign key references classes(ClasseID),
	)

create table Habilidades(
	HabilidadeID int primary key identity,
	Nome varchar (100) unique not null
	)

create table ClasseHabilidade(
	ClasseID INT FOREIGN KEY REFERENCES classes(ClasseId),
	HabilidadeID INT FOREIGN KEY REFERENCES Habilidades(HabilidadeID)
)


--dml

insert into usuario values ('email@email.com', '654321')
insert into classes values ('barbaro', 'Descricao do barbaro')
insert into Habilidades values ('Lanca Mortal'), ('Escudo Supremo')
insert into Personagens (NomePersonagem, UsuarioID, ClasseID) values ('DeuBug' , 1 , 1)

insert into usuario values ('email2@email.com' , '321645')
insert into classes values ('Monge' , 'Descricao do Monge')
insert into Habilidades values ('Recuperar vida')
insert into Personagens (NomePersonagem, UsuarioID, ClasseID) values ('Bitbug' , 2 , 2)

--dql

select * from usuario
select * from classes
select * from Habilidades
select * from Personagens

select * from Personagens 
inner join classes 
on Personagens.ClasseID = classes.ClasseID
