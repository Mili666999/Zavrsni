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
		(null,'Podophyllini Solutio 20%',1,2),
		(null,'Mag.-Anestetik BLT*AD 100g',1,1),
		(null,'Neo Cain Cream 500g',1,1),
		(null,'Bocouture 50j',1,9),
		(null,'Belotero Lidocaine Intense',1,3),
		(null,'Belotero Lidocaine Balance',1,7),
		(null,'RRS Hyalift 75 Proact',1,6),
		(null,'RRS Silisorg HA',1,12),
		(null,'RRS HA Eyes',1,12),
		(null,'Depo Medrol 40mg',1,10),
		(null,'Panorama Next Generation NIPT',1,8),
		(null,'Fluostrip',1,300),
		(null,'Duphalac 500ml',1,2),
		(null,'Clariscan',1,10),
		(null,'Naklofen',1,10),
		(null,'Bysimin',1,10),
		(null,'Normabel 5mg',1,30),
		(null,'Mydraicyl 10mg/ml',1,2),
		(null,'Gadovist',1,20),
		(null,'Glucosa 10%',2,1),
		(null,'NaCl 500ml',2,19),
		(null,'Glucosa 5%',2,7),
		(null,'Ringer otopina',2,5),
		(null,'NaCl 1000ml',2,30),
		(null,'Glucosalina',2,10),
		(null,'Kliješta za biopsiju',3,34),
		(null,'Klipse',3,9),
		(null,'Endolup',3,4),
		(null,'Omče',3,6),
		(null,'Injekcije',3,5),
		(null,'Četkice',3,58),
		(null,'Papir perilica',3,4),
		(null,'Rez. filter perilica',3,2),
		(null,'Filter saug',3,9),
		(null,'Neutr. elektrode',3,20),
		(null,'Konek. tube (saug)',3,2),
		(null,'Voda tube',3,9),
		(null,'Ventili za endoskop',3,50),
		(null,'Detergent',3,20),
		(null,'Kiselina',3,2),
		(null,'Lužina',3,2),
		(null,'Škare za endolup',3,1),
		(null,'Incidin',4,9),
		(null,'Caprialco plus H',4,23),
		(null,'Alco plus S',4,20),
		(null,'Plivasept crvaeni',4,8),
		(null,'Cidezime',4,1),
		(null,'Secusept plus',4,4),
		(null,'Secusept activ',4,1.5),
		(null,'Alkohol 70%',4,15),
		(null,'Alkohol 70%',4,6),
		(null,'Octenisept',4,2),
		(null,'Formaldehid 4%',4,1),
		(null,'Voda za injekcije',4,44),
		(null,'Plivasept tinktura',4,1),
		(null,'Vodikov peroksid 200ml',4,2),
		(null,'Etanol 96%',4,9),
		(null,'UZV gel 5L',4,8),
		(null,'Alkoholne komprese',4,6),
		(null,'Sterisept wipes',4,1),
		(null,'Incidin alcohol wipes',4,450),
		(null,'Skin des neobojani sprej',4,1),
		(null,'Mikrozid wipes jumbo',4,5),
		(null,'Octenisept 50ml',4,2),
		(null,'Formaldehid 10%',4,2),
		(null,'Softasept 250ml',4,2),
		(null,'Softasept 1000ml',4,2),
		(null,'Softasept N 250ml',4,1),
		(null,'Igla zelena',5,100),
		(null,'Igla siva',5,10),
		(null,'Igla smeđa',5,100),
		(null,'Igla roza',5,100),
		(null,'Igla crna',5,100),
		(null,'Igla plava',5,100),
		(null,'Igla za punkciju',5,1),
		(null,'Braunila zelena',5,2),
		(null,'Braunila plava',5,50),
		(null,'Braunila roza',5,50),
		(null,'Braunila žuta',5,50),
		(null,'Skalpel',5,400),
		(null,'Nastavak za skalpel',5,20),
		(null,'Set za torakalnu punkciju',5,10),
		(null,'Sistem za infuziju',5,54),
		(null,'Inzulinska šprica',5,120),
		(null,'Šprica 2ml',5,100),
		(null,'Šprica 5ml',5,100),
		(null,'Šprica 10ml',5,100),
		(null,'Šprica 20ml',5,80),
		(null,'Šprica 50ml',5,7),
		(null,'Šprica 100ml',5,7),
		(null,'Navlaka za uzv. sondu',5,1),
		(null,'Pyloplus',5,50),
		(null,'Vodilica - bougie 10fr',5,1),
		(null,'Urin kateter 16ch',5,10),
		(null,'Urin kateter 18ch',5,10),
		(null,'Konac polysorb 4-0',5,36),
		(null,'Konac monosoft 4-0',5,36),
		(null,'Konac dermalon 3-0',5,36),
		(null,'Vodilica bougie 15fr',5,1),
		(null,'Cannula steriglide 22G',5,20),
		(null,'TSK steriject 32G',5,100),
		(null,'Konac velosorb fast 4-0',5,36),
		(null,'KT za transport cito',5,20),
		(null,'Dräger flow senzor',5,3),
		(null,'Dräger filter safe star',5,10),
		(null,'Dräger filter care star',5,1),
		(null,'Dräger breathing bag',5,25),
		(null,'Dräger circult basic',5,25),
		(null,'Nanosoft igla 0,6mm',5,10),
		(null,'Bref',5,8),
		(null,'Benzin',5,1),
		(null,'Glicerin',5,1),
		(null,'Set za blefaroplastiku',5,30),
		(null,'Urin bičice',6,104),
		(null,'Bubrežnjak',6,302),
		(null,'Maske',6,1050),
		(null,'Kaljače',6,110),
		(null,'Kirurške posude',6,10),
		(null,'Vatice',6,2),
		(null,'Špatule',6,400),
		(null,'Rola papira',6,61),
		(null,'Leukoplast',6,24),
		(null,'Ogrtač',6,50),
		(null,'Sterilni kirurški ogrtač',6,9),
		(null,'Hlačice za kolonoskopiju',6,160),
		(null,'Suknje ginekološke',6,150),
		(null,'Papuče',6,555),
		(null,'Bočice za papa test',6,3),
		(null,'Cytobrush',6,500),
		(null,'Kondomi',6,432),
		(null,'Lubrikant',6,1),
		(null,'Stakalca za papa test',6,550),
		(null,'Špatule ginekološke',6,500),
		(null,'Speculum bijeli "S"',6,364),
		(null,'Speculum crveni "M"',6,361),
		(null,'Ureoplazma',6,1),
		(null,'Nepropusna podloga',6,90),
		(null,'Podbradak',6,250),
		(null,'Sintetička vata',6,2),
		(null,'Papir za UZV',6,20),
		(null,'Covid test',6,900),
		(null,'Brisevi',6,15),
		(null,'Brisevi s podlogom',6,0),
		(null,'Mrežice vel.8',6,25),
		(null,'Urin vrečica',6,5),
		(null,'Sistem za O2 nosni',6,40),
		(null,'Maska za kisik L',6,8),
		(null,'Maska za kisik M',6,9),
		(null,'Maska za kisik S',6,3),
		(null,'Mini spike',6,50),
		(null,'Airway 50/60/70/80/100mm',6,7),
		(null,'Kirurška prekrivka 60x60',6,70),
		(null,'Kirurška prekrivka 75x90',6,4),
		(null,'Kirurška prekrivka 50x70',6,22),
		(null,'Zavoj 10cm',6,7),
		(null,'Zavoj 6cm',6,4),
		(null,'Sterilna tamponada',6,2),
		(null,'Curapor',6,50),
		(null,'Curafix 5.5x6.5',6,7),
		(null,'Curafix 6x7.5',6,50),
		(null,'Steri strip',6,100),
		(null,'Sterilne komprese 5x5',6,150),
		(null,'Sterilne komprese 10x10',6,550),
		(null,'Sterilne komprese 5x8',6,100),
		(null,'Nesterilne komprese 7.5x7.5',6,10000),
		(null,'Nesterilne komprese 10x10',6,1900),
		(null,'Nesterilne komprese 5x5',6,1800),
		(null,'Vivapore 5x7',6,10000),
		(null,'Vivapore 10x6',6,500),
		(null,'Aspiracijski kateter',6,60),
		(null,'Kirurški konac (Vinka)',6,2),
		(null,'Duodenalne sonde (vel 10,14,16,18)',6,20),
		(null,'Rukavice S',6,2400),
		(null,'Rukavice M',6,6000),
		(null,'Rukavice L',6,2100),
		(null,'Rukavice XL',6,200),
		(null,'Rukavice 6.5',6,1),
		(null,'Rukavice 7',6,1),
		(null,'Rukavice 7.5',6,70),
		(null,'Rukavice 8',6,70),
		(null,'Vazelin',6,5),
		(null,'Elektrode',6,468),
		(null,'Usnici za spirometar',6,178),
		(null,'EKG papir',6,1800),
		(null,'Urin kateter 12ch',6,1),
		(null,'Jednokratni urin kateter 14ch',6,2),
		(null,'Jednokratni urin kateter 16ch',6,6),
		(null,'Vivaqua (5x7,10x9,20x10',6,3),
		(null,'Tubusi (3,4,5)',6,3),
		(null,'Tubus 6',6,2),
		(null,'Tubus 6.5',6,2),
		(null,'Tubus 7',6,1),
		(null,'Tubus 7.5',6,4),
		(null,'Tubus 8',6,1),
		(null,'Tubus 8.5',6,2),
		(null,'Tubus 9',6,2),
		(null,'Kirurški ogrtač sterilni XL',6,10),
		(null,'Kirurški ogrtač sterilni L',6,10);
		

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
		(60,14),
		(61,11),
		(62,11),
		(63,10),
		(64,12),
		(65,12),
		(66,14),
		(67,9),
		(68,9),
		(69,19),
		(70,13),
		(71,15),
		(72,16),
		(73,19),
		(74,9),
		(75,9),
		(76,5),
		(77,8),
		(78,17),
		(79,14),
		(80,14),
		(81,14),
		(82,14),
		(83,14),
		(84,14);
		

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
		(1,60,2),
		(1,61,1),
		(1,62,1),
		(1,63,9),
		(1,64,3),
		(1,65,7),
		(1,66,6),
		(1,67,12),
		(1,68,12),
		(1,69,10),
		(1,70,8),
		(1,71,300),
		(1,72,2),
		(1,73,10),
		(1,74,10),
		(1,75,10),
		(1,76,30),
		(1,77,2),
		(1,78,20),
		(1,79,1),
		(1,80,19),
		(1,81,7),
		(1,82,5),
		(1,83,30),
		(1,84,10);
