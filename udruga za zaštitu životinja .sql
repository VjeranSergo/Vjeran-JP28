drop database if exists udrugazazastitu;
create database udrugazazastitu;
use udrugazazastitu;
create table djelatnik(
sifra int not null primary key auto_increment,	
ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11)
	);


create table sticenik(
	sifra int not null primary key auto_increment,	
	ime varchar(50) not null,
	vrsta varchar(50) not null,
	regbroj varchar(11),
	djelatnik int not null
);

create table smjestaj(
	sticenik int not null,
	brojprostorije varchar(50) not null
);

alter table smjestaj add foreign key (sticenik)
references sticenik(sifra);

alter table sticenik add foreign key (djelatnik)
references djelatnik(sifra);