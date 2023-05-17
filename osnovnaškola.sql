drop database if exists osnovnaskola;
create database osnovnaskola;
use osnovnaskola;
create table radionica(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	maxpolaznika int,
	trajanje int not null,
	dijete int not null,
	uciteljica int not null
);


create table osoba(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11)
);

create table uciteljica(
	sifra int not null primary key auto_increment,
	iban varchar(50),
	brojugovora varchar(20),
	osoba int not null
);

create table dijete(
	sifra int not null primary key auto_increment,
	osoba int not null,
	grupa varchar(20) not null
);
alter table radionica add foreign key (dijete)
references dijete(sifra);

alter table radionica add foreign key (uciteljica)
references uciteljica(sifra);

alter table dijete add foreign key (osoba)
references osoba(sifra);

alter table uciteljica add foreign key (osoba)
references osoba(sifra);

