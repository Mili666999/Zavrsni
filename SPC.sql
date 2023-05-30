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
    artikal_oblik int not null,
    kolicinaNaLokaciji decimal(10,3) not null
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

# OBLIK
insert into oblik(id,naziv)
values (1,'Otopina za infuziju'),
        (2,'Sprej'),
        (3,'Gel'),
        (4,'Otopina za kožu'),
        (5,'Tableta'),
        (6,'Mast'),
        (7,'Prašak'),
        (8,'Kapi'),
        (9,'Ampula'),
        (10,'Prašak za otopinu'),    
        (11,'Krema'),
        (12,'Injekcija'),
        (13,'Screen'),
        (14,'Otopina'),
        (15,'Listići'),
        (16,'Sirup'),
        (17,'Kontrast'),
        (18,'Spirala');

# KATEGORIJA
insert into kategorija(id,naziv)
values  (1,'Lijekovi'),
        (2,'Infuzije'),
        (3,'Endoskopije'),
        (4,'Dezinfekcija'),
        (5,'Oštri predmeti'),
        (6,'Razno');

# LOKACIJA
insert into lokacija(id,naziv)
values	(1,'Ormar'),
		(2,'Hladnjak'),
		(3,'Derma kolica'),
		(4,'Kir kolica'),
		(5,'Ordinacija 1'),
		(6,'Ordinacija 2'),
		(7,'Ordinacija 3'),
		(8,'Ordinacija 4'),
		(9,'Ordinacija 5'),
		(10,'Ordinacija 6'),
		(11,'Ordinacija 7'),
		(12,'Ordinacija 8'),
		(13,'Ordinacija 9'),
		(14,'Ordinacija 10');

# ARTIKAL
insert into artikal(id,naziv,kategorija,kolicinaUkupna)
values  (null,'Sugamadeks',1,10),
		(null,'Paracetamol',1,10),
		(null,'Thiopental Inresa',1,10),
		(null,'Dopamin',1,5),
		(null,'Ca Glukonat',1,5),
		(null,'Lidokain',1,3),
		(null,'Metoclopramide',1,10),
		(null,'Solucortef',1,5),
		(null,'Optilube',1,11),
		(null,'Propofol',1,75);

# ARTIKAL_OBLIK
insert into artikal_oblik(artikal,oblik)
values  (1,1),
		(2,1),
		(3,1),
		(4,1),
		(5,1),
		(6,2),
		(7,1),
		(8,1),
		(9,3),
		(10,1); 

# ARTIKAL_LOKACIJA
insert into artikal_lokacija(lokacija,artikal_oblik,kolicinaNaLokaciji)
values  (1,1,10),
		(1,2,10),
		(1,3,10),
		(1,4,5),
		(1,5,5),
		(1,6,3),
		(1,7,10),
		(1,8,5),
		(1,9,11),
		(1,10,75);
