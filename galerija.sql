# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Vjeran\Documents\GitHub\Vjeran-JP28\galerija.sql

drop database if exists galerija;
create database galerija;
use galerija;

create table galerija(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
autor int not null,
nadredena int not null
);

create table slika(
sifra int not null primary key auto_increment,
galerija int not null,
putanja varchar(50)
);

create table autor(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null
);

create table oznaka(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);

create table slika_oznaka(
slika int not null,
oznaka int not null
);

alter table galerija add foreign key (nadredena)
references galerija(sifra);

alter table slika add foreign key (galerija)
references galerija(sifra);

alter table galerija add foreign key (autor)
references autor(sifra);

alter table slika_oznaka add foreign key (slika)
references slika(sifra);

alter table slika_oznaka add foreign key (oznaka)
references oznaka(sifra);

insert into autor (sifra,ime, prezime) values
(null,'Vincent','VanGogh'),
(null,'Pablo','Picaso'),
(null,'Edgar','Degas');