
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Vjeran\Documents\GitHub\Vjeran-JP28\zadaća 16.5 igraonica.sql


drop database if exists igraonica;
create database igraonica;
use igraonica;

create table djelatnik(
	sifra int not null primary key auto_increment,
	iban varchar(50) not null,
	ime varchar(50) not null,
	oib char(11),
	prezime varchar(50) not null,
	radnoMjesto varchar(50) not null
);


create table posjeta(
	sifra int not null primary key auto_increment,
	datumVrijemeDolaska datetime not null,
	datumVrijemeOdlaska datetime not null,
	napomena varchar(50) not null,
	djelatnik int not null
);

create table dijete(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	imeroditelja varchar(50) not null,
	prezime varchar(50) not null,
	telefonroditelja varchar(50) not null
);

create table usluga(
	sifra int not null primary key auto_increment,
	cijena decimal(10,2) not null,
	jedinicamjere varchar(50) not null,
	kolicina decimal (10,2) not null,
	naziv varchar(50) not null
);

create table operater(
	sifra int not null primary key auto_increment,
	email varchar(50) not null,
	ime varchar(50) not null,
	lozinka varchar(50),
	oib char(11),
	prezime varchar(50) not null
);

create table dijeteposjeta(
	dijete int not null,
	posjeta int not null
);

create table uslugaposjeta(
	usluga int not null,
	posjeta int not null
);

alter table posjeta add foreign key (djelatnik)
references djelatnik(sifra);

alter table dijeteposjeta add foreign key (posjeta)
references posjeta(sifra);

alter table dijeteposjeta add foreign key (dijete)
references dijete(sifra);

alter table uslugaposjeta add foreign key (posjeta)
references posjeta(sifra);

alter table uslugaposjeta add foreign key (usluga)
references usluga(sifra);












