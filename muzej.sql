drop database if exists muzej;
create database muzej;
use muzej;
create table izlozba(
	izlozba_ID int not null primary key auto_increment,
	autori varchar(50) not null,
	djelo int not null,
	sponzor int not null,
	kustos int not null
	);
create table djelo(
	djelo_ID int not null primary key auto_increment,
	godina datetime,
	vrijednost decimal(6,2)
	);
create table kustos(
	kustos_ID int not null primary key auto_increment,
	izlozba int not null
	);
create table sponzor(
	sponzor_ID int not null primary key auto_increment
	);
alter table izlozba add foreign key (djelo)
references djelo(djelo_ID);
alter table izlozba add foreign key (sponzor)
references sponzor(sponzor_ID);
alter table izlozba add foreign key (kustos)
references kustos(kustos_ID);
