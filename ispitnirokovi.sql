drop database if exists ispitrok;
create database ispitrok;
use ispitrok;
create table student(
sifra int not null primary key auto_increment,	
ime varchar(50) not null,
	prezime varchar(50) not null,
	jmbag char(11),
	email varchar(100),
	rok int not null
);

create table rok(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	maxpolaznika int,
	datumpocetka datetime,
	student int not null
);
	
alter table rok add foreign key (student)
references student(sifra);

alter table student add foreign key (rok)
references rok(sifra);