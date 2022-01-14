-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 14, 2022 alle 23:33
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tempocasa`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `afferenza`
--

CREATE TABLE `afferenza` (
  `Consulente` char(7) NOT NULL,
  `Città` varchar(20) NOT NULL,
  `Indirizzo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `afferenza`
--

INSERT INTO `afferenza` (`Consulente`, `Città`, `Indirizzo`) VALUES
('FI896RG', 'Porto Sant\'Elpidio', 'Via Umberto I'),
('GF488BV', 'Porto Sant\'Elpidio', 'Via Umberto I'),
('LP009MV', 'Porto Sant\'Elpidio', 'Via Umberto I'),
('MC146LO', 'Porto Sant\'Elpidio', 'Via Umberto I'),
('MT113AA', 'Porto Sant\'Elpidio', 'Via Umberto I'),
('RR183CS', 'Porto Sant\'Elpidio', 'Via Umberto I'),
('SF552EF', 'Porto Sant\'Elpidio', 'Via Umberto I'),
('TT485IP', 'Porto Sant\'Elpidio', 'Via Umberto I'),
('VB782MM', 'Porto Sant\'Elpidio', 'Via Umberto I'),
('VU205SA', 'Porto Sant\'Elpidio', 'Via Umberto I');

-- --------------------------------------------------------

--
-- Struttura della tabella `affitto`
--

CREATE TABLE `affitto` (
  `Cliente` char(7) NOT NULL,
  `Immobile` char(10) NOT NULL,
  `Prezzo_Affitto` int(11) NOT NULL,
  `Cauzione` int(11) NOT NULL
) ;

--
-- Dump dei dati per la tabella `affitto`
--

INSERT INTO `affitto` (`Cliente`, `Immobile`, `Prezzo_Affitto`, `Cauzione`) VALUES
('AZ313ST', '4488205697', 1200, 300),
('AZ313ST', '6581898466', 500, 350),
('CG826OP', '7777602833', 850, 400),
('CI445RC', '5456800060', 260, 400),
('CI445RC', '8096447987', 1000, 350),
('LP101BB', '1156847582', 950, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `appartenenza`
--

CREATE TABLE `appartenenza` (
  `Immobile` char(10) NOT NULL,
  `Zona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `appartenenza`
--

INSERT INTO `appartenenza` (`Immobile`, `Zona`) VALUES
('0568022293', 5),
('1156847582', 1),
('1520674988', 5),
('2056448944', 4),
('2885052144', 3),
('2999634508', 6),
('3500689277', 5),
('3776990130', 4),
('4101450779', 3),
('4488205697', 5),
('5267170309', 1),
('5456800060', 2),
('6581898466', 2),
('7410669385', 1),
('7485961023', 4),
('7777602833', 2),
('8080552397', 4),
('8096447987', 5),
('9476852037', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `assegnamento`
--

CREATE TABLE `assegnamento` (
  `Consulente` char(7) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `Completati` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `assegnamento`
--

INSERT INTO `assegnamento` (`Consulente`, `Tipo`, `Completati`) VALUES
('FI896RG', 'Affitti', 0),
('FI896RG', 'Ispezioni', 2),
('FI896RG', 'Valutazioni', 0),
('FI896RG', 'Vendite', 2),
('GF488BV', 'Affitti', 1),
('GF488BV', 'Ispezioni', 2),
('GF488BV', 'Valutazioni', 0),
('GF488BV', 'Vendite', 0),
('LP009MV', 'Affitti', 0),
('LP009MV', 'Ispezioni', 0),
('LP009MV', 'Valutazioni', 0),
('LP009MV', 'Vendite', 3),
('MC146LO', 'Affitti', 0),
('MC146LO', 'Ispezioni', 0),
('MC146LO', 'Valutazioni', 1),
('MC146LO', 'Vendite', 0),
('MT113AA', 'Affitti', 0),
('MT113AA', 'Ispezioni', 1),
('MT113AA', 'Valutazioni', 1),
('MT113AA', 'Vendite', 2),
('RR183CS', 'Affitti', 1),
('RR183CS', 'Ispezioni', 1),
('RR183CS', 'Valutazioni', 0),
('RR183CS', 'Vendite', 0),
('SF552EF', 'Affitti', 0),
('SF552EF', 'Ispezioni', 0),
('SF552EF', 'Valutazioni', 2),
('SF552EF', 'Vendite', 3),
('TT485IP', 'Affitti', 0),
('TT485IP', 'Ispezioni', 2),
('TT485IP', 'Valutazioni', 0),
('TT485IP', 'Vendite', 2),
('VB782MM', 'Affitti', 0),
('VB782MM', 'Ispezioni', 0),
('VB782MM', 'Valutazioni', 3),
('VB782MM', 'Vendite', 0),
('VU205SA', 'Affitti', 0),
('VU205SA', 'Ispezioni', 3),
('VU205SA', 'Valutazioni', 0),
('VU205SA', 'Vendite', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `attivita`
--

CREATE TABLE `attivita` (
  `Data` date NOT NULL,
  `Ora_inizio` time NOT NULL,
  `Consulente` char(7) NOT NULL,
  `Ora_fine` time NOT NULL,
  `Tipo` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `attivita`
--

INSERT INTO `attivita` (`Data`, `Ora_inizio`, `Consulente`, `Ora_fine`, `Tipo`) VALUES
('2021-08-14', '09:00:00', 'FI896RG', '10:00:00', 'Valutazione'),
('2022-01-08', '14:30:00', 'FI896RG', '15:30:00', 'Valutazione'),
('2022-01-01', '10:00:00', 'GF488BV', '11:00:00', 'Ispezione appartamento'),
('2021-03-06', '10:00:00', 'LP009MV', '12:00:00', 'Vendita'),
('2021-03-06', '17:00:00', 'LP009MV', '18:00:00', 'Ispezione appartamento'),
('2021-08-14', '14:00:00', 'MT113AA', '16:30:00', 'Ispezione appartamento'),
('2021-10-09', '08:00:00', 'MT113AA', '11:00:00', 'Trattativa di vendita'),
('2021-10-09', '07:00:00', 'RR183CS', '09:00:00', 'Vendita'),
('2021-10-09', '16:00:00', 'RR183CS', '17:30:00', 'Valutazione'),
('2021-08-14', '16:30:00', 'SF552EF', '18:30:00', 'Visita appartamento'),
('2022-01-01', '11:00:00', 'TT485IP', '13:00:00', 'Affitto'),
('2022-01-01', '15:00:00', 'TT485IP', '16:20:00', 'Vendita'),
('2021-10-09', '18:00:00', 'VB782MM', '20:00:00', 'Affitto di un capannone'),
('2021-05-13', '15:00:00', 'VU205SA', '17:30:00', 'Ispezione appartamento'),
('2021-11-21', '15:00:00', 'VU205SA', '17:30:00', 'Vendita');

-- --------------------------------------------------------

--
-- Struttura della tabella `calendario`
--

CREATE TABLE `calendario` (
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `calendario`
--

INSERT INTO `calendario` (`Data`) VALUES
('2010-02-20'),
('2019-12-25'),
('2020-01-30'),
('2020-05-11'),
('2020-06-18'),
('2021-03-06'),
('2021-05-13'),
('2021-11-21'),
('2022-01-13');

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE `cliente` (
  `Carta_di_identità` char(7) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Numero_di_telefono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `cliente`
--

INSERT INTO `cliente` (`Carta_di_identità`, `Nome`, `Cognome`, `Numero_di_telefono`) VALUES
('AD411BM', 'Alessandro', 'Dacco', '3664519710'),
('AZ313ST', 'Alessio', 'Satteri', '3459827310'),
('CG826OP', 'Chiara', 'Galoppi', '3338045202'),
('CI445RC', 'Claudio', 'Irchetti', '3668447150'),
('FS775TF', 'Francesca', 'Sattafo', '3357489514'),
('LP101BB', 'Leonardo', 'Palombi', '3278165307'),
('RF882CV', 'Renato', 'Frattesi', '3805521477'),
('RT486MI', 'Roberto', 'Tammini', '3278510697'),
('SS880BR', 'Sofia', 'Sbrolla', '3884101267'),
('VM180LE', 'Valerio', 'Molle', '3886512014');

-- --------------------------------------------------------

--
-- Struttura della tabella `consulente`
--

CREATE TABLE `consulente` (
  `Carta_di_identità` char(7) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Ruolo` varchar(20) NOT NULL,
  `Numero_di_telefono` char(10) DEFAULT NULL,
  `E_mail` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `consulente`
--

INSERT INTO `consulente` (`Carta_di_identità`, `Nome`, `Cognome`, `Ruolo`, `Numero_di_telefono`, `E_mail`) VALUES
('FI896RG', 'Federico', 'Irgoni', 'Consulente', '3447108947', 'federico.irg@alice.it'),
('GF488BV', 'Gianni', 'Fabbivo', 'Consulente', '3806451582', 'g.f@hotmail.it'),
('LP009MV', 'Leonardo', 'Pemvini', 'Consulente', '3779520638', 'pemvinileo@virgilio.it'),
('MC146LO', 'Margherita', 'Cloppa', 'Consulente', '3400268939', 'cloppa_marghe@alice.it'),
('MT113AA', 'Michela', 'Tenaglia', 'Consulente', '3445829671', 'mi.tenaglia@alice.it'),
('RR183CS', 'Renato', 'Racciconi', 'Consulente', '3669811452', 'racciconi_ren@hotmail.it'),
('SF552EF', 'Sara', 'Fefesi', 'Consulente', '3998710483', 'sara_lavoro@libero.it'),
('TT485IP', 'Tiziana', 'Tippari', 'Consulente', '3451639842', 'tiz.tip@alice.it'),
('VB782MM', 'Vincenzo', 'Bommi', 'Consulente', '3112896327', 'vincenzobommi@virgilio.it'),
('VU205SA', 'Valeria', 'Usani', 'Consulente', '3115896321', 'usanival@outlook.it');

-- --------------------------------------------------------

--
-- Struttura della tabella `controllo`
--

CREATE TABLE `controllo` (
  `Codice` int(11) NOT NULL,
  `Città` varchar(20) NOT NULL,
  `Indirizzo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `controllo`
--

INSERT INTO `controllo` (`Codice`, `Città`, `Indirizzo`) VALUES
(1, 'Porto Sant\'Elpidio', 'Via Umberto I'),
(2, 'Porto Sant\'Elpidio', 'Via Umberto I'),
(3, 'Porto Sant\'Elpidio', 'Via Umberto I'),
(4, 'Porto Sant\'Elpidio', 'Via Umberto I'),
(5, 'Porto Sant\'Elpidio', 'Via Umberto I'),
(6, 'Porto Sant\'Elpidio', 'Via Umberto I');

-- --------------------------------------------------------

--
-- Struttura della tabella `detiene`
--

CREATE TABLE `detiene` (
  `Cliente` char(7) NOT NULL,
  `Immobile` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `detiene`
--

INSERT INTO `detiene` (`Cliente`, `Immobile`) VALUES
('AD411BM', '0568022293'),
('AD411BM', '4101450779'),
('AD411BM', '7777602833'),
('AZ313ST', '1520674988'),
('CG826OP', '1156847582'),
('CG826OP', '2885052144'),
('CI445RC', '3776990130'),
('CI445RC', '7485961023'),
('FS775TF', '5267170309'),
('FS775TF', '7410669385'),
('LP101BB', '5456800060'),
('LP101BB', '9941562811'),
('RF882CV', '8080552397'),
('RT486MI', '2999634508'),
('RT486MI', '8096447987'),
('SS880BR', '2056448944'),
('SS880BR', '6581898466'),
('SS880BR', '9476852037'),
('VM180LE', '3500689277'),
('VM180LE', '4488205697');

-- --------------------------------------------------------

--
-- Struttura della tabella `gestione`
--

CREATE TABLE `gestione` (
  `Consulente` char(7) DEFAULT NULL,
  `Immobile` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `gestione`
--

INSERT INTO `gestione` (`Consulente`, `Immobile`) VALUES
('FI896RG', '1156847582'),
('FI896RG', '2885052144'),
('GF488BV', '3776990130'),
('GF488BV', '9476852037'),
('LP009MV', '0568022293'),
('LP009MV', '2056448944'),
('LP009MV', '4488205697'),
('LP009MV', '7777602833'),
('MC146LO', '2999634508'),
('MT113AA', '6581898466'),
('RR183CS', '8080552397'),
('SF552EF', '5456800060'),
('SF552EF', '7410669385'),
('TT485IP', '5267170309'),
('VB782MM', '3500689277');

-- --------------------------------------------------------

--
-- Struttura della tabella `immobile`
--

CREATE TABLE `immobile` (
  `Codice_Immobile` char(10) NOT NULL,
  `Indirizzo` varchar(20) NOT NULL,
  `Disponibilità` varchar(20) NOT NULL
) ;

--
-- Dump dei dati per la tabella `immobile`
--

INSERT INTO `immobile` (`Codice_Immobile`, `Indirizzo`, `Disponibilità`) VALUES
('0568022293', 'Via Farfallone 52', 'valutato'),
('1156847582', 'Via Baldassarri 78', 'in affitto'),
('1520674988', 'Via Tavernelle 51', 'valutato'),
('2056448944', 'Via Cristoforo Colom', 'in vendita'),
('2885052144', 'Via Milano 3', 'venduto'),
('2999634508', 'Via Del monte 4', 'in vendita'),
('3500689277', 'Via Del Bianco 88', 'in vendita'),
('3776990130', 'Via 5 giornate 99', 'in vendita'),
('4101450779', 'Via Baraccola 2', 'in vendita'),
('4488205697', 'Via Fratti 41', 'affittato'),
('5267170309', 'Via Cataldi 118', 'venduto'),
('5456800060', 'Via Vecchia Romagna', 'affittato'),
('6581898466', 'Via Rossini 67', 'in affitto'),
('7410669385', 'Via Colombo 78', 'valutato'),
('7485961023', 'Via delle Camille', 'in vendita'),
('7777602833', 'Via Einaudi 101', 'affittato'),
('8080552397', 'Via Raffaeli 46', 'valutato'),
('8096447987', 'Via Cesare Battisti', 'affittato'),
('9476852037', 'Via Dei mille fiori', 'venduto'),
('9941562811', 'Via Pippo 13', 'valutato');

-- --------------------------------------------------------

--
-- Struttura della tabella `immobile_commerciale`
--

CREATE TABLE `immobile_commerciale` (
  `Immobile` char(10) DEFAULT NULL,
  `Piano` int(11) NOT NULL,
  `Superficie` float NOT NULL,
  `Tipologia` varchar(20) NOT NULL,
  `Numero_bagni` int(11) NOT NULL,
  `Numero_cucine` int(11) NOT NULL,
  `Costi_fissi` float NOT NULL,
  `Tipo_Riscaldamento` varchar(20) NOT NULL,
  `Parcheggio` char(2) NOT NULL,
  `Numero_piani` int(11) NOT NULL,
  `Allarme` char(2) NOT NULL,
  `Magazzino` char(2) NOT NULL
) ;

--
-- Dump dei dati per la tabella `immobile_commerciale`
--

INSERT INTO `immobile_commerciale` (`Immobile`, `Piano`, `Superficie`, `Tipologia`, `Numero_bagni`, `Numero_cucine`, `Costi_fissi`, `Tipo_Riscaldamento`, `Parcheggio`, `Numero_piani`, `Allarme`, `Magazzino`) VALUES
('7485961023', 1, 85, 'Monolocale', 2, 1, 2500, 'A pavimento', 'si', 1, 'no', 'si'),
('9941562811', 1, 65, 'Ristorante', 2, 2, 1450, 'Radiatori', 'si', 1, 'si', 'si'),
('4101450779', 1, 30, 'Bar', 2, 0, 680, 'A soffitto', 'no', 1, 'no', 'si'),
('6581898466', 1, 80, 'Negozio', 0, 0, 1500, 'Radiatori', 'si', 1, 'si', 'si'),
('5456800060', 1, 95, 'Ristorante', 2, 2, 950, 'Camini', 'si', 2, 'no', 'si'),
('2885052144', 1, 60, 'Negozio', 1, 0, 1000, 'Radiatori', 'no', 1, 'si', 'si');

-- --------------------------------------------------------

--
-- Struttura della tabella `immobile_industriale`
--

CREATE TABLE `immobile_industriale` (
  `Immobile` char(10) NOT NULL,
  `Piano` int(11) NOT NULL,
  `Superficie` float NOT NULL,
  `Numero_bagni` int(11) NOT NULL,
  `Costi_fissi` float NOT NULL,
  `Riscaldamento` varchar(20) NOT NULL,
  `Parcheggio` char(2) NOT NULL,
  `Classe_Energetica` char(1) NOT NULL,
  `Numero_piani` int(11) NOT NULL,
  `Altezza_Soffitto` float NOT NULL,
  `Stato_Costruzione` varchar(20) NOT NULL,
  `Allarme` char(2) NOT NULL
) ;

--
-- Dump dei dati per la tabella `immobile_industriale`
--

INSERT INTO `immobile_industriale` (`Immobile`, `Piano`, `Superficie`, `Numero_bagni`, `Costi_fissi`, `Riscaldamento`, `Parcheggio`, `Classe_Energetica`, `Numero_piani`, `Altezza_Soffitto`, `Stato_Costruzione`, `Allarme`) VALUES
('0568022293', 2, 70, 3, 1400, 'A pavimento', 'si', 'B', 2, 10, 'Nuovo', 'no'),
('1156847582', 1, 92, 3, 2500, 'Energia solare', 'si', 'A', 1, 8, 'Nuovo', 'si'),
('4488205697', 1, 35, 1, 740, 'A patrete', 'no', 'A', 1, 4, 'Nuovo', 'si'),
('5267170309', 1, 85, 2, 2000, 'Radiatori', 'si', 'C', 1, 6, 'Non nuovo', 'si'),
('7777602833', 1, 75, 3, 2000, 'Energia solare', 'si', 'A', 1, 10, 'Nuovo', 'si'),
('8080552397', 1, 84, 2, 1500, 'Energia solare', 'si', 'A', 1, 8, 'Semi-nuovo', 'si'),
('8096447987', 2, 85, 2, 1000, 'Radiatori', 'si', 'B', 2, 4, 'Quasi nuovo', 'no');

-- --------------------------------------------------------

--
-- Struttura della tabella `immobile_residenziale`
--

CREATE TABLE `immobile_residenziale` (
  `Immobile` char(10) NOT NULL,
  `Piano` int(11) NOT NULL,
  `Superficie` float NOT NULL,
  `Tipologia` varchar(20) NOT NULL,
  `Numero_bagni` int(11) NOT NULL,
  `Numero_camere` int(11) NOT NULL,
  `Numero_cucine` int(11) NOT NULL,
  `Numero_soggiorni` int(11) NOT NULL,
  `Posti_auto` int(11) NOT NULL,
  `Ascensore` char(2) NOT NULL
) ;

--
-- Dump dei dati per la tabella `immobile_residenziale`
--

INSERT INTO `immobile_residenziale` (`Immobile`, `Piano`, `Superficie`, `Tipologia`, `Numero_bagni`, `Numero_camere`, `Numero_cucine`, `Numero_soggiorni`, `Posti_auto`, `Ascensore`) VALUES
('1520674988', 1, 40, 'Appartamento', 1, 3, 1, 1, 2, 'no'),
('2056448944', 4, 38, 'Appartamento', 2, 2, 1, 2, 1, 'si'),
('2999634508', 5, 40, 'Appartamento', 2, 2, 1, 2, 2, 'si'),
('3500689277', 2, 32, 'Appartamento', 1, 3, 1, 1, 0, 'no'),
('3776990130', 8, 25, 'Mansarda', 1, 2, 1, 1, 1, 'si'),
('7410669385', 4, 38, 'Appartamento', 1, 2, 1, 1, 2, 'no'),
('9476852037', 6, 50, 'Mansarda', 1, 1, 1, 2, 1, 'si');

-- --------------------------------------------------------

--
-- Struttura della tabella `obbiettivo`
--

CREATE TABLE `obbiettivo` (
  `Tipo` varchar(30) NOT NULL,
  `Consulente` char(7) NOT NULL,
  `Quantità` int(11) DEFAULT NULL
) ;

--
-- Dump dei dati per la tabella `obbiettivo`
--

INSERT INTO `obbiettivo` (`Tipo`, `Consulente`, `Quantità`) VALUES
('Affitti', 'GF488BV', 1),
('Affitti', 'RR183CS', 1),
('Affitti', 'VU205SA', 1),
('Ispezioni', 'FI896RG', 3),
('Ispezioni', 'GF488BV', 1),
('Ispezioni', 'MT113AA', 1),
('Ispezioni', 'RR183CS', 3),
('Ispezioni', 'TT485IP', 1),
('Ispezioni', 'VU205SA', 1),
('Valutazioni', 'MC146LO', 1),
('Valutazioni', 'MT113AA', 2),
('Valutazioni', 'SF552EF', 2),
('Valutazioni', 'VB782MM', 1),
('Vendite', 'FI896RG', 2),
('Vendite', 'GF488BV', 1),
('Vendite', 'LP009MV', 4),
('Vendite', 'MC146LO', 2),
('Vendite', 'MT113AA', 2),
('Vendite', 'SF552EF', 3),
('Vendite', 'TT485IP', 2),
('Vendite', 'VU205SA', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `proprietario`
--

CREATE TABLE `proprietario` (
  `Carta_di_identità` char(7) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `E_mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `proprietario`
--

INSERT INTO `proprietario` (`Carta_di_identità`, `Nome`, `Cognome`, `E_mail`) VALUES
('DR123AN', 'Daniele', 'Rosettani', 'd.rosettani@alice.it');

-- --------------------------------------------------------

--
-- Struttura della tabella `richiesta_commerciale`
--

CREATE TABLE `richiesta_commerciale` (
  `Codice_identificativo` char(10) NOT NULL,
  `Cliente` char(7) DEFAULT NULL,
  `Budget` int(11) DEFAULT NULL,
  `Piano` int(11) DEFAULT NULL,
  `Superficie` float DEFAULT NULL,
  `Tipologia` varchar(20) DEFAULT NULL,
  `Numero_bagni` int(11) DEFAULT NULL,
  `Numero_cucine` int(11) DEFAULT NULL,
  `Costi_fissi` float DEFAULT NULL,
  `Tipo_Riscaldamento` varchar(20) DEFAULT NULL,
  `Parcheggio` char(2) DEFAULT NULL,
  `Numero_piani` int(11) DEFAULT NULL,
  `Allarme` char(2) DEFAULT NULL,
  `Magazzino` char(2) DEFAULT NULL
) ;

--
-- Dump dei dati per la tabella `richiesta_commerciale`
--

INSERT INTO `richiesta_commerciale` (`Codice_identificativo`, `Cliente`, `Budget`, `Piano`, `Superficie`, `Tipologia`, `Numero_bagni`, `Numero_cucine`, `Costi_fissi`, `Tipo_Riscaldamento`, `Parcheggio`, `Numero_piani`, `Allarme`, `Magazzino`) VALUES
('AA55126378', 'AD411BM', 100000, NULL, 25, 'Appartamento', 1, 1, NULL, NULL, 'si', 1, 'no', 'no'),
('AB48023976', 'CI445RC', 85000, 1, 60, 'Monolocale', 1, 2, 3000, 'Gas', 'si', NULL, 'si', 'si'),
('RC00674998', 'CG826OP', 450000, NULL, 65, 'Capannone', NULL, NULL, 3820, 'Fan-coil', 'no', 1, NULL, 'no');

-- --------------------------------------------------------

--
-- Struttura della tabella `richiesta_industriale`
--

CREATE TABLE `richiesta_industriale` (
  `Codice_identificativo` char(10) NOT NULL,
  `Cliente` char(7) DEFAULT NULL,
  `Budget` int(11) DEFAULT NULL,
  `Piano` int(11) DEFAULT NULL,
  `Superficie` float DEFAULT NULL,
  `Numero_bagni` int(11) DEFAULT NULL,
  `Costi_Fissi` float DEFAULT NULL,
  `Riscaldamento` varchar(20) DEFAULT NULL,
  `Parcheggio` char(2) DEFAULT NULL,
  `Classe_Energetica` char(1) DEFAULT NULL,
  `Numero_piani` int(11) DEFAULT NULL,
  `Altezza_Soffitto` float DEFAULT NULL,
  `Stato_Costruzione` varchar(20) DEFAULT NULL,
  `Allarme` char(2) DEFAULT NULL
) ;

--
-- Dump dei dati per la tabella `richiesta_industriale`
--

INSERT INTO `richiesta_industriale` (`Codice_identificativo`, `Cliente`, `Budget`, `Piano`, `Superficie`, `Numero_bagni`, `Costi_Fissi`, `Riscaldamento`, `Parcheggio`, `Classe_Energetica`, `Numero_piani`, `Altezza_Soffitto`, `Stato_Costruzione`, `Allarme`) VALUES
('RI52488896', 'FS775TF', 1500000, 2, 140, 2, 20000, 'A soffitto', 'si', 'A', 2, NULL, 'Nuovo', 'si'),
('RI66378055', 'RT486MI', 600000, 1, NULL, NULL, 5000, 'Energia solare', 'si', 'A', 2, 10, 'Quasi nuovo', 'si'),
('RI82336996', 'AZ313ST', 850000, 2, 100, 3, NULL, 'A pavimento', 'si', 'B', 2, NULL, NULL, 'si');

-- --------------------------------------------------------

--
-- Struttura della tabella `richiesta_residenziale`
--

CREATE TABLE `richiesta_residenziale` (
  `Codice_identificativo` char(10) NOT NULL,
  `Cliente` char(7) DEFAULT NULL,
  `Budget` int(11) DEFAULT NULL,
  `Piano` int(11) DEFAULT NULL,
  `Superficie` float DEFAULT NULL,
  `Tipologia` varchar(20) DEFAULT NULL,
  `Numero_bagni` int(11) DEFAULT NULL,
  `Numero_camere` int(11) DEFAULT NULL,
  `Numero_cucine` int(11) DEFAULT NULL,
  `Numero_soggiorni` int(11) DEFAULT NULL,
  `Posti_auto` int(11) DEFAULT NULL,
  `Ascensore` char(2) DEFAULT NULL
) ;

--
-- Dump dei dati per la tabella `richiesta_residenziale`
--

INSERT INTO `richiesta_residenziale` (`Codice_identificativo`, `Cliente`, `Budget`, `Piano`, `Superficie`, `Tipologia`, `Numero_bagni`, `Numero_camere`, `Numero_cucine`, `Numero_soggiorni`, `Posti_auto`, `Ascensore`) VALUES
('RC52068810', 'LP101BB', 150000, 2, 90, 'Casa singola', 2, 4, 1, 2, 2, NULL),
('RR48796235', 'SS880BR', 95000, NULL, 35, 'Mansarda', 1, 1, NULL, 1, NULL, 'no'),
('RR52036974', 'VM180LE', 180000, NULL, NULL, 'Appartamento', 1, 1, 1, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `sede`
--

CREATE TABLE `sede` (
  `Città` varchar(20) NOT NULL,
  `Indirizzo` varchar(20) NOT NULL,
  `Proprietario` char(7) DEFAULT NULL,
  `E_mail` varchar(30) NOT NULL,
  `Numero_di_telefono` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `sede`
--

INSERT INTO `sede` (`Città`, `Indirizzo`, `Proprietario`, `E_mail`, `Numero_di_telefono`) VALUES
('Porto Sant\'Elpidio', 'Via Umberto I', 'DR123AN', 'tempocasaPse@virgilio.it', '0734452019');

-- --------------------------------------------------------

--
-- Struttura della tabella `transazione`
--

CREATE TABLE `transazione` (
  `Tipo` char(1) NOT NULL,
  `Proprietario` char(7) DEFAULT NULL,
  `Acquirente` char(7) DEFAULT NULL,
  `Immobile` char(10) NOT NULL,
  `Calendario` date NOT NULL,
  `Zona` int(11) DEFAULT NULL,
  `Prezzo` int(11) DEFAULT NULL CHECK (`Prezzo` > 0)
) ;

--
-- Dump dei dati per la tabella `transazione`
--

INSERT INTO `transazione` (`Tipo`, `Proprietario`, `Acquirente`, `Immobile`, `Calendario`, `Zona`, `Prezzo`) VALUES
('A', 'RT486MI', 'CI445RC', '0568022293', '2020-06-18', 2, 3000),
('V', 'CG826OP', 'AZ313ST', '1156847582', '2022-01-13', 4, 320000),
('V', 'CG826OP', 'SS880BR', '2056448944', '2019-12-25', 6, 175000),
('V', 'VM180LE', 'AZ313ST', '2056448944', '2021-03-06', 4, 250000),
('V', 'RF882CV', 'AZ313ST', '2885052144', '2022-01-13', 4, 250000),
('V', 'AZ313ST', 'CI445RC', '3776990130', '2020-06-18', 2, 150000),
('A', 'LP101BB', 'RT486MI', '4101450779', '2020-05-11', 5, 6900),
('A', 'AD411BM', 'RT486MI', '4488205697', '2010-02-20', 6, 45000),
('V', 'SS880BR', 'FS775TF', '5267170309', '2020-06-18', 4, 100000),
('A', 'FS775TF', 'SS880BR', '6581898466', '2021-11-21', 4, 4500),
('V', 'AD411BM', 'RF882CV', '7485961023', '2020-05-11', 4, 148000),
('A', 'FS775TF', 'SS880BR', '7777602833', '2022-01-13', 1, 100000),
('A', 'RT486MI', 'SS880BR', '8080552397', '2019-12-25', 6, 8500),
('V', 'VM180LE', 'CG826OP', '8080552397', '2021-03-06', 2, 84000),
('A', 'LP101BB', 'VM180LE', '9476852037', '2020-06-18', 3, 6000);

-- --------------------------------------------------------

--
-- Struttura della tabella `valutazione`
--

CREATE TABLE `valutazione` (
  `Data` date DEFAULT NULL,
  `Immobile` char(10) DEFAULT NULL,
  `Cliente` char(7) DEFAULT NULL,
  `Consulente` char(7) DEFAULT NULL,
  `Stima` int(11) DEFAULT NULL CHECK (`Stima` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `valutazione`
--

INSERT INTO `valutazione` (`Data`, `Immobile`, `Cliente`, `Consulente`, `Stima`) VALUES
('2022-01-13', '1520674988', 'SS880BR', 'MT113AA', 126000),
('2020-05-11', '9941562811', 'CG826OP', 'GF488BV', 95000),
('2019-04-15', '9476852037', 'LP101BB', 'VB782MM', 400000),
('2018-05-26', '4488205697', 'AZ313ST', 'MT113AA', 78500),
('2020-06-18', '7410669385', 'LP101BB', 'SF552EF', 85000),
('2020-01-30', '8080552397', 'RF882CV', 'GF488BV', 220000),
('2021-11-21', '0568022293', 'RT486MI', 'FI896RG', 145000);

-- --------------------------------------------------------

--
-- Struttura della tabella `vendita`
--

CREATE TABLE `vendita` (
  `Cliente` char(7) NOT NULL,
  `Immobile` char(10) NOT NULL,
  `Prezzo` int(11) DEFAULT NULL CHECK (`Prezzo` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `vendita`
--

INSERT INTO `vendita` (`Cliente`, `Immobile`, `Prezzo`) VALUES
('AD411BM', '2056448944', 150000),
('AD411BM', '2999634508', 105000),
('LP101BB', '3776990130', 165000),
('RF882CV', '7485961023', 190000),
('RT486MI', '5267170309', 215000),
('SS880BR', '3500689277', 320000),
('VM180LE', '9476852037', 360000);

-- --------------------------------------------------------

--
-- Struttura della tabella `zona`
--

CREATE TABLE `zona` (
  `Codice` int(11) NOT NULL,
  `Città` varchar(20) NOT NULL,
  `Quartiere` varchar(20) NOT NULL
) ;

--
-- Dump dei dati per la tabella `zona`
--

INSERT INTO `zona` (`Codice`, `Città`, `Quartiere`) VALUES
(1, 'Porto Sant\'Elpidio', 'Faleria'),
(2, 'Porto Sant\'Elpidio', 'Corva'),
(3, 'Sant\'Elpidio a mare', 'San Giuseppe'),
(4, 'Sant\'Elpidio a mare', 'Porta Romana'),
(5, 'Cascinare', 'Osservatorio'),
(6, 'Monte Urano', 'Chiesa di San Gabrie');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `afferenza`
--
ALTER TABLE `afferenza`
  ADD PRIMARY KEY (`Consulente`,`Città`,`Indirizzo`),
  ADD KEY `Città` (`Città`,`Indirizzo`);

--
-- Indici per le tabelle `affitto`
--
ALTER TABLE `affitto`
  ADD PRIMARY KEY (`Cliente`,`Immobile`),
  ADD UNIQUE KEY `Immobile` (`Immobile`);

--
-- Indici per le tabelle `appartenenza`
--
ALTER TABLE `appartenenza`
  ADD PRIMARY KEY (`Immobile`,`Zona`),
  ADD UNIQUE KEY `Immobile` (`Immobile`),
  ADD KEY `Zona` (`Zona`);

--
-- Indici per le tabelle `assegnamento`
--
ALTER TABLE `assegnamento`
  ADD PRIMARY KEY (`Consulente`,`Tipo`),
  ADD KEY `Tipo` (`Tipo`);

--
-- Indici per le tabelle `attivita`
--
ALTER TABLE `attivita`
  ADD PRIMARY KEY (`Consulente`,`Data`,`Ora_inizio`);

--
-- Indici per le tabelle `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`Data`);

--
-- Indici per le tabelle `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Carta_di_identità`);

--
-- Indici per le tabelle `consulente`
--
ALTER TABLE `consulente`
  ADD PRIMARY KEY (`Carta_di_identità`);

--
-- Indici per le tabelle `controllo`
--
ALTER TABLE `controllo`
  ADD PRIMARY KEY (`Codice`,`Città`,`Indirizzo`),
  ADD KEY `Città` (`Città`,`Indirizzo`);

--
-- Indici per le tabelle `detiene`
--
ALTER TABLE `detiene`
  ADD PRIMARY KEY (`Cliente`,`Immobile`),
  ADD UNIQUE KEY `Immobile` (`Immobile`);

--
-- Indici per le tabelle `gestione`
--
ALTER TABLE `gestione`
  ADD UNIQUE KEY `Consulente` (`Consulente`,`Immobile`),
  ADD UNIQUE KEY `Immobile` (`Immobile`);

--
-- Indici per le tabelle `immobile`
--
ALTER TABLE `immobile`
  ADD PRIMARY KEY (`Codice_Immobile`);

--
-- Indici per le tabelle `immobile_commerciale`
--
ALTER TABLE `immobile_commerciale`
  ADD UNIQUE KEY `Immobile` (`Immobile`);

--
-- Indici per le tabelle `immobile_industriale`
--
ALTER TABLE `immobile_industriale`
  ADD PRIMARY KEY (`Immobile`);

--
-- Indici per le tabelle `immobile_residenziale`
--
ALTER TABLE `immobile_residenziale`
  ADD PRIMARY KEY (`Immobile`);

--
-- Indici per le tabelle `obbiettivo`
--
ALTER TABLE `obbiettivo`
  ADD PRIMARY KEY (`Tipo`,`Consulente`),
  ADD KEY `Consulente` (`Consulente`);

--
-- Indici per le tabelle `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`Carta_di_identità`);

--
-- Indici per le tabelle `richiesta_commerciale`
--
ALTER TABLE `richiesta_commerciale`
  ADD PRIMARY KEY (`Codice_identificativo`),
  ADD UNIQUE KEY `Cliente` (`Cliente`);

--
-- Indici per le tabelle `richiesta_industriale`
--
ALTER TABLE `richiesta_industriale`
  ADD PRIMARY KEY (`Codice_identificativo`),
  ADD UNIQUE KEY `Cliente` (`Cliente`);

--
-- Indici per le tabelle `richiesta_residenziale`
--
ALTER TABLE `richiesta_residenziale`
  ADD PRIMARY KEY (`Codice_identificativo`),
  ADD UNIQUE KEY `Cliente` (`Cliente`);

--
-- Indici per le tabelle `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`Città`,`Indirizzo`),
  ADD KEY `Proprietario` (`Proprietario`);

--
-- Indici per le tabelle `transazione`
--
ALTER TABLE `transazione`
  ADD PRIMARY KEY (`Immobile`,`Calendario`),
  ADD KEY `Proprietario` (`Proprietario`),
  ADD KEY `Acquirente` (`Acquirente`),
  ADD KEY `Calendario` (`Calendario`),
  ADD KEY `Zona` (`Zona`);

--
-- Indici per le tabelle `valutazione`
--
ALTER TABLE `valutazione`
  ADD UNIQUE KEY `Data` (`Data`,`Immobile`,`Cliente`),
  ADD KEY `Immobile` (`Immobile`),
  ADD KEY `Cliente` (`Cliente`),
  ADD KEY `Consulente` (`Consulente`);

--
-- Indici per le tabelle `vendita`
--
ALTER TABLE `vendita`
  ADD PRIMARY KEY (`Cliente`,`Immobile`),
  ADD UNIQUE KEY `Immobile` (`Immobile`);

--
-- Indici per le tabelle `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`Codice`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `afferenza`
--
ALTER TABLE `afferenza`
  ADD CONSTRAINT `afferenza_ibfk_1` FOREIGN KEY (`Consulente`) REFERENCES `consulente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `afferenza_ibfk_2` FOREIGN KEY (`Città`,`Indirizzo`) REFERENCES `sede` (`Città`, `Indirizzo`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `affitto`
--
ALTER TABLE `affitto`
  ADD CONSTRAINT `affitto_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `affitto_ibfk_2` FOREIGN KEY (`Immobile`) REFERENCES `immobile` (`Codice_Immobile`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `appartenenza`
--
ALTER TABLE `appartenenza`
  ADD CONSTRAINT `appartenenza_ibfk_1` FOREIGN KEY (`Immobile`) REFERENCES `immobile` (`Codice_Immobile`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appartenenza_ibfk_2` FOREIGN KEY (`Zona`) REFERENCES `zona` (`Codice`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `assegnamento`
--
ALTER TABLE `assegnamento`
  ADD CONSTRAINT `assegnamento_ibfk_1` FOREIGN KEY (`Consulente`) REFERENCES `consulente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assegnamento_ibfk_2` FOREIGN KEY (`Tipo`) REFERENCES `obbiettivo` (`Tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `attivita`
--
ALTER TABLE `attivita`
  ADD CONSTRAINT `attivita_ibfk_1` FOREIGN KEY (`Consulente`) REFERENCES `consulente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `controllo`
--
ALTER TABLE `controllo`
  ADD CONSTRAINT `controllo_ibfk_1` FOREIGN KEY (`Codice`) REFERENCES `zona` (`Codice`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `controllo_ibfk_2` FOREIGN KEY (`Città`,`Indirizzo`) REFERENCES `sede` (`Città`, `Indirizzo`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `detiene`
--
ALTER TABLE `detiene`
  ADD CONSTRAINT `detiene_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detiene_ibfk_2` FOREIGN KEY (`Immobile`) REFERENCES `immobile` (`Codice_Immobile`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `gestione`
--
ALTER TABLE `gestione`
  ADD CONSTRAINT `gestione_ibfk_1` FOREIGN KEY (`Consulente`) REFERENCES `consulente` (`Carta_di_identità`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `gestione_ibfk_2` FOREIGN KEY (`Immobile`) REFERENCES `immobile` (`Codice_Immobile`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `immobile_commerciale`
--
ALTER TABLE `immobile_commerciale`
  ADD CONSTRAINT `immobile_commerciale_ibfk_1` FOREIGN KEY (`Immobile`) REFERENCES `immobile` (`Codice_Immobile`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `immobile_industriale`
--
ALTER TABLE `immobile_industriale`
  ADD CONSTRAINT `immobile_industriale_ibfk_1` FOREIGN KEY (`Immobile`) REFERENCES `immobile` (`Codice_Immobile`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `immobile_residenziale`
--
ALTER TABLE `immobile_residenziale`
  ADD CONSTRAINT `immobile_residenziale_ibfk_1` FOREIGN KEY (`Immobile`) REFERENCES `immobile` (`Codice_Immobile`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `obbiettivo`
--
ALTER TABLE `obbiettivo`
  ADD CONSTRAINT `obbiettivo_ibfk_1` FOREIGN KEY (`Consulente`) REFERENCES `consulente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `richiesta_commerciale`
--
ALTER TABLE `richiesta_commerciale`
  ADD CONSTRAINT `richiesta_commerciale_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `richiesta_industriale`
--
ALTER TABLE `richiesta_industriale`
  ADD CONSTRAINT `richiesta_industriale_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `richiesta_residenziale`
--
ALTER TABLE `richiesta_residenziale`
  ADD CONSTRAINT `richiesta_residenziale_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `sede`
--
ALTER TABLE `sede`
  ADD CONSTRAINT `sede_ibfk_1` FOREIGN KEY (`Proprietario`) REFERENCES `proprietario` (`Carta_di_identità`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limiti per la tabella `transazione`
--
ALTER TABLE `transazione`
  ADD CONSTRAINT `transazione_ibfk_1` FOREIGN KEY (`Proprietario`) REFERENCES `cliente` (`Carta_di_identità`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `transazione_ibfk_2` FOREIGN KEY (`Acquirente`) REFERENCES `cliente` (`Carta_di_identità`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `transazione_ibfk_3` FOREIGN KEY (`Immobile`) REFERENCES `immobile` (`Codice_Immobile`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `transazione_ibfk_4` FOREIGN KEY (`Calendario`) REFERENCES `calendario` (`Data`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transazione_ibfk_5` FOREIGN KEY (`Zona`) REFERENCES `zona` (`Codice`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `valutazione`
--
ALTER TABLE `valutazione`
  ADD CONSTRAINT `valutazione_ibfk_1` FOREIGN KEY (`Immobile`) REFERENCES `immobile` (`Codice_Immobile`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `valutazione_ibfk_2` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `valutazione_ibfk_3` FOREIGN KEY (`Consulente`) REFERENCES `consulente` (`Carta_di_identità`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limiti per la tabella `vendita`
--
ALTER TABLE `vendita`
  ADD CONSTRAINT `vendita_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`Carta_di_identità`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vendita_ibfk_2` FOREIGN KEY (`Immobile`) REFERENCES `immobile` (`Codice_Immobile`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
