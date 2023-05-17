drop database if exists doktor;
create database doktor;
use doktor;
create table pacijent(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	email varchar(100)
);


create table pregled(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	vrijeme datetime,
	pacijent int not null,
	medsestra int not null
);

create table medsestra(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	verificiran boolean,
	brojugovora varchar(20)	
);
alter table pregled add foreign key (pacijent)
references pacijent(sifra);

alter table pregled add foreign key (medsestra)
references medsestra(sifra);

