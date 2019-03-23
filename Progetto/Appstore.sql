create table `App`
(
	`CodiceApp` int not null unique,
	`NomeApp`varchar(50) not null unique, 
    `DataRilascio` date not null,
    `Genere` int not null,
    `Descrizione` varchar(200) not null,
    `Prezzo` double default null,
    primary key(`CodiceApp`),
    foreign key `App` (`Genere`) references `Genere` (`CodGenere`)
)
    ENGINE=MyISAM DEFAULT CHARSET=latin1;

insert into `App` (`CodiceApp`, `NomeApp`, `DataRilascio`,  `Valutazione`, `Genere`, `Descrizione`, `Prezzo`)
values (1, 'Facebook', '2012-03-02',  4.0, 11, 'Tieniti in contatto con i tuoi amici, pià veloce che mai', null),
(2, 'Clash of Clans', '2012-08-02',  4.6, 21, 'Epico gioco di guerra strategica', null),
(3, 'YouTube', '2010-12-15',  4.3, 11, 'Guarda video, playlist e canali preferiti ovunque tu voglia', null),
(4,'TuttoMercatoWeb','2016-12-26',  4.3, 12, 'Il sito di calciomercato aggiornato 24h su 24', null),
(5, 'ANSA.it', '2015-02-04',  3.5, 14, 'notizie foto e video della principale agenzia di stampa italiana', null),
(6, 'Fast&Furious 8', '2017-04-05', 4.7, 32, 'Tra corse all ultimo respiro e scene di azione incredibili', 13.99),
(7, 'Annabelle','2014-09-14', 4.0, 33, 'Una terribile bambola assassina ti lascerà senza fiato', 3.99),
(8, 'Evolve', '2017-06-15', 4.7, 41, 'Ultimo album della rock band Imagine Dragons', 8.50),
(9, 'Kind of Blue', '2011-08-07', 4.8, 42, 'Album realizzato da Miles Davis nel 1959', 7.99),
(10, 'WhatsApp', '2014-02-09', 4.2, 11, 'Semplice. Personale. Immediato.', null),
(11, 'Hello', '2015-09-23', 4.7, 44, 'Brano di Adele conosciuto in tutto il mondo', 1.30),
(12, 'One Piece', '2015-07-26', 4.6, 23, 'Forma la ciurma di pirati ed esplora il mondo!', null),
(13, 'Neo Monster', '2016-05-25', 4.5, 23, 'Cattura e fai evolvere 1000 Mostri Animati!', 1.30),
(14, 'Candy Crush Jelly Saga', '2016-11-15', 4.3, 22, 'Preparati per un pò di Jelly!', null),
(15, 'Puzzle Bubble', '2017-08-22', 4.2, 22, 'Il miglior gioco classico è arrivato', 5.50),
(16, 'Netflix', '2011-08-07', 4.1, 13, 'Acquista tutte le serie TV e film a soli 10 euro', 10.00),
(17, 'Amazon', '2011-08-07', 4.4, 13, 'Acquista milioni di prodotti ovunque tu voglia', null),
(18, 'Il Signore Degli Anelli', '2011-11-07', 4.9, 51, 'Edizione completa di tutta la saga fantasy piu bella al mondo', 13.89),
(19, 'Tutto Sherlock Holmes','2012-05-07', 4.5, 52, 'Raccolta del celebre investigatore creato da Conan Doyle', 4.99),
(20, 'Semplice è bello', '2014-10-16', 3.9, 53,'Imparare le basi della programmazione', 13.90),
(21, 'Come istruire un robot', '2014-10-17', 3.5, 53, 'Come costruirsi una logica', 18.00),
(22, 'FIFA Mobile', '2016-03-25', 3.9, 24, 'Arriva su mobile il gioco di calcio piu conosciuto al mondo', null),
(23, 'Minions', '2016-12-25', 5, 31, 'Appassionati con la storia dei minion in HD!', 13.33),
(24, 'I Puffi', '2017-03-01', 4.2, 31, 'Una mappa misteriosa e una grande avventura per i piccoli Puffi', 5.99),
(25, 'Eurosport', '2015-05-15', 4.0, 12, 'Rimani sempre aggiornato sullo sport con l app di eurosport', null),
(26, 'Flipboard', '2010-08-20', 4.4, 14, 'Flipboard organizza le storie del mondo secondo i tuoi interessi', null),
(27, 'Final Fatasy XV', '2017-07-08', 4.0, 21, 'Unisciti alla lotta', null),
(28, 'Minigolf 3D', '2015-08-30', 4.2, 24, 'I migliori percorsi di minigolf gratuiti', null),
(29, 'Ghost in the Shell', '2017-03-05', 3.8, 32, 'Scarlett Johansson in Ghost in the Shell', 9.99),
(30, 'Saw IV', '2010-01-02', 4.3, 33, 'Vuoi fare un gioco con Jigsaw?', 5.99),
(31, 'La signora in giallo - omicidio sul ghiaccio', '2012-02-02', 4.3, 52, 'Un romanzo di Jessica Fletcher e Donald Bain', 6.99);

create table `Acquisto`
(
		`NumeroFattura` int not null unique,
        `CodiceFornitore` varchar (1),
        `CodApp` varchar(30),
        primary key (`NumeroFattura`),
        foreign key `Acquisto` (`CodiceFornitore`) references `AziendaFondatrice` (`CodAzienda`),
        foreign key `Acquisto2` (`CodApp`) references `App` (`CodiceApp`),
        foreign key `Acquisto3` (`NumeroFattura`) references `Fattura` (`NumeroFattura`)
)
	ENGINE=MyISAM DEFAULT CHARSET=latin1;
    
insert into `Acquisto` (`NumeroFattura`, `CodiceFornitore`, `CodApp`)
values (1526, 1, 6), (2846, 1, 20), (5785, 1, 23), (5892, 1, 11), (1222, 1, 21), (7888, 1, 18), (9864, 1, 7), (9865, 1, 8), (2876, 1, 13), 
(2146, 1, 19), (5846, 1, 20), (9966, 1, 15), (3226, 1, 7) ,(2040, 1, 20), (5974, 1, 9), (6474, 1, 24), (5550, 1, 31), (3542, 1, 29),
(4752, 1, 30), (2222, 1, 19), (3333, 1, 16), (8987, 1, 11);


create table `AziendaFondatrice` 
(
	`CodAzienda` int  not null unique,
    `NomeAppStore` varchar(20) not null unique,
	`NomeAzienda` varchar(20) unique not null,
    primary key (`CodAzienda`)
)
	ENGINE=MyISAM DEFAULT CHARSET=latin1;

insert into `AziendaFondatrice` (`CodAzienda`, `NomeAppStore`, `NomeAzienda`)
values (1, 'GF Store', 'GF Company S.p.a');


create table `Genere` 
(
	`CodGenere` int not null,
    `NomeGenere` varchar(20) not null,
    `Categoria` varchar(20) not null,
    primary key (`CodGenere`)
)
	ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into `Genere` (`CodGenere`, `NomeGenere`, `Categoria`)
values (11, 'Funzionalità', 'Social Network'), (12, 'Funzionalità', 'Sport'), (13, 'Funzionalità', 'Shopping'), (14, 'Funzionalità', 'Giornali'),
(21, 'Giochi', 'Strategia'), (22, 'Giochi', 'Puzzle'), (23, 'Giochi', 'Di Ruolo'), (24, 'Giochi', 'Sport'),
(31, 'Film', 'Animazione'), (32, 'Film', 'Azione'), (33, 'Film', 'Horror'), (41, 'Musica', 'Rock'), (42, 'Musica', 'Jazz'), (44, 'Musica', 'Pop'),
(51, 'Libri', 'Fantasy'), (52, 'Libri', 'Gialli'), (53, 'Libri', 'Tecnologia');

    
create table `Fattura` 
(
	`NumeroFattura` int unique not null,
    `DataFattura` date not null,
    `CodFornitore` varchar(20) not null,
    `CartaPagamento` bigint not null,
    primary key (`NumeroFattura`),
    foreign key `Fattura` (`CodFornitore`) references `AziendaFondatrice` (`CodAzienda`),
    foreign key `Fattura2` (`CartaPagamento`) references `CartadiCredito`(`NumeroCarta`)
)
	ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into `Fattura` (`NumeroFattura`, `CodFornitore`, `DataFattura`, `CartaPagamento`)
values (1526, 1, '2018-05-29', 5369564521475236), (2846, 1, '2017-07-17', 5698745213654526), (5785, 1, '2017-02-22', 5454585896320154),
(5892, 1,'2017-08-12', 5454585896320154), (1222, 1, '2017-08-20', 5111454585896524), (7888, 1, '2018-09-25', 5624896578541237),
(9864, 1, '2016-12-15', 5210021222365897), (9865, 1, '2017-06-15', 5210021222365897), (2876, 1,'2017-07-22' , 5454585896320154), (2146, 1, '2017-04-10' , 5698745213654526),
(5846, 1, '2017-12-05', 5624896578541237), (9966, 1, '2017-08-23', 5698745213654526), (3226, 1, '2017-02-17',5987630001458632) ,(2040, 1,'2017-05-22' , 5454585896320154), 
(5974, 1, '2016-08-20', 5210021222365897), (6474, 1, '2017-04-02',5369564521475236), (5550, 1, '2016-12-25', 5987630001458632), (3542, 1, '2017-06-06', 5624896578541237),
(4752, 1, '2017-09-03', 5210021222365897), (2222, 1, '2016-02-02', 5463214785412300), (3333, 1, '2016-03-03', 5698745213654526), (8987, 1, '2017-09-21', 5369564521475236);

    
create table `CartadiCredito`
(
	`NumeroCarta` bigint unique not null,
    `CodSicurezza` int not null,
    `DataScadenzaCarta` date not null,
    `Intestatario` varchar(30) not null,
    primary key (`NumeroCarta`),
    foreign key `CartadiCredito` (`Intestatario`) references `Utente` (`CodFiscale`)
)
	ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into `CartadiCredito` (`NumeroCarta`, `Intestatario`, `DataScadenzaCarta`, `Codsicurezza`)
values (5369564521475236, 'PTTGMR95M20C743Z', '2020-05-01', 656), (5698745213654526, 'BTTFNC94R01C743Q', '2019-06-01', 565), 
(5624896578541237, 'DPSMTT95M20C743K', '2019-01-01', 646), (5463214785412300, 'BBRATN96N42C743F', '2018-05-01', 555),
(5236987410258732, 'CSTNCL95A12I452W', '2022-09-01', 551), (5210021222365897, 'MSRMRC92R06B563K', '2022-02-01', 112),
(5987630001458632, 'PCLFNC96M16G456J', '2023-06-01', 357), (5111454585896524, 'MRARSS9429SC745H', '2021-12-01', 999),
(5454585896320154, 'NRDSFN96L17G693Z', '2019-11-01', 202);


create table `Utente` 
(
    `NomeCognome` varchar (40) unique not null,
    `DataNascita` date not null,
    `CodFiscale` varchar (30) unique not null,
    primary key (`CodFiscale`)
)
	ENGINE=MyISAM DEFAULT CHARSET=latin1;

insert into `Utente` (`NomeCognome`, `DataNascita`, `CodFiscale`)
values ('Gianmarco Pettenuzzo', '1995-08-20', 'PTTGMR95M20C743Z'), ('Francesco Battistella', '1994-09-01', 'BTTFNC94R01C743Q'), ('Matteo Depascale','1995-08-20','DPSMTT95M20C743K'),
('Barbara Antonello', '1996-11-02', 'BBRATN96N42C743F'), ('Nicola Cisternino', '1995-01-12', 'CSTNCL95A12I452W'), ('Marco Masiero', '1996-09-09', 'MSRMRC92R06B563K'), ('Francesco Pecile', '1996-12-04', 'PCLFNC96M16G456J'),
('Mario Rossi', '1994-02-28', 'MRARSS9429SC745H'), ('Stefano Nordio', '1996-07-17', 'NRDSFN96L17G693Z');


create table `Account`
(
	`EMail` varchar(45) not null unique,
	`Utente` varchar(30)  not null,
    `Password` varchar(10) not null,
    primary key (`EMail`),
    foreign key `Account` (`Utente`) references `Utente` (`CodFiscale`)
)
	ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into `Account` (`EMail`, `Utente`, `Password`)
values ('gianpette@gmail.com', 'PTTGMR95M20C743Z', 'QWERTY!"£'), ('mattedepasca@gmail.com', 'DPSMTT95M20C743K', '123iop456'),
('frabatt@icloud.com', 'BTTFNC94R01C743Q', 'ZXCVBNM'), ('baranto@icloud.com', 'BBRATN96N42C743F', 'ChanelDior'),
('nicociste@outlook.com', 'CSTNCL95A12I452W', 'jghdakfjl'), ('marcmasi@icloud.com', 'MSRMRC92R06B563K', 'OnePiece'), ('marrosso@outlook.com', 'MRARSS9429SC745H', 'MarioRossi'),
('frapec@gmail.com', 'PCLFNC96M16G456J', '123lkjh85'), ('sterdio@outlook.com' , 'NRDSFN96L17G693Z', 'POIU0987ZX');


create table `Smartphone`
(
	`Utilizzatore` varchar(30) not null,
	`Modello` varchar(20) primary key not null,
    foreign key `Smartphone` (`Utilizzatore`) references `Utente` (`CodFiscale`)
)
	ENGINE=MyISAM DEFAULT CHARSET=latin1;

insert into `Smartphone` (`Utilizzatore`, `Modello`)
values ('PTTGMR95M20C743Z', 'Huawei P9'), ('BTTFNC94R01C743Q', 'Iphone 6s'), ('DPSMTT95M20C743K', 'Nexus 5X'),
('BBRATN96N42C743F', 'Iphone 7'), ('CSTNCL95A12I452W', 'Nokia Lumia 950'), ('MSRMRC92R06B563K', 'Iphone 4C'),
('PCLFNC96M16G456J', 'Huawei P10 Lite'), ('MRARSS9429SC745H', 'HTC One'), ('NRDSFN96L17G693Z', 'Acer Liquid Primo');


create table `Valutazione` 
(
	`Voto` int not null,
    `CodiceApp` int not null,
    `Recensione` varchar(100) default null,
    `Account` varchar(45) not null,
    primary key (`Account`, `CodiceApp`, `Voto`),
    foreign key `Valutazione` (`Account`) references `Account` (`EMAil`),
    foreign key `Valutazione1` (`CodiceApp`) references `App` (`CodiceApp`)
)
	ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into `Valutazione` (`Account`, `CodiceApp`, `Voto`, `Recensione`)
values ('gianpette@gmail.com', 24, 3, 'Bello ma non bellissimo'), ('gianpette@gmail.com', 6, 5, 'stupendo'), ('frabatt@icloud.com', 25, 4, null),
('frabatt@icloud.com', 15, 5, 'mi ricorda i vecchi tempi'), ('frabatt@icloud.com', 12, 2, 'non va sul mio cellulare'), 
('mattedepasca@gmail.com', 20, 5, 'è veramente semplice e bello'), ('baranto@icloud.com', 4, 1, 'non mi piace il calcio'),
('marcmasi@icloud.com', 12, 5, 'stupefacente'), ('marcmasi@icloud.com', 30, 4, 'fa molto ridere'), ('marrosso@outlook.com', 28, 3, 'delusione'),
('sterdio@outlook.com', 14, 5, 'molto bello'), ('sterdio@outlook.com', 11, 5, 'bellissima canzone'), ('sterdio@outlook.com', 13, 5, null),
('nicociste@outlook.com', 17, 4, null), ('nicociste@outlook.com', 1, 2, null), ('baranto@icloud.com', 1, 2, 'da sistemare'), ('mattedepasca@gmail.com', 1, 4, 'molto carino'),
('marrosso@outlook.com', 1, 5, null), ('marcmasi@icloud.com', 1, 3, 'qualche bug da aggiustare'), ('baranto@icloud.com', 1, 4, 'molto meglio dopo l ultimo aggiornamento'),
('frapec@gmail.com', 1, 3, null); 
 
 
 create table `ListaDownload`
 (
	`Account` varchar(45) not null,
    `AppScaricata` int,
    `DataDownload` date,
    primary key (`Account`, `AppScaricata`, `DataDownload`),
    foreign key `ListaDownload1` (`AppScaricata`) references `App` (`CodiceApp`),
	foreign key `ListaDownload2` (`Account`) references `Account` (`EMAil`)
)
	ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into `ListaDownload` (`Account`, `AppScaricata`, `DataDownload`)
values ('gianpette@gmail.com', 6, '2018-05-29'), ('gianpette@gmail.com', 24, '2017-04-02'), ('gianpette@gmail.com', 11, '2017-09-21'),
('gianpette@gmail.com', 25, '2017-08-25'), ('gianpette@gmail.com', 4, '2016-12-27'), ('gianpette@gmail.com', 2, '2017-09-17'), 
('frabatt@icloud.com', 15, '2017-08-23'), ('frabatt@icloud.com', 20, '2017-07-17'), ('frabatt@icloud.com', 19, '2017-04-10'), ('frabatt@icloud.com', 16, '2016-03-03'),
('frabatt@icloud.com', 12, '2017-01-01'), ('frabatt@icloud.com', 25, '2016-05-20'), ('mattedepasca@gmail.com', 20, '2017-12-05'),
('mattedepasca@gmail.com', 18, '2018-09-25'), ('mattedepasca@gmail.com', 29, '2017-06-06'), ('mattedepasca@gmail.com', 27, '2017-08-08'),
('mattedepasca@gmail.com', 26, '2017-06-25'), ('mattedepasca@gmail.com', 1, '2016-12-24'), ('baranto@icloud.com', 19, '2016-02-02'),
('baranto@icloud.com', 4, '2016-12-26'), ('baranto@icloud.com', 14, '2017-05-02'), ('baranto@icloud.com', 5, '2017-08-26'), ('baranto@icloud.com', 1, '2015-06-02'),
('nicociste@outlook.com', 1, '2015-05-25'), ('nicociste@outlook.com', 17, '2017-10-10'), ('nicociste@outlook.com', 3, '2016-08-20'),
('nicociste@outlook.com', 22, '2016-04-21'), ('nicociste@outlook.com', 10, '2017-07-29'), ('nicociste@outlook.com', 28, '2016-05-28'),
('marcmasi@icloud.com', 7, '2016-12-15'), ('marcmasi@icloud.com', 8, '2017-06-15'), ('marcmasi@icloud.com', 9, '2016-08-20'), ('marcmasi@icloud.com', 30, '2017-09-03'),
('marcmasi@icloud.com', 12, '2016-10-21'), ('marcmasi@icloud.com', 1, '2015-09-15'), ('marrosso@outlook.com', 21, '2017-08-20'),
('marrosso@outlook.com', 28, '2016-10-20'), ('marrosso@outlook.com', 2, '2016-05-20'), ('marrosso@outlook.com', 1, '2015-05-12'), 
('frapec@gmail.com', 31, '2016-12-25'), ('frapec@gmail.com', 7, '2017-02-17'), ('frapec@gmail.com', 14, '2016-11-15'), ('frapec@gmail.com', 25, '2017-02-15'),
('frapec@gmail.com', 4, '2017-07-10'), ('frapec@gmail.com', 1, '2016-04-17'), ('sterdio@outlook.com', 11, '2017-08-12'),  ('sterdio@outlook.com', 23, '2017-02-22'), 
('sterdio@outlook.com', 13, '2017-07-22'), ('sterdio@outlook.com', 20, '2017-05-22'), ('sterdio@outlook.com', 14, '2017-06-22'), ('sterdio@outlook.com', 2, '2016-04-10');



DELIMITER $$
CREATE FUNCTION `NDownl` (CodiceApp int)
RETURNS int

BEGIN
DECLARE App int;

SELECT count(CodiceApp)
INTO App
FROM ListaDownload
WHERE AppScaricata = CodiceApp;

RETURN (App);
END$$


DELIMITER $$
CREATE FUNCTION `MediaVoti` (CodiceApp int)
RETURNS float
BEGIN
DECLARE Media float;
SELECT AVG(Voto)
INTO Media
FROM Valutazione
WHERE Valutazione.CodiceApp = CodiceApp;

RETURN Media;
END$$


DELIMITER $$
CREATE TRIGGER ControllaValutazione
BEFORE INSERT ON `Valutazione` 
FOR EACH ROW
BEGIN
DECLARE Account varchar (45);
DECLARE App int;
DECLARE Voto int;
DECLARE Recensione varchar (100);
IF (ListaDownload.AppScaricata = App AND ListaDownload.Account=Account)
	THEN SET NEW.Valutazione = CONCAT(Account, App, Voto, Recensione);
END IF;
END $$


DELIMITER $$
CREATE TRIGGER Aggiornamento
AFTER INSERT ON `Utente`
FOR EACH ROW
BEGIN
DECLARE Mail varchar(45);
DECLARE Pass varchar(10);
DECLARE Model varchar(20);
INSERT INTO Account (Utente, EMail, Password) values (NEW.CodFiscale, Mail, Pass);
INSERT INTO Smartphone (Utilizzatore, Modello) values (NEW.CodFiscale, Model);
END $$
