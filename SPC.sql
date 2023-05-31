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
values	(1,'Otopina za infuziju'),
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
        (18,'Spirala'),
		(19,'Otopina za injekciju'),
		(20,'Otopina za inhalaciju');

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
		(3,'Magnet'),
		(4,'Reanim. kolica'),
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
		(null,'Propofol',1,75),
		(null,'Ondanzetron',1,5),
		(null,'Efedrin',1,5),
		(null,'Xylocain',1,5),
		(null,'Novaminsulfon',1,10),
		(null,'Betadine',1,6),
		(null,'Adrenalin',1,50),
		(null,'Dexametazon',1,50),
		(null,'Apaurin',1,10),
		(null,'Ventolin',1,1),
		(null,'Solumedrol 125mg',1,10),
		(null,'Solumedrol 40mg',1,10),
		(null,'Salbutamol',1,1),
		(null,'Synopen',1,15),
		(null,'Atropin',1,20),
		(null,'Amlopin 5mg',1,60),
		(null,'Betrion',1,5),
		(null,'Voltaren Emulgel',1,1),
		(null,'Tysour',1,5),
		(null,'Aminofillin',1,9),
		(null,'Silvederma',1,2);

# ARTIKAL_OBLIK
insert into artikal_oblik(artikal,oblik)
values  (1,19),
		(2,1),
		(3,19),
		(4,1),
		(5,1),
		(6,2),
		(7,19),
		(8,19),
		(9,3),
		(10,19),
		(11,19),
		(12,19),
		(13,3),
		(14,19),
		(15,4),
		(16,19),
		(17,19),
		(18,19),
		(19,2),
		(20,19),
		(21,19),
		(22,20),
		(23,19),
		(24,19),
		(25,5),
		(26,6),
		(27,3),
		(28,7),
		(29,19),
		(30,6);

# ARTIKAL_LOKACIJA
insert into artikal_lokacija(lokacija,artikal_oblik,kolicinaNaLokaciji)
values  (1,1,10),
		(1,2,10),
		(1,3,10),
		(1,4,5),
		(1,5,5),
		(4,5,5),
		(1,6,3),
		(1,7,10),
		(1,8,5),
		(1,9,11),
		(1,10,75),
		(1,11,5),
		(1,12,5),
		(1,13,5),
		(1,14,5),
		(1,15,6),
		(1,16,45),
		(4,16,5),
		(1,17,50),
		(1,18,10),
		(1,19,1),
		(1,20,5),
		(4,20,5),
		(1,21,10),
		(1,22,1),
		(1,23,10),
		(4,23,5),
		(1,24,15),
		(4,24,5),
		(1,25,60),
		(1,26,5),
		(1,27,1),
		(1,28,5),
		(1,29,4),
		(4,29,5),
		(1,30,2);
