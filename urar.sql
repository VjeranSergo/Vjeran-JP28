drop database if exists urar;
create database urar;
use urar;
create table korisnik(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	telefon varchar(100)
);


create table sat(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	datum datetime,
	popravak int,
	korisnik int
);

create table popravak(
	sifra int not null primary key auto_increment,
	vrsta varchar(50),
	cijena decimal(5,2),
	segrt int,
	sat int
);

create table segrt(
	sifra int not null primary key auto_increment,
	brojugovora varchar(20),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	popravak int not null
);
alter table sat add foreign key (popravak)
references popravak(sifra);

alter table sat add foreign key (korisnik)
references korisnik(sifra);

alter table popravak add foreign key (segrt)
references segrt(sifra);

alter table popravak add foreign key (sat)
references sat(sifra);

alter table segrt add foreign key (popravak)
references popravak(sifra);

