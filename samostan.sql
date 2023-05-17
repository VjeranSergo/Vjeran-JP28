drop database if exists samostan;
create database samostan;
use samostan;
create table svecenik(
	svecenik_ID int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	zaredenje datetime,
	posao int
	);

create table posao(
	posao_ID int not null primary key auto_increment,
	naziv varchar(50) not null,
	trajanje datetime,
	svecenik int
	);
	
alter table svecenik add foreign key (posao)
references posao(posao_ID);
alter table posao add foreign key (svecenik)
references svecenik(svecenik_ID);