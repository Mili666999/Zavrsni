# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Mili\Documents\GitHub\Vjezbe-JP28\edunovajp28

# kreiranje baze
drop database if exists spc;
create database spc;
use spc;

# kreiranje tablica
create table oblik(
    id int not null primary key auto_increment,
    naziv char(50)
);
create table artikal(
    id int not null primary key auto_increment,
    naziv varchar(50) not null,
    kategorija int,
    kolicinaUkupna decimal(10,3) not null
);
create table kategorija(
    id int not null primary key auto_increment,
    naziv char(50)
);
create table artikal_oblik(
    id int not null primary key auto_increment,
    artikal int,
    oblik int not null
);
create table lokacija(
    id int not null primary key auto_increment,
    naziv char(50)
);
create table artikal_lokacija(
    lokacija int not null,
    kolicinaNaLokaciji decimal(10,3) not null,
    artikal_oblik int not null
);

# kreiranje veza
alter table artikal add foreign key (kategorija)
references kategorija (id);

alter table artikal_oblik add foreign key (artikal)
references artikal (id);

alter table artikal_oblik add foreign key (oblik)
references oblik (id);

alter table artikal_lokacija add foreign key (lokacija)
references lokacija (id);

alter table artikal_lokacija add foreign key (artikal_oblik)
references artikal_oblik (id);

# punjenje baze

# ARTIKAL
insert into artikal(id,naziv,kategorija,kolicinaUkupna)
values  (null,'SUGAMADEKS',1,10);

# ARTIKAL_OBLIK
insert into artikal_oblik(artikal,oblik)
values  (1,1);

# ARTIKAL_LOKACIJA
insert into artikal_lokacija(lokacija,kolicinaNaLokaciji,artikal_oblik)
values  (1,10,1);

# OBLIK
insert into oblik(id,naziv,rokTrajanja)
values 	(null,'Otopina za infuziju',null),
        (null,'Sprej',null),
        (null,'Gel',null),
        (null,'Otopina za kožu',null),
        (null,'Tableta',null),
        (null,'Mast',null),
        (null,'Prašak',null),
        (null,'Kapi',null),
        (null,'Ampula',null),
        (null,'Prašak za otopinu',null),    
        (null,'Krema',null),
        (null,'Injekcija',null),
        (null,'Screen',null),
        (null,'Otopina',null),
        (null,'Listići',null),
        (null,'Sirup',null),
        (null,'Kontrast',null),
        (null,'Spirala',null);

# KATEGORIJA
insert into kategorija(id,naziv)
values  (null,'Lijekovi'),
        (null,'Infuzije'),
        (null,'Endoskopije'),
        (null,'Dezinfekcija'),
        (null,'Oštri predmeti'),
        (null,'Razno');

# LOKACIJA
insert into lokacija(id,naziv)
values	(null,'Ormar'),
		(null,'Hladnjak'),
		(null,'Derma kolica'),
		(null,'Kir kolica'),
		(null,'Ordinacija 1'),
		(null,'Ordinacija 2'),
		(null,'Ordinacija 3'),
		(null,'Ordinacija 4'),
		(null,'Ordinacija 5'),
		(null,'Ordinacija 6'),
		(null,'Ordinacija 7'),
		(null,'Ordinacija 8'),
		(null,'Ordinacija 9'),
		(null,'Ordinacija 10');

