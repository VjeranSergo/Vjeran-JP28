# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Vjeran\Documents\GitHub\Vjeran-JP28\ZAVRSNIRAD\zavrsni.sql

drop database if exists zavrsni;
create database zavrsni;
use zavrsni;

create table autor(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null
	);


create table zanr(
	sifra int not null primary key auto_increment,
	fantasy varchar(50) not null,
	povijesni varchar(50) not null,
	SF varchar(50) not null,
	krimi varchar(50) not null
);

create table osoba(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	kontakt varchar(50) not null
);

create table posudba(
	sifra int not null primary key auto_increment,
	datumposudbe datetime not null,
	osoba int not null
	);

create table izdavac(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	grad varchar(50) not null,
	intadresa varchar(50) not null
);

create table knjige(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	brojstranica varchar(50) not null,
    autor int not null,
    izdavac int not null,
    godinaizdanja varchar(50) not null,
    posudba int not null,
    cijena decimal(18,2) not null,
    zanr int not null
);



alter table posudba add foreign key (osoba)
references osoba(sifra);

alter table knjige add foreign key (posudba)
references posudba(sifra);

alter table knjige add foreign key (autor)
references autor(sifra);

alter table knjige add foreign key (izdavac)
references izdavac(sifra);

alter table knjige add foreign key (zanr)
references zanr(sifra);
