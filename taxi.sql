drop database if exists taxi;
create database taxi;
use taxi;
create table vozilo(
	sifra int not null primary key auto_increment,
	model varchar(50) not null,
	godina datetime,
	verificiran boolean
);

create table putnik(
	sifra int not null primary key auto_increment,
	voznja int not null,
	vrijeme datetime,
	uplata decimal(5,2)
	);
create table voznja(
	sifra int not null primary key auto_increment,
	vozilo int not null,
	putmik int not null,
	vrijeme datetime not null,
	cijena decimal(18,2),
	kilometraza decimal(18,2)
	);
	alter table voznja add foreign key (vozilo)
	references vozilo(sifra);

	alter table putnik add foreign key (voznja)
	references voznja(sifra);

	alter table voznja add foreign key (putnik)
	references putnik(sifra);
	