drop database if exists djecjivrtic;
create database djecjivrtic;
use djecjivrtic;
create table odgojnaskupina(
	sifra int not null primary key auto_increment,
	odgajatelj int not null,
	odgajanik int not null
	);

create table odgajanik(
	sifra int not null primary key auto_increment,
	odgojnaskupina varchar(50) not null,
	osoba int not null
);

create table odgajatelj(
	sifra int not null primary key auto_increment,
	stručnasprema boolean,
	osoba int not null
);
create table osoba(
	sifra int not null primary key auto_increment,
	ime varchar(20) not null,
	prezime varchar(50) not null
	);
alter table odgojnaskupina add foreign key (odgajanik)
references odgajanik(sifra);
alter table odgojnaskupina add foreign key (odgajatelj)
references odgajatelj(sifra);
alter table odgajanik  add foreign key (osoba)
references osoba(sifra);
alter table odgajatelj  add foreign key (osoba)
references osoba(sifra);
