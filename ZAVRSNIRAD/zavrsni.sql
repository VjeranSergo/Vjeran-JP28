# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Vjeran\Documents\GitHub\Vjeran-JP28\ZAVRSNIRAD\zavrsni.sql

drop database if exists zavrsni;
create database zavrsni;
use zavrsni;

create table autor(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	drzava varchar(50) not null
	);

create table posudivac(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	email varchar(50) not null,
	telefon varchar(50) not null
);

create table posudba(
	sifra int not null primary key auto_increment,
	datumposudbe datetime not null,
	posudivac int not null
	);

create table izdavac(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	grad varchar(50) not null
	);

	create table posudba_knjige(
	posudba int not null,
	knjige int not null
	);

create table knjige(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	brojstranica varchar(50) not null,
    autor int not null,
    izdavac int not null,
    godinaizdanja varchar(50) not null,
    cijena decimal(18,2) not null,
    zanr varchar(50) not null
);


alter table posudba add foreign key (posudivac)
references posudivac(sifra);

alter table posudba_knjige add foreign key (posudba)
references posudba(sifra);

alter table posudba_knjige add foreign key (knjige)
references knjige(sifra);

alter table knjige add foreign key (autor)
references autor(sifra);

alter table knjige add foreign key (izdavac)
references izdavac(sifra);


