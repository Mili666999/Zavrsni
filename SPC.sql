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
		(null,'Silvederma',1,2),
		(null,'Maxitrol',1,6),
		(null,'Benoxi 0,4mg',1,2),
		(null,'Unitropic 0,5mg',1,6),
		(null,'Maxidex',1,5),
		(null,'Novesine 0,4%',1,5),
		(null,'Tobrex',1,1),
		(null,'Beloderm',1,1),
		(null,'Lidokain',1,5),
		(null,'Lidokain/Adrenalin',1,5),
		(null,'Lidokain 2%',1,20),
		(null,'Cordarone',1,1),
		(null,'Bikarbonati',1,5),
		(null,'Andol 100',1,20),
		(null,'Fursemid 20mg',1,5),
		(null,'Sufentanil 5 mikrograma',1,10),
		(null,'Amiodaron 150mg',1,10),
		(null,'Valsacor 160mg',1,28),
		(null,'Tritace 10mg',1,28),
		(null,'Concor Cor 2,5mg',1,30),
		(null,'Physiotens 0,2mg',1,28),
		(null,'Nebivolol 5mg',1,28),
		(null,'Nitrolingval',1,1),
		(null,'Rocuroniumbromid Kabi 50mg - Esmeron',1,10),
		(null,'Neostigmin 0,5mg/ml',1,10),
		(null,'Lystenon 500mg',1,3),
		(null,'Depo Medrol 40mg',1,10),
		(null,'Emla',1,2),
		(null,'Aethoxysklerol 1%',1,10),
		(null,'Mirena',1,1),
		(null,'Podophyllini Solutio 20%',1,2);
		

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
		(30,6),
		(31,8),
		(32,8),
		(33,8),
		(34,6),
		(35,8),
		(36,8),
		(37,6),
		(38,19),
		(39,19),
		(40,9),
		(41,19),
		(42,19),
		(43,5),
		(44,19),
		(45,19),
		(46,19),
		(47,5),
		(48,5),
		(49,5),
		(50,5),
		(51,5),
		(52,2),
		(53,19),
		(54,19),
		(55,19),
		(56,19),
		(57,11),
		(58,9),
		(59,18),
		(60,14);
		

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
		(1,30,2),
		(1,31,2),
		(1,32,2),
		(1,33,6),
		(1,34,5),
		(1,35,5),
		(1,36,1),
		(1,37,1),
		(1,38,5),
		(1,39,5),
		(1,40,20),
		(1,41,1),
		(4,42,5),
		(4,43,20),
		(4,44,5),
		(1,45,10),
		(4,46,5),
		(3,46,5),
		(4,47,28),
		(4,48,28),
		(4,49,30),
		(4,50,28),
		(4,51,28),
		(4,52,1),
		(2,53,10),
		(1,54,10),
		(1,55,3),
		(1,56,10),
		(1,57,2),
		(1,58,10),
		(1,59,1),
		(1,60,2);
