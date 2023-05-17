# Ovo je komentar

 -- putanju  C:\Users\Katedra\D... prilagoditi svojoj datoteci na disku
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Vjeran\Documents\GitHub\Vjeran-JP28\frizerski.sql

-- I ovo je komentar

drop database if exists salon;
create database salon;
use salon;
create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
telefon varchar(50) not null
);
create table djelatnik(
ugovororadu varchar(50),
osoba int not null,
usluga int not null
);
create table usluga(
sifra int not null primary key auto_increment,
	pramenovi varchar(50) not null,
	bojanje varchar(50) not null,
	trajna varchar(50) not null
);
create table korisnik(
	osoba int not null,
	usluga int not null,
	racun varchar(50) not null
);

alter table djelatnik add foreign key (osoba)
references osoba(sifra);

alter table korisnik add foreign key (osoba)
references osoba(sifra);

alter table korisnik add foreign key (usluga)
references usluga(sifra);

alter table djelatnik add foreign key (usluga)
references usluga(sifra);

insert into osoba (sifra,ime,prezime,telefon)values
(null,'Vjeran','Šergo',031351157),
(null,'Marko','Marković',031351358),
(null,'Hrvoje','Horvat',0915357832);


