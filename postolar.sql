drop database if exists postolar;
create database postolar;
use postolar;
create table korisnik(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	email varchar(100)
);


create table obuca(
	sifra int not null primary key auto_increment,
	model varchar(50) not null,
	korisnik int,
	datum datetime,
	popravci int,
	pomocnik int
	);
	
create table popravci(
	sifra int not null primary key auto_increment,
	korisnik int,
	datum datetime,
	cijena decimal(5,2),
	vrsta varchar(50),
	pomocnik int,
	obuca int
	);
	
create table pomocnik(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	brojugovora varchar(20),
	verificiran boolean,
	popravci int,
	obuca int
	);
	
alter table obuca add foreign key (korisnik)
references korisnik(sifra);

alter table popravci add foreign key (obuca)
references obuca(sifra);

alter table popravci add foreign key (pomocnik)
references pomocnik(sifra);

alter table pomocnik add foreign key (popravci)
references popravci(sifra);

alter table pomocnik add foreign key (obuca)
references obuca(sifra);

