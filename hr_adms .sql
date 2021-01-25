-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 01:05 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr_adms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `attachID` int(11) NOT NULL,
  `file` blob NOT NULL,
  `attachCode` varchar(255) NOT NULL,
  `date_attach` date NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empid` varchar(255) NOT NULL,
  `empName` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `Sec` varchar(255) NOT NULL,
  `Unit` varchar(255) NOT NULL,
  `Area_Assigned` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empid`, `empName`, `Dept`, `division`, `Sec`, `Unit`, `Area_Assigned`, `Position`) VALUES
('10', 'Autor, Anastacio D.', 'Technical Services Department', '', '', '', 'Central Office', 'ATEO-ZSEPMMO (OIC-TSD)'),
('100', 'Dalumpines, Noel B.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'Substation Tender'),
('101', 'Delos Santos, Freddie D. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Guipos Feeder', '', 'Area 3', 'DLS'),
('102', 'Salonoy, Rosie V.', 'Finance Services Department', 'Gen. Accounting Division (GAD)', '', '', 'Central Office', 'Purchasing Specialist'),
('106', 'Balansag, Rolando B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 2', '', 'Area 1', 'Resident Lineman I (Mahayag)'),
('108', 'Rebaula, Iza Grace D.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 2', 'Meter Calibrator - I'),
('109', 'Ruben, Rowie P.', 'Finance Services Department', '', 'Warehousing', '', 'Area 1', 'Warehouseman'),
('110', 'Catada, Nicson L.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 2', 'Meter Calibrator - I'),
('111', 'Ferolin, Clifford M.', 'Corporate Planning Department', '', '', '', 'Central Office', 'Corporate Planning Manager'),
('112', 'Prete, Rosemel C.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Billing Section', '', 'Area 1', 'Billing Encoder '),
('113', 'Macra, Janeth M.', 'Finance Services Department', 'Gen. Accounting Division (GAD)', '', '', 'Central Office', 'General Accounting Division Chief '),
('116', 'Lumingo, Marcedito I.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 1', '', 'Area 1', 'Clearing Crew (Dist. 1)'),
('117', 'Mariano, Yolito N.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Billing Section', '', 'Area 3', 'Consumer Accounts Analyst III '),
('119', 'Labrador, Joel O.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 1', 'Teller I'),
('120', 'Pastolero, Renante, D.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 3', 'Driver II (Area Manager)'),
('121', 'Tecson, Jimmy M.', 'Technical Services Department', 'Special Operation Division', 'Substation', '', 'Area 3', 'Acting Substation Tender '),
('122', 'Dela Cerna, Ronie F.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 1', '', 'Area 1', 'Clearing Crew/Driver (Dist. 1)'),
('123', 'Bare?o, Jenith A.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 2', 'Teller II'),
('128', 'Omboy, Ricky E.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 2', '', 'Area 1', 'Resident Lineman (Don Victoriano)'),
('129', 'Ecot, Romel C.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 1', 'SD Lineman '),
('131', 'Anghad, Michael M.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'Resident Lineman (Tigbao)'),
('132', 'Estavas, Hope B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 3', 'MRD Head'),
('133', 'Pamatin, Junie P.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 3', 'MRD II'),
('134', 'Alberio, Felix L.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Motor Pool Head'),
('135', 'Co, Juliet G.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 2', 'Teller I'),
('136', 'Sacasan, Joseph G.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 2', 'SD Lineman (Crew 1)'),
('137', 'Guiret, Hermes A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Margos Feeder', 'Clearing Crew Unit', 'Area 3', 'Clearing Crew'),
('138', 'Magdadaro, Roselyn E.', 'Finance Services Department', '', 'Disbursing', '', 'Central Office', 'Disbursing Officer'),
('139', 'Baquero, Zenon B. Jr.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD II'),
('141', 'Bongcawil, Ma. Leonora R.', 'Finance Services Department', 'Gen. Accounting Division (GAD)', '', '', 'Central Office', 'Work Order Clerk '),
('142', 'Catada, Jenalyn D.', 'Electronic Data Processing Department', '', 'Information Communication Technology Section', '', 'Central Office', 'Website Administrator'),
('143', 'Pantoja, Jalbenmar C.', 'Electronic Data Processing Department', '', 'Information Communication Technology Section', '', 'Central Office', 'EDP Staff (LAN Administrator)'),
('144', 'Dalid, Edmundo Doone E. Jr.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', '', 'Central Office', 'GSS Head'),
('145', 'Sanchez, Diosdada S.', 'Technical Services Department', '', '', '', 'Area 2', 'Records Clerk'),
('146', 'Maturan, Evan Ray G.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 1', '', 'Area 1', 'DLS (District 1)'),
('151', 'Dimpas, Salmero S.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 1', 'Resident Lineman (Ramon Magsaysay)-detailed at Metering'),
('152', 'Lauranilla, Angelo B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Troubleshooting & Night Duty', '', 'Area 2', 'Troubleshooting Lineman/ Driver (Night Duty)'),
('153', 'Venci, Sales P.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'Substation Tender (Culo)'),
('155', 'Lerias, Ian Joseph C. ', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'Acting Substation Tender '),
('158', 'Alingatong, Ronard M.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD II'),
('159', 'Do?a, Noel S.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD II'),
('16', 'Homecillo, Pedro G. Jr.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', '', 'Central Office', 'Utilityman III'),
('160', 'Pacho, James C.', 'Finance Services Department', '', 'Cashiering', '', 'Area 1', ' Assistant Cashier'),
('161', 'Carbonilla, Ruel G.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 3', 'MRD II'),
('163', 'Betacura, Roldan B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'EDP Lineman (w/ added duty as streetlight tender)'),
('164', 'Comcom, Jessica A.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 2', 'Collection Head'),
('165', 'Cinco, Jessie B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 2', 'SD Lineman I (Leadman) (Crew 1 w/ added duty as Driver)'),
('167', 'Anggot, Jenelie P.', 'Finance Services Department', '', 'Cashiering', '', 'Area 2', 'Cashier'),
('168', 'Pantoja, Wella Joy J.', 'Technical Services Department', '', 'Repair & Rewinding Section', '', 'Central Office', 'Rewinding Staff'),
('169', 'Siarez, Rugenito A.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD II'),
('17', 'Robaro, Rudy A.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 1', 'Mechanic IV/Driver'),
('170', 'Baston, Roy M.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 3', 'CSAS Head'),
('173', 'Resomadero, Victor C.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Driver I (FSD)'),
('174', 'Alquizar, Roderick P.', 'Technical Services Department', '', '', '', 'Area 1', 'Acting Line Inspector '),
('177', 'Dialimas, Jesson V.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 1', '', 'Area 1', 'Resident Lineman (Tambulig)'),
('178', 'Piedad, Bobby M. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Tukuran Feeder', '', 'Area 2', 'DLS-Tukuran Feeder'),
('179', 'Saquilabon, Albert A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 1', '', 'Area 1', 'Lineman (Molave)'),
('18', 'Adalim, Sergio T. Jr.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD III '),
('180', 'Sumini, Efraim D.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 2', '', 'Area 1', 'Resident Lineman (Josefina)'),
('181', 'Wagas, Reymar L. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 1', 'Taskforce SD Lineman'),
('185', 'Cimafranca, Erniel S.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Mechanic IV'),
('188', 'Jamorol, Emmanuel B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 1', 'Collection  Section Head'),
('189', 'Colaljo, Rex D.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 2', 'Bill Custodian '),
('19', 'Pingca, Jovito B. ', 'Internal Audit Department', '', '', '', 'Central Office', 'Internal Audit Manager'),
('192', 'Salonoy, Melchor C.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD II'),
('193', 'Autor, Romulo D.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'OIC Substation Tender (Upper Bayao, Tukuran)'),
('194', 'Maribao, Elmer M.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', '', 'Central Office', 'Utilityman/Carpenter'),
('195', 'Amad, Lincoln M. Jr.', 'Technical Services Department', '', '', '', 'Area 3', 'TSD Records Clerk'),
('197', 'Petalino, Cresanny C. ', 'Corporate Planning Department', '', '', '', 'Central Office', 'Line Survey and Staking Coordinator  (detailed at Segregation Group)'),
('198', 'Gadiano, Jhonny G.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'Indust\'l MRD&Collector'),
('199', 'Yap, Joseph B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD Head'),
('200', 'Velasco, Gerome Y.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'Streetlight Tender '),
('201', 'Adorable, Mary Grace S.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Billing Section', '', 'Area 3', 'Billing Supervisor'),
('202', 'Ratilla, Melvin A.', 'Corporate Planning Department', '', '', '', 'Central Office', 'CorPlan Staff (former MCR Supervisor)'),
('203', 'Combestra, Braulio G.', 'Internal Audit Department', '', '', '', 'Central Office', 'Internal Audit Staff '),
('204', 'Intong, Vanessa Gay G.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 2', 'CSAS Head'),
('205', 'Verano, Ares A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'Lineman/Driver (Charlie 3-Maintenance [West])'),
('207', 'Guimba, Mohammad R.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian East', '', 'Area 2', 'Lineman (Charlie 1-Maintenance [East])'),
('208', 'Mejos, Johnmar E.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 3', 'Service Dropping Lineman (w/ added duty as Driver)'),
('209', 'Pati?o, Rommel M. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD Head'),
('211', 'Autor, Anchela Mae P.', 'Corporate Planning Department', '', 'Segregation Section', '', 'Central Office', 'Segregation Data Encoder'),
('214', 'Da?o, Jonie R.', 'Technical Services Department', 'Special Operation Division', 'Substation', '', 'Area 3', 'Acting Substation Tender '),
('215', 'Durante, Roel L.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 1', '', 'Area 1', 'Lineman (Molave)'),
('216', 'Ursaiz, Gimar B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Guipos Feeder', '', 'Area 3', 'Resident Lineman (Guipos)'),
('217', 'Alquizar, Joan B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Billing Section', '', 'Area 1', 'Billing Supervisor'),
('218', 'Jamorol, Lubelle F.', 'Institutional Services Department', 'Member Services Division', 'Member Development Section', '', 'Area 1', 'OIC-MDS Supervisor'),
('219', 'Sindatoc, Yasser C.', 'Internal Audit Department', '', '', '', 'Central Office', 'Internal Audit Staff '),
('22', 'Caraballo, Myrna B.', 'Finance Services Department', 'Gen. Accounting Division (GAD)', '', '', 'Central Office', 'Bookkeeper I'),
('221', 'Alave, Roberto R. Jr.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD II'),
('222', 'Andam, Rey Benjo D.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Billing Section', '', 'Area 2', 'Billing Encoder'),
('223', 'Nagrama, Ruel C.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD II'),
('225', 'Wamilda, Argie Y.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 2', 'Lineman (Metering)'),
('226', 'Garol, Mar M.', 'Technical Services Department', '', '', '', 'Area 2', 'Acting Line Inspector'),
('227', 'Calibo, Vimar Decson S.', 'Internal Audit Department', '', '', '', 'Area 1', 'Audit Staff'),
('230', 'Lazaraga, Ricky V.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'Resident Lineman (Dumalinao)'),
('231', 'Wagas, Reche L.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 3', '', 'Area 1', 'Resident Lineman (Sominot)'),
('232', 'Poliquit, Chito C. ', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'OIC Substation Tender (Tiguma)'),
('233', 'Trinidad, Marlon E.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'OIC - Substation Tender (San Jose, Aurora)'),
('234', 'Ursaiz, Rhoona Mae M.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 3', 'Teller II  '),
('235', 'Codilla, Cristopher A. ', 'Technical Services Department', '', 'Construction Crew', '', 'Central Office', 'Construction Section Supervisor'),
('236', 'Suan, Leolyn M.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Margos Feeder', '', 'Area 3', 'Resident Lineman (Lapuyan)'),
('237', 'Salonoy, Mark Anthony C.', 'Technical Services Department', '', 'Construction Crew', '', 'Central Office', 'Hotline Lineman (detaled as Construction Leadman)'),
('238', 'Madrid, Merilito O.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'OIC Substation Tender (Upper Bayao, Tukuran)'),
('240', 'Elago, Joecito E.', 'Technical Services Department', 'Special Operation Division', 'Substation', '', 'Area 3', 'OIC -Substation Engineer'),
('241', 'Awa, Rolando E. Jr.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 1', 'Driver'),
('242', 'Ca?ada, Hunny A.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 1', 'Mechanic I/Driver (any vehicle)'),
('243', 'Pradel, Junriel C.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Driver/ Mechanic'),
('244', 'Baluyos, Herbert H.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 3', '', 'Area 1', 'Clearing Crew (District 3) (former Metering Lineman)'),
('245', 'Traya, Dailene J.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Billing Section', '', 'Area 1', 'Billing Encoder'),
('246', 'Galiza, Malou B.', 'Technical Services Department', '', '', '', 'Area 1', 'TSD Staff '),
('247', 'Baluyos, Joel H. Jr. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Troubleshooting & Night Duty', '', 'Area 2', 'Troubleshooting Lineman (Night Duty)'),
('248', 'Mahinay, Jimbo Q.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 2', 'Meter Inspector- I '),
('249', 'Darang, Joseph B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 2', 'SD Lineman (Crew 2)'),
('250', 'Dialimas, Edgardo V. Jr.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 1', '', 'Area 1', 'Resident Lineman (CABSUMA)'),
('251', 'Fernandez, Joefred A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Dinas Feeder', '', 'Area 3', 'Resident Lineman (Dimataling)'),
('252', 'Lagasca, Landie Jhon S.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Troubleshooting & Night Duty', '', 'Area 2', 'Lineman/ Driver (Charlie2-Trouble Shooting [East])'),
('253', 'Tagudin, Francisco R. Jr. ', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'Acting Substation Tender (Tiguma)'),
('254', 'Paca?a, Wilson L. Jr. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Troubleshooting & Night Duty', '', 'Area 2', 'Lineman (Charlie2-Trouble Shooting [East])'),
('255', 'Villabeto, Keflin L.', 'Technical Services Department', '', 'Repair & Rewinding Section', '', 'Central Office', 'SERR Supervisor '),
('256', 'Andam, Melody C.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 2', 'MSD Records Clerk'),
('257', 'Plasabas, Ricky R. ', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'Resident Lineman (Tukuran)-det, at Tiguma Substation (Temporary)'),
('258', 'Bacus, Franklin B. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Dinas Feeder', 'Clearing Crew Unit', 'Area 3', 'Clearing Crew (former Lineman)'),
('259', 'Bayron, Jovel R. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian East', '', 'Area 2', 'OIC Lineman (Charlie 1-Maintenance [East])'),
('260', 'Cabadonga, Ruel S.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 2', 'Driver I (Metering)'),
('261', 'Recilla, Louie M.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'Lineman (Charlie 3-Maintenance [West])'),
('262', 'Cervantes, Rolejie C.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Tukuran Feeder', '', 'Area 2', 'Acting Resident Lineman (Tukuran)'),
('263', 'Lomongo, Michael D.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'Resident Lineman (Ramon Magsaysay)'),
('264', 'Pati?o, Ariel M.', 'Institutional Services Department', '', '', '', 'Central Office', 'Consumer Welfare Desk Staff'),
('267', 'Manal, Jaypee C.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD'),
('268', 'Soqui?o, Regie B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD'),
('269', 'Catada, Frederick L.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 2', 'Teller'),
('270', 'Lerias, Lance Israel C.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Assistant Welder'),
('272', 'Salvacion, Deson N.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 2', 'Clearing Crew Unit', 'Area 1', 'ROW Clearing Tender  (Dist. 2)'),
('274', 'Alingatong, Adelyn L.', 'Corporate Planning Department', '', 'Segregation Section', '', 'Central Office', 'SL Segregation Staff (former SD Supervisor)'),
('275', 'Alacaide, Joel T.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 2', 'Driver I (Collection Section)'),
('277', 'Vi?a, Rudelito B.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 1', 'Mechanic/Driver I (Collection)'),
('278', 'Bicoy, Leonivie C.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Guipos Feeder', 'Clearing Crew Unit', 'Area 3', 'Driver (Clearing Unit)'),
('280', 'Laranjo, Diogines B. Jr.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 3', 'Meter Connection & Rehab Supervisor'),
('281', 'Cimafranca, Dante S. ', 'Technical Services Department', '', 'Repair & Rewinding Section', '', 'Central Office', 'Rewinding Crew'),
('282', 'Montero, Lilynbeth L.', 'Finance Services Department', '', 'Cashiering', '', 'Area 3', ' Assistant Cashier'),
('283', 'Sanlao, Marissa E.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 3', 'Bill Custodian '),
('284', 'Ba?osia, Esperatu M.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'OIC - Substation Tender (San Jose, Aurora)'),
('285', 'Caballero, Edwin L.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 2', 'SD Lineman/Driver (Crew 2)'),
('286', 'Suerte, Catherine G.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 1', 'Acting - CSAS Head'),
('287', 'Maghanoy, Juvelyn C.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', '', 'Central Office', 'Acting Property Custodian '),
('289', 'Sarcos, Alberto Jr. S.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Troubleshooting & Night Duty', '', 'Area 2', 'Lineman (Charlie 2-Troubleshooting Crew)'),
('291', 'Sumain, Norgen D.', 'Institutional Services Department', 'Member Services Division', 'Member Development Section', '', 'Area 1', 'OIC - MCO Relation Officer'),
('292', 'Lagutin, Sonny C.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD'),
('294', 'Dimpas, Efren S. Jr.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'Acting - Substation Tender (San Jose, Aurora)'),
('295', 'Paller, Ronnel A.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'Substation Tender (RM)'),
('296', 'Paradero, Jurdan C.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 1', 'SD Lineman (Crew 2)'),
('297', 'Traya, Rolito P. Jr.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 2', '', 'Area 1', 'Resident Lineman (Mahayag)'),
('298', 'Ubpon, Al-Rafeek R. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Dinas Feeder', '', 'Area 3', 'Resident Lineman (Dinas)'),
('299', 'Coyam, Kristene June I.', 'Institutional Services Department', '', '', '', 'Central Office', 'Consumer Welfare Desk Officer I'),
('3', 'Montero, Edgardo O.', 'Office of the General Manager', '', '', '', 'Area 3', 'Area-III Manager'),
('300', 'Espra, Jean Michael C.', 'Electronic Data Processing Department', '', 'Information Communication Technology Section', '', 'Central Office', 'EDP Staff '),
('301', 'Ligutom, Ricky C. Jr.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Mechanic/Driver'),
('303', 'Entienza, Charles N.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD'),
('304', 'Pondoyo, Chrisanto E. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD'),
('305', 'Panes, Jade B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 3', 'MRD'),
('306', 'Presente, Felipe M.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 3', 'MRD'),
('307', 'Fulgarinas, Amor Mayla S.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 2', 'MSD Records Clerk I'),
('308', 'Roble, Mary Jane T.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 1', 'Bill Custodian'),
('309', 'Ochotorena, Chisan Jane D.', 'Finance Services Department', '', 'Warehousing', '', 'Area 3', 'Warehouseman'),
('310', 'Martin, Jerry Phillip P.', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'Central Office', 'Coop Nurse'),
('311', 'Lingganay, Christopher F.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 1', 'Welder'),
('313', 'Elmidulan, Ryan G.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 1', 'Teller I '),
('315', 'Campo, Manolito L. Jr.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Dinas Feeder', '', 'Area 3', 'Resident Lineman (Tabina)'),
('316', 'Mejos, Jippe E.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Dinas Feeder', '', 'Area 3', 'Resident Lineman (Pitogo)'),
('317', 'Tubo, Ruel B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Guipos Feeder', '', 'Area 3', 'Resident Lineman (San Miguel)'),
('318', 'Regala, Ritche L.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'GM\'s Driver'),
('319', 'Agrabio, Chester Franz A. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Troubleshooting & Night Duty', '', 'Area 2', 'Troubleshooting Lineman (Night Duty)'),
('32', 'Lagura, Azucena A.', 'Institutional Services Department', '', '', '', 'Central Office', 'ISD and EDP Manager'),
('323', 'Baco, Junel S.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 3', '', 'Area 1', 'Resident Lineman (Aurora) '),
('324', 'Bangues, Arsenio A. Jr.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 2', 'SD Lineman (Crew 1)'),
('325', 'Bimbo, Mark Anthony C.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 2', 'Lineman (Rehab)'),
('326', 'Bohol, Rico M.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 1', '', 'Area 1', 'Acting Resident Lineman (ZACC Molave)'),
('327', 'Bolocon, Angelo T. III', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 3', '', 'Area 1', 'Resident Lineman (Midsalip) '),
('328', 'Cagumbay, Jeffrey B.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', '', 'Central Office', 'Utilityman'),
('329', 'Malalis, Mercedito D. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 2', 'Lineman (Metering)'),
('330', 'Sarsalejo, Romnick C.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian East', '', 'Area 2', 'Lineman (Charlie 1-Maintenance [East])'),
('331', 'Bustamante, Sabas L. Jr. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 2', 'SD Lineman (Crew 2)'),
('332', 'Lambayan, Jeanyr Rey W. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 3', '', 'Area 1', 'Resident Lineman (Aurora) '),
('333', 'Lauranilla, Sofronio T. Jr. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'Resident Lineman (Danlugan)'),
('335', 'Maturan, Emlee May C. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 1', 'Teller '),
('337', 'Generalao , Albert L.', 'Technical Services Department', '', 'Repair & Rewinding Section', '', 'Central Office', 'Rewinding Technician '),
('338', 'Vega, Richelle B.', 'Finance Services Department', '', 'Warehousing', '', 'Central Office', 'Warehouse Officer '),
('339', 'Artates, Sean Damasceno S.', 'Technical Services Department', '', '', '', 'Area 3', 'Acting Line Inspector'),
('34', 'Soqui?o, Carlito L.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Motorcycle Mechanic'),
('340', 'Sabado, Mary Lioness R.', 'Internal Audit Department', '', '', '', 'Central Office', 'Audit Clerk (ISD)'),
('342', 'Sadang, Frank John P.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'Acting MRD'),
('343', 'Tumanday, Franz Efren N.', 'Office of the General Manager', '', '', '', 'Central Office', 'ZSEPMMO Staff'),
('344', 'Gamok, Jelbert B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD (former EDP Encoder)'),
('345', 'Susas, Junjie S.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 2', '', 'Area 1', 'DLS (District 2) '),
('346', 'Colegado, Cleo Glenn Brylle Z.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'Substation Tending & Maintenance Supervisor '),
('348', 'Gadiano, Mark Perrie G.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD '),
('349', 'Candar, Reynaldo M. Jr.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'Lineman (Charlie 3-Maintenance [West])'),
('350', 'Darilay, Rene F.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Tukuran Feeder', '', 'Area 2', 'OIC Resident Lineman (Tukuran)'),
('351', 'Dimpas, Melvin S. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 3', '', 'Area 1', 'Clearing Crew (Dist. 3)'),
('352', 'Eslit, Edward A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Dinas Feeder', '', 'Area 3', 'Resident Lineman (Tabina)'),
('354', 'Noval, Willie T. Jr.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 3', '', 'Area 1', 'Clearing Crew (Dist. 3)'),
('356', 'Solijon, Raymond O.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Margos Feeder', '', 'Area 3', 'Acting - Resident Lineman (Margosatubig)'),
('358', 'Teomera, Jetry Y.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'OIC Resident Lineman (Rebokon, Dumalinao)'),
('359', 'Alacaide, Roland T.', 'Internal Audit Department', '', '', '', 'Central Office', 'Acting - Audit Staff (GSS)'),
('36', 'Baluran, Joel C.', 'Technical Services Department', '', 'Line Survey & Staking Section', '', 'Central Office', ' ROW Coordinator'),
('360', 'Lacharon, Arnel L.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 2', 'Driver  (Troubleshooting Night Duty)'),
('361', 'Maghanoy, Chris Mart T.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 2', 'Driver (Rehab)'),
('362', 'Ducut, Ricardo A. Jr. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 1', 'Acting - Service Dropping Supervisor'),
('364', 'Gamok, Christine Mae A.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 2', 'Teller '),
('365', 'Andaya, Rolly M.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'Acting Substation Engineer'),
('366', 'Berioso, Junifer P.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 1', 'Consumer Welfare Desk Staff '),
('367', 'Ocay, Jessadith C.', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'Central Office', 'Personnel Services Clerk I  '),
('368', 'Sabado, Nolman R.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 2', 'Driver (Clearing Unit)'),
('37', 'Lagura, Rodolfo T.', 'Office of the General Manager', '', '', '', 'Area 1', 'Area I Manager '),
('372', 'Reyes, Kingfort P.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 2', 'Meter Connection & Rehab Supervisor'),
('373', 'Lumingkit, Eduardo J.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', '', 'Central Office', 'Utilityman '),
('374', 'Abrigo, Maximo G. Jr. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Dinas Feeder', '', 'Area 3', 'District Line Supervisor (District 8)'),
('375', 'Basalo, Jempaul H. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'DLS- Pagadian West/ OIC REE'),
('376', 'Bulanon, Jarlen O. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 1', 'Teller '),
('378', 'Aguilar, Marydith B.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', '', 'Area 1', 'Utilitywoman'),
('379', 'Gallego,Mary Neal P.', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'Area 1', 'Personnel Services Clerk I  '),
('380', 'Caraballo, Richie May B.', 'Office of the General Manager', '', '', '', 'Central Office', 'GM\'s Secretary I'),
('382', 'Pastolero, Richard D. ', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Driver (MSD/HRD)'),
('383', 'Lagura, Mark Luis Jr. N. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 3', 'MRD'),
('384', 'Yap, Al Vincent B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 1', 'Teller '),
('385', 'Hipolan, Carlos M.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 1', 'Driver (MSD/HRD)'),
('386', 'Aliman, Hamren M.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Tukuran Feeder', '', 'Area 2', 'OIC Resident Lineman (Labangan)'),
('388', 'Lagura, Danielle Iris A. ', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'Central Office', 'HRD Chief'),
('389', 'Caba?as, Jonald P. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD '),
('39', 'Cortesiano, Reymundo F.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'Substation Tender III (RM)'),
('390', 'A?os, James Mark N. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD '),
('391', 'Pepe, Ellazar V. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD '),
('392', 'Espiritu, Christian M.', 'Electronic Data Processing Department', '', 'Information Communication Technology Section', '', 'Central Office', 'EDP Staff'),
('393', 'Cortesiano, Ronnel B. ', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'Area 3', 'Payroll Clerk   '),
('394', 'Carpentero, Ariel C. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 3', 'OIC Lineman (Metering)'),
('395', 'Libre, Chyn B. ', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'Central Office', 'PSS Head'),
('396', 'Cabatcha, Levan G. ', 'Institutional Services Department', 'Member Services Division', 'Member Development Section', '', 'Area 2', 'OIC-MCO Relation Officer'),
('398', 'Orion, Herlene N. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 3', 'Teller I'),
('399', 'Pacho, Harold C. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD'),
('400', 'Lagura, Rodolf Jan F. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD'),
('401', 'Tumarong, Jumark D. ', 'Finance Services Department', '', 'Warehousing', '', 'Central Office', 'Warehouse Staff'),
('402', 'Coyam, Theresa Mae I. ', 'Corporate Planning Department', '', 'Segregation Section', '', 'Central Office', 'TSD Staff'),
('403', 'Sabroso, Ramil G. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 3', 'MRD'),
('404', 'Tare, Jan Paulo F. ', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 2', 'Driver (MRD) (with added duty as Biller)'),
('405', 'Quiao, Leo Arniel S. ', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'Central Office', 'Personnel Services Clerk I  '),
('406', 'Cuarisma, Nerio M. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 3', 'MRD'),
('407', 'Jumoc, Jessica R. ', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'CO ', 'Personnel Services Clerk I  '),
('408', 'Abarquez, Mariel O. ', 'Institutional Services Department', '', '', '', 'Central Office', 'ISD Clerk'),
('411', 'Abing, Crisanto T. ', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 1', 'Driver (Metering)'),
('416', 'Maghuyop, Roger L. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 1', '', 'Area 1', 'ROW Clearing Crew (Dist.1)'),
('417', 'Amelig, Larry M. ', 'Technical Services Department', '', '', '', 'Area 1', 'ROW Clearing Tender  (Dist. 2)'),
('418', 'Maghanoy, Raul O. Jr. ', 'Technical Services Department', '', '', '', 'Area 1', 'ROW Clearing Crew (Dist.2)'),
('42', 'Ladeza, Tirso R.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'Substation Tender I'),
('420', 'Canoy, Arnold P. ', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', '', 'Area 1', 'Utilityman '),
('421', 'Malmis, Jay Y. ', 'Institutional Services Department', 'Member Services Division', 'Member Development Section', '', 'Area 1', 'OIC - MCO Relation Officer'),
('422', 'Gawason, Arnolfo B. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD'),
('424', 'Campomanes, Lovely Rose S. ', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 3', 'MSD Records Clerk I'),
('425', 'Balucan, James Ni?o A.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD'),
('426', 'Cabatcha, Ronnel S.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD'),
('427', 'Pulido, Christy May S.', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'Central Office', 'HR Assistant/Payroll Officer'),
('428', 'Sanchez, Jeremy S.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD'),
('43', 'Alo, Nestor B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 3', 'Collection Section Head'),
('430', 'Roxas, Roxan Gail P. ', 'Institutional Services Department', 'Member Services Division', 'Member Development Section', '', 'Central Office', 'Acting Member Education Officer'),
('431', 'Nagrama, Herme C. ', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD'),
('433', 'Bonete, Donald B. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Troubleshooting & Night Duty', '', 'Area 2', 'Lineman (Troubleshooting)'),
('435', 'Ong, Emmanuel Vincent Y. ', 'Technical Services Department', '', 'Construction Crew', '', 'Central Office', 'Lineman (Construction)'),
('436', 'Lacharon, Kiven John ', 'Technical Services Department', '', 'Construction Crew', '', 'Central Office', 'Lineman (Construction)'),
('437', 'Baguio, Jay-ar S. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 1', 'Lineman (Metering)'),
('438', 'Dimasangcay, Janael M. ', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 1', 'MSD Lineman'),
('439', 'Taba?ag, Cyrel E. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 1', 'Lineman (Metering)'),
('442', 'Oculam, Erlin P.', 'Finance Services Department', 'Gen. Accounting Division (GAD)', '', '', 'Central Office', 'Filing Clerk'),
('444', 'Gumolon, Arven M.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 3', 'Lineman (Metering)'),
('445', 'Bustamante, Efren O.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Tukuran Feeder', '', 'Area 2', 'Lineman (Maintenance)'),
('446', 'Albarasin, Diore M.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Guipos Feeder', '', 'Area 3', 'Resident Lineman (San Pablo)'),
('447', 'Bodiongan, Jeonard Mark A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 3', 'Lineman (Service Dropping)'),
('449', 'Gerali, Jay Han V.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 3', 'MSD Staff (former GM\'s Junior Secretary'),
('45', 'Arabejo, Charina M.', 'Finance Services Department', 'Gen. Accounting Division (GAD)', '', '', 'Central Office', 'Finance  Services Manager'),
('450', 'Cadag, Hannah C.', 'Electronic Data Processing Department', '', 'Information Communication Technology Section', '', 'Central Office', 'EDP Staff/Programmer'),
('451', 'Abastas, Brian S.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 1', 'Lineman (Metering)'),
('452', 'Bacaron, Jernel A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 3', 'Lineman (Service Dropping)'),
('453', 'Canalita, Darline P.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Billing Section', '', 'Area 3', 'Taskforce Billing Encoder '),
('455', 'Montero, Julius Divar Romarate', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 3', 'Taskforce Driver (Metering/MSD)'),
('456', 'Bragat, Alexander P.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 2', 'Taskforce MRD '),
('457', 'Atacador, Louielyn Marjorie M.', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'Central Office', 'Acting Payroll Officer (with added duty)'),
('458', 'Hamile, Ruby Eve T.', 'Office of the General Manager', '', '', '', 'Central Office', 'Board Recorder'),
('460', 'Padayhag, Rielven V.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 1', 'OIC - Meter Connection & Rehab'),
('461', 'Iway, Giselle Joei A.', 'Institutional Services Department', 'Member Services Division', 'Member Development Section', '', 'Central Office', 'Member Development Officer'),
('462', 'Iway, Zyra Jade A.', 'Institutional Services Department', 'Human Resources Division', 'Personnel Services Section', '', 'Central Office', 'Acting Human Resource Development Officer'),
('464', 'Ramirez, Haron G.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', '', 'Area 3', 'Taskforce Utilityman '),
('465', 'Jala, Heruel I.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 3', 'Taskforce Lineman (Metering)'),
('466', 'Magdadaro, Jinael C.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'TF Acting Resident Lineman (Ramon Magsaysay)'),
('468', 'Mandao, Nestor T. Jr.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 2', '', 'Area 3', 'Taskforce Resident Lineman (Dumingag)'),
('469', 'Delos Santos, Erwin S.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 3', 'Taskforce MSD Lineman'),
('470', 'Semilla, Marck Lloyd L.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 1', 'Taskforce Driver (Boom Truck Operator)'),
('471', 'Aballe, Aljer', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Taskforce Driver (Boom Truck Operator)'),
('472', 'Cabahug, Arjie L.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'Taskforce Lineman (Maintenance)');
INSERT INTO `employees` (`empid`, `empName`, `Dept`, `division`, `Sec`, `Unit`, `Area_Assigned`, `Position`) VALUES
('473', 'Sumain, Chliffe Nicole O.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 3', '', 'Area 1', 'TF Acting Resident Lineman (Midsalip)'),
('474', 'Casabal, Marwin P.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 2', 'Taskforce SD Lineman (Crew 1)'),
('475', 'Pancho, Blena Neal A.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 2', 'MSD Records Clerk I'),
('476', 'Garcia, Sai C.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Central Office', 'Acting Audit Staff'),
('477', 'Balignot, Roy L.', 'Institutional Services Department', 'Member Services Division', 'Member Development Section', '', 'Area 2', 'OIC-MCO Relation Officer'),
('478', 'Baldo, George A.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 2', 'Taskforce Driver (Clearing Unit)'),
('479', 'Tomogon, Michael Angelou C.', 'Technical Services Department', '', '', '', 'Area 2', 'Acting Line Inspector I'),
('48', 'Malmis, Ponciano T. Jr.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'Substation Tender I (RM)'),
('480', 'Acuram, Jerson P.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 2', 'Taskforce MSD Lineman'),
('481', 'Cadimas, Christian Lou Gupit', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Margos Feeder', '', 'Area 1', 'OIC - District Line Supervisor (Margos Feeder)'),
('482', 'Bacanto, Brian A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 2', 'OIC Service Dropping Section'),
('484', 'Rosales, Arman D.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Margos Feeder', 'Clearing Crew Unit', 'Area 3', 'Taskforce Clearing Crew'),
('486', 'Salibay, Bernie M.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'Taskforce MRD '),
('487', 'Divinagracia, Myra Mae C.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 3', 'Taskforce Teller'),
('489', 'Carwana, Lorevy P.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Billing Section', '', 'Area 2', 'Taskforce Billing Encoder'),
('490', 'Toledo, Vrillian Ver O.', 'Finance Services Department', 'Gen. Accounting Division (GAD)', '', '', 'Central Office', 'Taskforce Processor'),
('491', 'Torres, Ronilo B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Dinas Feeder', 'Clearing Crew Unit', 'Area 3', 'Taskforce Clearing Crew/ Driver (Added Duty)'),
('492', 'Pastolero, Ruel D.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 2', 'Taskforce Driver (Clearing Unit)'),
('493', 'Amarillo, Brylle R.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 1', 'Taskforce Driver (AM/BOD)'),
('494', 'Montealto, Ryan Gleen G.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 2', 'Taskforce Meter Inspector '),
('498', 'Tagdulang, Eclier D.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'Taskforce MRD'),
('499', 'Bondaug, John Vincent S. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 3', '', 'Area 1', 'OIC District Line Supervisor (Probationary)'),
('50', 'Maape, Rey Alex L.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'Industrial/Gov\'t Meter Reader Bill Collector & Disconnector'),
('500', 'Supeter, Mary Grace S.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 2', 'Taskforce Teller'),
('501', 'Ra?oa, Kristian D.', 'Finance Services Department', 'Gen. Accounting Division (GAD)', '', '', 'Central Office', 'Taskforce Accounting Staff'),
('503', 'Alsonado, Francis Cyril E.', 'Finance Services Department', 'Gen. Accounting Division (GAD)', '', '', 'Central Office', 'Taskforce Accounting Staff'),
('504', 'Dela Vega, Junjie B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Guipos Feeder', 'Clearing Crew Unit', 'Area 3', 'Taskforce Clearing Crew'),
('505', 'Jabon, Merryheart A.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 1', 'Taskforce MSD Records Clerk I'),
('506', 'Mendoza, Lyniel M.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 3', 'Taskforce MSD Records Clerk '),
('507', 'Arbonida, Karen Gay P.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Billing Section', '', 'Area 2', 'Taskforce Billing Encoder'),
('508', 'Jumoc, Mary Jane R.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', '', 'Central Office', 'Taskforce Utilitywoman'),
('509', 'Gargar, Lloyd M.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Margos Feeder', 'Clearing Crew Unit', 'Area 3', 'Taskforce Clearing Crew'),
('51', 'Hortilano, Julie H.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 1', 'SD Lineman II '),
('510', 'Trinidad, Rodel G.', 'Technical Services Department', 'Special Operation Division', 'Substation', '', 'Area 3', 'Taskforce Substation Tender'),
('511', 'Labiaga, Samuel M.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Troubleshooting & Night Duty', '', 'Area 2', 'Taskforce Lineman (Troubleshooting)'),
('512', 'Gabato, John Paul B.', 'Technical Services Department', '', 'Construction Crew', '', 'Central Office', 'Taskforce Lineman (Construction)'),
('513', 'Torres, Elwel James D.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'Taskforce Resident Lineman (Tigbao)'),
('514', 'Abella, Bob Roland T. Jr.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'Taskforce Clearing Crew (Crew 3)'),
('515', 'Baluran, Bhrayan J.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian East', '', 'Area 2', 'Taskforce Lineman (Maintenance)'),
('516', 'Cabrera, Ariel B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Tukuran Feeder', 'Clearing Crew Unit', 'Area 2', 'Taskforce Clearing Crew (Crew 2)'),
('517', 'Cadutdut, James Lonel A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Tukuran Feeder', 'Clearing Crew Unit', 'Area 2', 'Taskforce Clearing Crew (Crew 2)'),
('518', 'Dialimas, Jefferson V.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Tukuran Feeder', 'Clearing Crew Unit', 'Area 2', 'Taskforce Clearing Crew (Crew 2)'),
('519', 'Cardoza, Jocel T.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian East', 'Clearing Crew Unit', 'Area 2', 'Taskforce Clearing Crew (Crew 1)'),
('520', 'Noval, Chienne Vergel R.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Tukuran Feeder', '', 'Area 2', 'Taskforce Lineman (Maintenance)'),
('521', 'Gumba, Adrian John C.', 'Technical Services Department', '', '', '', 'Area 2', 'Taskforce Clearing Crew (Crew 1)'),
('522', 'Navarro, Junrey H.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Troubleshooting & Night Duty', '', 'Area 2', 'Taskforce Lineman (Troubleshooting)'),
('523', 'Taritas, Brian John J.', 'Technical Services Department', '', 'Construction Crew', '', 'Central Office', 'Taskforce Lineman (Construction)'),
('524', 'Betacura, Ryan C.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 3', 'Taskforce Lineman (Metering)'),
('525', 'Concordia, Zeiky Q.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Margos Feeder', '', 'Area 3', 'Taskforce Resident Lineman (Vincenzo Sagun)'),
('526', 'Goc-ong, Junrey A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 3', 'Taskforce Lineman (Service Dropping)'),
('527', 'Santiago, Emmanuel Joseph J.', 'Corporate Planning Department', '', 'Segregation Section', '', 'Central Office', 'CorPlan Staff (Probationary)'),
('528', 'Sarausa, John Luie I.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'Taskforce MRD'),
('529', 'Retiza, Junjie J.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'Taskforce MRD'),
('53', 'Paglinawan, Arnold C. Sr.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'Substation Tender I (Culo)'),
('530', 'Limutan, Jefquin B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', '', 'Area 2', 'Taskforce Clearing Crew (Crew 3)'),
('531', 'Tibong, Geo Carl A.', 'Electronic Data Processing Department', '', 'Information Communication Technology Section', '', 'Central Office', 'Taskforce EDP IT Technician'),
('532', 'Ganih, Syed Ramier A.', 'Electronic Data Processing Department', '', 'Information Communication Technology Section', '', 'Central Office', 'Taskforce EDP Programmer'),
('533', 'Tumubos, Benamin L. Jr.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - Dinas Feeder', 'Clearing Crew Unit', 'Area 3', 'Taskforce Clearing Crew'),
('534', 'Lagura, Lyndon M.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 3', 'Taskforce MRD'),
('535', 'Oblimaga, Archie A.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian West', 'Clearing Crew Unit', 'Area 2', 'Taskforce Clearing Crew'),
('536', 'Ardiente, Kimberly Joy D.', 'Internal Audit Department', '', '', '', 'Central Office', 'Taskforce Audit Staff (Probationary)'),
('537', 'Tibong, Gevie Caryl A.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Collection Section', '', 'Area 2', 'Taskforce Teller'),
('538', 'Panoncillon, Christino S.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 3', 'Taskforce MRD'),
('539', 'Diano, Manchella E.', 'Institutional Services Department', 'Member Services Division', 'Member Development Section', '', 'Central Office', 'Taskforce Member Education Staff'),
('540', 'Ansolaw, Robelito G.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 1', 'Taskforce Staff Engineer'),
('541', 'Quintero, Justine Ian B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 1', 'Taskforce Staff Engineer'),
('542', 'Falcasantos, Lary A.', 'Internal Audit Department', '', '', '', 'Central Office', 'Taskforce Staff Engineer (Probationary)'),
('543', 'Venjie Pruta Mendaros', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 2', 'Taskforce Staff Engineer (Probationary)'),
('58', 'Montero, Oscar O.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 3', 'Meter Inspector III'),
('60', 'Lomoloy, Leopoldo Z.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'Substation Tender I'),
('62', 'Marial, Ramonito S.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 1', 'MRD II'),
('63', 'Sumain, Andres D. Jr.', 'Technical Services Department', '', '', '', 'Area 1', 'LINE INSPECTOR 1 (Dist.1 & 2)'),
('64', 'Salasayo, Antero S. Jr.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 1', 'Driver (Service Dropping) (former MRD II)'),
('66', 'Qui?ones, Ildefonso A. ', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Meter Connection, Rehab Section', '', 'Area 3', 'Meter Calibrator I'),
('72', 'Saquilabon, Cesar E.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'Substation Tender II'),
('74', 'Gucon, Elizalde B.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 3', 'Clearing Crew Unit', 'Area 1', 'Clearing Leadman/Driver  (Dist. 3)'),
('77', 'Insalada, Herle S.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 1', 'Lineman II (Crew 1)'),
('78', 'Sabejon, Teodoro P.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'Substation Tender I'),
('79', 'Labrador, Felimon O. Jr.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Boom Truck Driver (Probationary)'),
('8', 'Lagura, Franklin L.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Service Dropping Section', '', 'Area 3', 'S/S Engineer/ Service Dropping Supervisor'),
('82', 'Obaob, Ulysses Q.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance-Pagadian East', '', 'Area 2', 'DLS-Pagadian East'),
('83', 'Caruana, Lolito A.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 2', 'OIC Substation Tender (Upper Bayao, Tukuran)'),
('84', 'Dag-uman, Joel D.', 'Technical Services Department', 'Special Operation Division', 'Sub-Station', '', 'Area 1', 'Substation Tender (Culo)'),
('85', 'Perez, Tirso A.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Area 3', 'Driver (Clearing Unit)'),
('89', 'Jayo, Ramir V.', 'Office of the General Manager', '', '', '', 'Area 2', 'Area-II Manager'),
('90', 'Gamok, Venancio B. Jr.', 'Electronic Data Processing Department', '', 'Information Communication Technology Section', '', 'Central Office', 'Senior  EDP Staff'),
('91', 'Ligason, Juliette T.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Billing Section', '', 'Area 2', 'Billing Supervisor '),
('92', 'Codilla, Fe L.', 'Institutional Services Department', 'Member Services Division', 'Consumer Services And Assistance Section', '', 'Area 2', 'MSD Records Clerk I (detailed at SD)'),
('93', 'Flora, Marenie C.', 'Finance Services Department', 'Gen. Accounting Division (GAD)', '', '', 'Central Office', 'Stock Clerk'),
('94', 'Balios, Rosendo B.', 'Electronic Data Processing Department', 'Consumers Account Division (CAD)', 'Meter Reading Section', '', 'Area 2', 'MRD II'),
('95', 'Undag, Eric D.', 'Technical Services Department', 'System Maintenance and Line Maintenance Division', 'Line Maintenance - District 2', '', 'Area 1', 'Resident Lineman I (Dumingag)'),
('97', 'Dimpas, Rey G.', 'Institutional Services Department', 'Human Resources Division', 'General Services Section', 'Motorpool Unit', 'Central Office', 'Driver III (Alternate)'),
('GM-003', 'Saniel, Jose Raul A.', 'Office of the General Manager', '', '', '', 'Central Office', 'General Manager/CEO');

-- --------------------------------------------------------

--
-- Table structure for table `noticetoexplain`
--

CREATE TABLE `noticetoexplain` (
  `memo_no` varchar(255) NOT NULL,
  `date_reported` varchar(25) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `empid_to` varchar(255) NOT NULL,
  `findings` text NOT NULL,
  `commentary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nte_penalty`
--

CREATE TABLE `nte_penalty` (
  `penaltyNo` int(11) NOT NULL,
  `offenseNo` varchar(255) NOT NULL,
  `RecordNo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `offensesnpenalty`
--

CREATE TABLE `offensesnpenalty` (
  `id` int(11) NOT NULL,
  `sec_num` varchar(100) NOT NULL,
  `sec_name` varchar(100) NOT NULL,
  `sec_code` varchar(100) NOT NULL,
  `subsec_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offensesnpenalty`
--

INSERT INTO `offensesnpenalty` (`id`, `sec_num`, `sec_name`, `sec_code`, `subsec_name`, `description`, `category`) VALUES
(1, 'II', 'CONDUCT AND BEHAVIOR', '5.6', '', 'Engaging in any conduct that violates common decency and morality within ZAMSURECO-I premises, regardless of whether or not committed during working time, including exhibition or distribution of pornographic materials', '8-15 Days Suspension to Dismissal'),
(2, 'II', 'CONDUCT AND BEHAVIOR', '5.7', '', 'Gambling, betting, conducting lotteries or other similar acts prohibited by law during working time within and outside ZAMSURECO-I office premises', '31-60 Days Suspension to Dismissal'),
(3, 'II', 'CONDUCT AND BEHAVIOR', '5.8', '', 'Engaging in *usurious loan transaction with any co-employee/official of ZAMSURECO-I\n*Usury refers to illegal action of lending money at unreasonable high interest rates', '8-15 Days Suspension to Dismissal'),
(4, 'II', 'CONDUCT AND BEHAVIOR', '5.9', '', 'Making practical jokes that tend to disrupt company operations or unreasonably disturbing performance of duties of co-employees', 'Warning to Dismissal'),
(5, 'II', 'CONDUCT AND BEHAVIOR', '5.10', '', 'Acts of immorality which tend to put the company?s name in disrepute', '31-60 Days Suspension to Dismissal'),
(6, 'II', 'CONDUCT AND BEHAVIOR', '5.11', '', 'Other acts which violate common rules on conduct and behavior, and cause prejudice to ZAMSURECO-I', '8-15 Days Suspension to Dismissal'),
(7, 'II', 'CONDUCT AND BEHAVIOR', '5.12', '', 'Invading co-employee?s personal working space, work station during office hours without his/her consent unless otherwise under official cause', 'Warning to Dismissal'),
(8, 'II', 'CONDUCT AND BEHAVIOR', '5.13', '', 'Committing libelous acts', '31-60 Days Suspension to Dismissal'),
(9, 'III', 'CONFLICT OF INTEREST', '5.14', '', 'Having any engagement, participation or involvement, direct or indirect, in any transaction involving any person, firm, corporation, any business or other Coops, where such act is conflict with or is improper and undesirable to the interest of ZAMSURECO-I', '8-15 Days Suspension to Dismissal'),
(10, 'III', 'CONFLICT OF INTEREST', '5.15', '', 'Engaging directly or indirectly in business in competition with or in the same line as that of the Cooperative?s core and non-core business regardless of the extent of the offender?s participation or interest therein', 'Dismissal'),
(11, 'III', 'CONFLICT OF INTEREST', '5.16', '', 'Utilizing the property, information or position of and in the Cooperative for personal gains', '31-60 Days Suspension to Dismissal'),
(12, 'III', 'CONFLICT OF INTEREST', '5.17', '', 'Engaging in pseudo and/or fraudulent and business scam activities and utilizing it to deliver independent services to member-consumers', 'Dismissal'),
(13, 'III', 'CONFLICT OF INTEREST', '5.18', '', 'Abuse of Coop communication systems/assets, such as but not limited to e-mail, internet, phones and other facilities for personal purposes', '8-15 Days Suspension to Dismissal'),
(14, 'III', 'CONFLICT OF INTEREST', '5.19', '', 'Rendering services to another entity, whether on a full-time or part-time basis with or without prior permission to the Management that may affect the course of his/her employment in the Cooperative', '8-15 Days Suspension to Dismissal'),
(15, 'III', 'CONFLICT OF INTEREST', '5.20', '', 'Accepting an appointment, engaging work or services of any organization whose interests may impose conflict to the interest of ZAMSURECO-I, unless otherwise authorized by the Management', '31-60 Days Suspension to Dismissal'),
(16, 'III', 'CONFLICT OF INTEREST', '5.21', '', 'Engaging in activities with compensation like the preparation of wiring plans and electrical contracting work outside of ZAMSURECO-I work unless otherwise authorized', '8-15 Days Suspension to Dismissal'),
(17, 'IV', 'PERFORMANCE OF DUTY', '5.22', 'PERSONAL APPEARANCE', 'Failure to wear prescribed office work uniform when reporting to duty, pursuant to existing memorandum policy', 'Reprimand to 3 Days Suspension'),
(18, 'IV', 'PERFORMANCE OF DUTY', '5.23', 'PERSONAL APPEARANCE', 'Unexcused failure to display, present and wear corporate official identification card (I.D.) for one (1) time within any 30-day period, pursuant to existing memorandum policy', 'Reprimand to 3 Days Suspension'),
(19, 'IV', 'PERFORMANCE OF DUTY', '5.24', 'PERSONAL APPEARANCE', 'Failure to follow personal appearance compliance standards pursuant to existing ZAMSURECO-I policies, under Memorandum No. 112, 2010 or known as ?NEW SET OF STANDARDS TO TECHNICAL SERVICES DEPARTMENT PERSONNEL?', 'penalties prescribed in Memorandum No. 112-2010'),
(20, 'IV', 'PERFORMANCE OF DUTY', '5.25', 'PERSONAL APPEARANCE', 'Failure to observe and follow existing ZAMSURECO-I policies, under Memorandum No. 192, s. 2007, entitled ?WEARING OF SAFETY GEARS?', 'penalties prescribed in Memorandum No. 192 s. 2007'),
(21, 'IV', 'PERFORMANCE OF DUTY', '5.27', 'PROFESSIONAL WORK ETHICS', 'Loafing, staying in other?s offices idly, loitering around ZAMSURECO-I premises, engaging personal conversation with co-employees during office hours', '8-15 Days Suspension to Dismissal'),
(22, 'IV', 'PERFORMANCE OF DUTY', '5.28', 'PROFESSIONAL WORK ETHICS', 'Lounging inside Coop areas and premises during rest days, holidays and/or beyond working hours without valid reason or due authorization from the Management', 'Warning to Dismissal'),
(23, 'IV', 'PERFORMANCE OF DUTY', '5.29', 'PROFESSIONAL WORK ETHICS', 'Visiting other departments/offices without official concern and proper authority', 'Warning to Dismissal'),
(24, 'IV', 'PERFORMANCE OF DUTY', '5.30', 'PROFESSIONAL WORK ETHICS', 'Leaving work assignment temporarily without permission from immediate superior\n(Established practices such as coffee breaks, lunch periods, etc. are excluded from this rule)', '8-15 Days Suspension to Dismissal'),
(25, 'IV', 'PERFORMANCE OF DUTY', '5.31', 'PROFESSIONAL WORK ETHICS', 'Lounging at canteen, lobby or any other place within office premises outside established coffee, snack or lunch breaks\nFor purposes of clarification, hereunder is the set breaks for regular and non-regular employees\n1.\nCoffee breaks during office hours (M', '8-15 Days Suspension to Dismissal'),
(26, 'IV', 'PERFORMANCE OF DUTY', '5.32', 'PROFESSIONAL WORK ETHICS', 'Reading magazines, books and other forms of literature unrelated with employee?s work', 'Warning to Dismissal'),
(27, 'IV', 'PERFORMANCE OF DUTY', '5.33', 'PROFESSIONAL WORK ETHICS', 'Performing activities which are personal in nature during office/working hours including unauthorized participation of activities outside assigned work duties within ZAMSURECO-I premises', '8-15 Days Suspension to Dismissal'),
(28, 'IV', 'PERFORMANCE OF DUTY', '5.34', 'PROFESSIONAL WORK ETHICS', 'Engaging in any forms of personal, social and online entertainment unrelated with work duties which may disrupt one?s work and of others during office hours\n(e.g. playing computer games, playing loud music, watching movies, surfing social media)', '8-15 Days Suspension to Dismissal'),
(29, 'IV', 'PERFORMANCE OF DUTY', '5.35', 'PROFESSIONAL WORK ETHICS', 'Engaging in personal and online business transactions during office hours while using Coop information & communication assets and coop official time', '8-15 Days Suspension to Dismissal'),
(30, 'IV', 'PERFORMANCE OF DUTY', '5.36', 'PROFESSIONAL WORK ETHICS', 'Selling anything during working time or in ZAMSURECO-I premises without prior authorization from the Management', '8-15 Days Suspension to Dismissal'),
(31, 'IV', 'PERFORMANCE OF DUTY', '5.37', 'PROFESSIONAL WORK ETHICS', 'Entertaining forms of personal communication outside official concerns (e.g. personal chitchat, long phone calls) except when emergency in nature', 'Warning to Dismissal'),
(32, 'IV', 'PERFORMANCE OF DUTY', '5.38', 'PROFESSIONAL WORK ETHICS', 'Frequently entertaining personal visitors during working time', 'Warning to Dismissal'),
(33, 'IV', 'PERFORMANCE OF DUTY', '5.39', 'PROFESSIONAL WORK ETHICS', 'Unauthorized sleeping in Central Offices, Coop facilities and compound at night time\n(Pursuant to Memorandum No. 2007-272 and 2012-2014A)', 'Warning to Dismissal'),
(34, 'IV', 'PERFORMANCE OF DUTY', '5.40', 'PROFESSIONAL WORK ETHICS', 'Sleeping while on duty. When as a result of offense, no actual danger on the safety of persons or property exist', 'Warning to Dismissal'),
(35, 'IV', 'PERFORMANCE OF DUTY', '5.41', 'PROFESSIONAL WORK ETHICS', 'Sleeping while on duty. When as a result of the offense, actual danger on the safety of persons or electric coop property exist', '8-15 Days Suspension to Dismissal'),
(36, 'IV', 'PERFORMANCE OF DUTY', '5.42', 'PROFESSIONAL WORK ETHICS', 'Other causes analogous to JUST CAUSE of Termination of Employment as found on Article 282 of the Labor Code, to wit;\n1. Serious misconduct or willful disobedience by the employee of the lawful orders of his employer or representative in connection with hi', 'Dismissal'),
(37, 'IV', 'PERFORMANCE OF DUTY', '5.43', 'CUSTOMER HANDLING & RELATIONS', 'Failure to extend prompt and adequate service to customers', '31-60 Days Suspension to Dismissal'),
(38, 'IV', 'PERFORMANCE OF DUTY', '5.44', 'CUSTOMER HANDLING & RELATIONS', 'Performs misleading acts or informs misleading information to the member-consumer', '31-60 Days Suspension to Dismissal'),
(39, 'IV', 'PERFORMANCE OF DUTY', '5.45', 'CUSTOMER HANDLING & RELATIONS', 'Rudeness towards Coop stakeholders\n(e.g eating / chewing gum while serving member-consumer queries and concerns)', '31-60 Days Suspension to Dismissal'),
(40, 'IV', 'PERFORMANCE OF DUTY', '5.46', 'CUSTOMER HANDLING & RELATIONS', 'Acts of discourtesy and/or disorderly behavior toward coop officials, fellow employees, clients, customers, and visitors during office hours or within Coop premises', 'Warning to Dismissal'),
(41, 'IV', 'PERFORMANCE OF DUTY', '5.47', 'CUSTOMER HANDLING & RELATIONS', 'Failure to give sufficient change to consumers (R.A. 10909 or No Shortchanging Act of 2016)', '8-15 Days Suspension to Dismissal'),
(42, 'IV', 'PERFORMANCE OF DUTY', '5.48', 'CUSTOMER HANDLING & RELATIONS', '*Delayed actions to customer electricity related complaints and requests except on justifiable reasons\nDelay constitutes addressing and/or resolving the issue with concrete action beyond the Coop?s standard timeframe per member-consumer complaint', '8-15 Days Suspension to Dismissal'),
(43, 'IV', 'PERFORMANCE OF DUTY', '5.49', 'CUSTOMER HANDLING & RELATIONS', 'Failure by the employee to safeguard customer sensitive information, databases or Web pages, resulting in risks and danger to customers.', '8-15 Days Suspension to Dismissal'),
(44, 'IV', 'PERFORMANCE OF DUTY', '5.50', 'FINANCIAL COMPLIANCE & STANDARDS', 'Failure to liquidate cash advances within the prescribed period, pursuant to existing ZAMSURECO-I policies', '15 DS pursuant to existing policy'),
(45, 'IV', 'PERFORMANCE OF DUTY', '5.51', 'FINANCIAL COMPLIANCE & STANDARDS', 'Deviating from full and fair reporting of the Coop?s financial condition', '8-15 Days Suspension to Dismissal'),
(46, 'IV', 'PERFORMANCE OF DUTY', '5.52', 'FINANCIAL COMPLIANCE & STANDARDS', 'Failure to remit collections/monies and/or failure to turn over materials/equipment', '31-60 Days Suspension to Dismissal'),
(47, 'IV', 'PERFORMANCE OF DUTY', '5.53', 'FINANCIAL COMPLIANCE & STANDARDS', 'Failure to follow prescribed accounting and auditing work standards and practices and in reportorial compliances, contracts, office reports thereby committing deficiencies, which cause prejudice and losses to ZAMSURECO-I', 'Dismissal'),
(48, 'IV', 'PERFORMANCE OF DUTY', '5.54', 'FINANCIAL COMPLIANCE & STANDARDS', 'Inaccurate reporting of financial transactions of the coop resulting in losses to the Coop.', 'Dismissal'),
(49, 'IV', 'PERFORMANCE OF DUTY', '5.55', 'FINANCIAL COMPLIANCE & STANDARDS', 'Unauthorized changing of Cooperative?s official forms and templates\n(e.g. official electric bill receipts, teller?s receipts, accounting forms, contract, job order, among others)', '8-15 Days Suspension to Dismissal'),
(50, 'IV', 'PERFORMANCE OF DUTY', '5.56', 'TECHNICAL COMPLIANCE', 'Inefficiency in the performance of official duties and/or failure to follow provisions and instructions under Memorandum No. 2007-294 entitled ?EFFICIENCY MEASURES FOR THE REDUCTION OF THE COOPERATIVE?S SYSTEM LOSS, BROWNOUTS AND ESTABLISHMENT OF INCENTIV', 'penalties prescribed in Memorandum No. 2007-294'),
(51, 'IV', 'PERFORMANCE OF DUTY', '5.57.1', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Failure to submit complete employment requirements such as but not limited to the ff: academic credentials, police clearance, SSS, Pag-IBIG, TIN, etc.)', 'Warning to Dismissal'),
(52, 'IV', 'PERFORMANCE OF DUTY', '5.57.2', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Failure to update personal status & information (e.g civil status, address, religion, additional dependents, etc.) and submit corresponding documents to Human Resources within fifteen (15) days upon change of info and status thereof', 'Warning to Dismissal'),
(53, 'IV', 'PERFORMANCE OF DUTY', '5.57.3', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Failure to pay ZAMSURECO-I electric bill/s on time', 'Warning to Dismissal'),
(54, 'IV', 'PERFORMANCE OF DUTY', '5.58', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Failure on the part of a supervisory or managerial employee to disseminate work rules, procedures, among others to employees whom he/she exercises supervision', 'Warning to Dismissal'),
(55, 'IV', 'PERFORMANCE OF DUTY', '5.59', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Failure on the part of a managerial or supervisory employee who has knowledge of any violation of this Code and of other coop work rules to initiate steps to report and/or prevent repetition of the same', '8-15 Days Suspension to Dismissal'),
(56, 'IV', 'PERFORMANCE OF DUTY', '5.60', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Unnecessary delay or failure to comply with official orders and/or specified instructions related to his work', '31-60 Days Suspension to Dismissal'),
(57, 'IV', 'PERFORMANCE OF DUTY', '5.61', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Failure to submit Coop reportorial requirements within the prescribed period (e.g travel reports, monitoring reports, monthly reports, etc.)', '8-15 Days Suspension to Dismissal'),
(58, 'IV', 'PERFORMANCE OF DUTY', '5.62', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Failure to meet deadlines on mandatory reportorial compliances to external parties and partners (e.g. NEA, ERC, DOE, BIR, DOLE, SSS, PHILHEALTH, PAG-IBIG, among others) resulting in penalty of any forms to the Coop', '31-60 Days Suspension to Dismissal'),
(59, 'IV', 'PERFORMANCE OF DUTY', '5.63', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Failure to submit or turnover training kit, materials and reports after official attendance to training and seminars.', 'Warning to Dismissal'),
(60, 'IV', 'PERFORMANCE OF DUTY', '5.64', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Failure to work overtime, without any valid reason, after signifying willingness to perform authorized overtime work', '8-15 Days Suspension to Dismissal'),
(61, 'IV', 'PERFORMANCE OF DUTY', '5.65', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Failure to report fraud or deliberate errors in the preparation, maintenance, evaluation, review or audit of any financial statement or financial record of the Cooperative', '31-60 Days Suspension to Dismissal'),
(62, 'IV', 'PERFORMANCE OF DUTY', '5.66', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Losing or misplacing Coop records and documents which causes prejudice to ZAMSURECO-I', '31-60 Days Suspension to Dismissal'),
(63, 'IV', 'PERFORMANCE OF DUTY', '5.67', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Holding meetings and gatherings in ZAMSURECO-I premises without authorization', 'Warning to Dismissal'),
(64, 'IV', 'PERFORMANCE OF DUTY', '5.68', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Driving recklessly and exceeding speed limit while using Coop vehicle', '8-15 Days Suspension to Dismissal'),
(65, 'IV', 'PERFORMANCE OF DUTY', '5.69', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Careless, exaggerated or inaccurate statements that could be misunderstood or used against ZAMSURECO-I in a legal proceeding', '8-15 Days Suspension to Dismissal'),
(66, 'IV', 'PERFORMANCE OF DUTY', '5.70', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Slowing down, hindering or limiting work output; or failure to perform assigned tasks; or inducing fellow employees to do the same', '8-15 Days Suspension to Dismissal'),
(67, 'IV', 'PERFORMANCE OF DUTY', '5.71.1', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Gross inefficiency which include the following;\n? Working continuously below Cooperative standards and/or in the performance of his/her required responsibilities', '31-60 Days Suspension to Dismissal'),
(68, 'IV', 'PERFORMANCE OF DUTY', '5.71.2', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Gross inefficiency which include the following;\n? Unsatisfactory performance rating during two (2) consecutive rating periods of job evaluation, pursuant to Performance Evaluation System (PES) policy', '31-60 Days Suspension to Dismissal'),
(69, 'IV', 'PERFORMANCE OF DUTY', '5.71.3', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Gross inefficiency which include the following;\n? Deliberately or willfully producing or causing to produce services inferior to the Cooperative standard and quality.', '31-60 Days Suspension to Dismissal'),
(70, 'IV', 'PERFORMANCE OF DUTY', '5.71.4', 'EMPLOYEE OBLIGATION & WORK EFFICIENCY', 'Gross inefficiency which include the following;\n? Wrong installation of any metering facility/ service connections of any member-consumer', '8-15 Days Suspension to Dismissal'),
(71, 'V', 'INSUBORDINATION', '5.72', '', 'Refusing, without any valid reason, to accept work, shift, assignment, or specific instructions given by superior authority or intentional disobedience to any lawful orders, including non-acceptance of new assignment or post as a result of reorganization,', '31-60 Days Suspension to Dismissal'),
(72, 'V', 'INSUBORDINATION', '5.73', '', 'Refusal to render overtime unless fully justified.', 'Warning to Dismissal'),
(73, 'V', 'INSUBORDINATION', '5.74', '', 'Gross insubordination, physical violence and/or threats intentionally committed by an employee who has previous records of disobedience to lawful orders of Management', 'Dismissal'),
(74, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.75', '', 'Cheating\nIt is any act or attempted act of fraud, deception or distortion of the truth which includes but is not limited to:\n? Storing confidential coop data in electronic devices and divulging it to others without the consent from the General Manager.\n? ', '8-15 Days Suspension to Dismissal'),
(75, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.76', '', 'Misappropriation of ZAMSURECO-I funds such as but not limited to sales collections, remittances, long distance telephone services, supplies, computer software, power line materials, equipment, tools, spare parts, intellectual property or other resources a', '31-60 Days Suspension to Dismissal'),
(76, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.77', '', 'Misapplication, destruction, removal, or concealment of coop assets & property regardless of amount involved;', '31-60 Days Suspension to Dismissal'),
(77, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.78', '', 'Fraudulent transfer of coop funds/collections', 'Dismissal'),
(78, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.79', '', 'Willful and Unauthorized reclassification of financial accounts/records', '31-60 Days Suspension to Dismissal'),
(79, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.80', '', 'Concealing of defective work, erroneous transactions, and similar acts which directly results in prejudice or loss to ZAMSURECO-I', '31-60 Days Suspension to Dismissal'),
(80, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.81', '', 'Knowingly giving untruthful statements or concealing material facts in an investigations conducted by authorized personnel/representatives of ZAMSURECO-I', '31-60 Days Suspension to Dismissal'),
(81, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.82', '', 'Knowingly giving false or misleading information in applying for employment or to qualify for any preference of benefit from ZAMSURECO-I.', 'Dismissal'),
(82, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.83.1', '', 'Furnishing false, misleading, dishonest or grossly inaccurate data or information to persons duly authorized to receive the same\n1. If done knowingly and with bad faith', '31-60 Days Suspension to Dismissal'),
(83, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.83.2', '', 'Furnishing false, misleading, dishonest or grossly inaccurate data or information to persons duly authorized to receive the same\n2. If done because of negligence or failure to discharge his duty to make proper research, investigation or verification which', '8-15 Days Suspension to Dismissal'),
(84, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.84', '', 'Commission of acts of disloyalty against the interest of the Cooperative such as, but not limited to engaging in open or clandestine recruitment of Coop personnel, regardless of rank, to work or employment in another business or entity without regard to w', 'Dismissal'),
(85, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.85', '', 'Knowingly giving false or untruthful statements of having a serious/contagious diseases which may endanger other employees or the interest of ZAMSURECO-I', '31-60 Days Suspension to Dismissal'),
(86, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.86', '', 'Concealing of having contagious disease that may cause harm to other employees or the interest of ZAMSURECO-I', '31-60 Days Suspension to Dismissal'),
(87, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.87', '', 'Entering, on behalf of the cooperative, into any contract or transaction manifestly prejudicial or disadvantageous to the Coop, whether or not the offender profit or shall profit thereof', 'Dismissal'),
(88, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.88', '', 'Any acts of dishonesty and fraud motivated by material gain that is not stated in this section committed by an employee, regardless of whether or not any damage or injury was actually suffered by the company', 'Dismissal'),
(89, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.89', '', 'Failure to report or deliberate non-disclosure of incidents, truths or evidences by employees or his/her supervisors/managers/officers and of offenses under this Code', '8-15 Days Suspension to Dismissal'),
(90, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.90', '', 'Connivance or conspiracy with the author of any forms of dishonest or fraudulent acts', '31-60 Days Suspension to Dismissal'),
(91, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.91', '', 'Alteration, falsification, manipulation, destruction of computer files, data as well as paper documents.', '31-60 Days Suspension to Dismissal'),
(92, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.92', '', 'Falsifying one?s identification or falsely using another identification', 'Dismissal'),
(93, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.93', '', 'False claims and/or misrepresentation of facts;', '31-60 Days Suspension to Dismissal'),
(94, 'VI', 'HONESTY, LOYALTY AND INTEGRITY', '5.94', '', 'Submitting a report, business plan, or other coop mandated work that contains falsified, invented or fictitious data or evidence.', '31-60 Days Suspension to Dismissal'),
(95, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.95', '', 'Forgery or signing another?s name without proper authority in any Coop records, memorandum, correspondence, receipt, slip and other Coop documents for the purpose of attaining personal gain, convenience or benefit', 'Dismissal'),
(96, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.96', '', 'Presentation and/or release of counterfeit data, information and documents to Coop stakeholders (e.g Board of Directors, Management, employees, member-consumers, etc.)', '31-60 Days Suspension to Dismissal'),
(97, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.97', '', 'Endorsing bogus persons or identity in ZAMSURECO-I', '31-60 Days Suspension to Dismissal'),
(98, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.98', '', 'Committing forgery or other alterations of all financial records, reports and documents including payments/ disbursement, bank, deposits, and other related instruments maintained by this Cooperative', '31-60 Days Suspension to Dismissal'),
(99, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.99.1', '', 'Issuing a check against insufficient funds\n? Issuing a check against insufficient funds and cashing the same with any of the cashiers, tellers or any employee who has custody of ZAMSURECO-I fund', 'Dismissal'),
(100, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.99.2', '', 'Issuing a check against insufficient funds\n? Issuing a check against insufficient funds and using the same for payment of own electric bill to tellers, cashiers or collection supervisors', 'Dismissal'),
(101, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.99.3', '', 'Issuing a check against insufficient funds\n? Issuing a check against insufficient funds for payment of electric bills of other member-consumer-owners', 'Dismissal'),
(102, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.100', '', 'Drawing salary/allowance in any form of money through falsified documents such as vouchers, receipts or the like', '31-60 Days Suspension to Dismissal'),
(103, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.101', '', 'Estafa or any form of deceit involving Coop property irrespective of the amount involved', 'Dismissal'),
(104, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.102', '', 'Theft or Stealing Coop properties, records, facilities, materials and supplies (e.g. information and communication assets/accessories,\nfuel and oil, spare parts, tires, batteries, wires, pole line, hardware, furniture, etc.)\n* Unauthorized release of Coop', 'Dismissal'),
(105, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.103', '', 'Direct tapping, tampering with electric meters or metering installations of the Cooperative or unauthorized installation of any device and other acts provided under R.A. 7832, with or without collusion with another party for the purpose of defrauding ZAMS', 'Dismissal'),
(106, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.104', '', 'Committing illegal connection of electric service, illegal reconnection of electric service, illegal banking or de-banking of distribution transformer, or illegal installation of any coop property regardless of the intention or the subject matter involved', 'Dismissal'),
(107, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.105', '', 'Falsification of records or furnishing false information or committing any such acts with deliberate intent to defraud the company of cash, materials and stocks and other properties', 'Dismissal'),
(108, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.106', '', 'Falsification of company?s receipts, forms and other instruments without monetary personal gain', 'Dismissal'),
(109, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.107', '', 'Falsification of coop?s receipts, forms and other instruments for personal monetary gain regardless of the amount involved', 'Dismissal'),
(110, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.108', '', 'Falsification of documents evidencing justified absence from work', '31-60 Days Suspension to Dismissal'),
(111, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.109', '', 'Drawing salary/allowance in any form of money through falsified vouchers, receipts or the like', '31-60 Days Suspension to Dismissal'),
(112, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.110.1', '', 'Committing deceitful acts to the member-consumers and stakeholders of the Coop such as:\n? Charging or asking additional fees and payments from member-consumers other than what isrequired and due to them', '31-60 Days Suspension to Dismissal'),
(113, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.110.2', '', 'Committing deceitful acts to the member-consumers and stakeholders of the Coop such as:\n? Falsely representing oneself as Coop bill collector, disconnection crew, lineman, engineer or fraudulent misrepresentation of personal and professional information t', '31-60 Days Suspension to Dismissal'),
(114, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.110.3', '', 'Committing deceitful acts to the member-consumers and stakeholders of the Coop such as:\n? Fraudulently influence, coerce, manipulate or mislead any independent public or certified accountant who is auditing the Coop?s financial statements', 'Dismissal'),
(115, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.110.4', '', 'Committing deceitful acts to the member-consumers and stakeholders of the Coop such as:\n? Make dishonest or false reports or other office documents or fraudulent reporting, ?doctoring of reports? padding expenses, misrepresentation of information or any C', '31-60 Days Suspension to Dismissal'),
(116, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.110.5', '', 'Committing deceitful acts to the member-consumers and stakeholders of the Coop such as:\n? Authorizing or receiving compensation for hours not worked', '31-60 Days Suspension to Dismissal'),
(117, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.110.6', '', 'Committing deceitful acts to the member-consumers and stakeholders of the Coop such as:\n? Removal of Records', '31-60 Days Suspension to Dismissal'),
(118, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.110.7', '', 'Committing deceitful acts to the member-consumers and stakeholders of the Coop such as:\n? Stealing fellow employee?s personal belongings irrespective of the amount involved', '31-60 Days Suspension to Dismissal'),
(119, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.110.8', '', 'Committing deceitful acts to the member-consumers and stakeholders of the Coop such as:\n? Connivance or conspiracy with the author of an act of theft or stealing or to any form of dishonest acts', '31-60 Days Suspension to Dismissal'),
(120, 'VII', 'ANTI-THEFT AND ANTI-FRAUD', '5.110.9', '', 'Committing deceitful acts to the member-consumers and stakeholders of the Coop such as:\n? Failure of any employee or supervisor, who has knowledge of an act of power pilferage or stealing, to immediately report to his supervisor or any other responsible o', '31-60 Days Suspension to Dismissal'),
(121, 'VIII', 'ANTI-BRIBERY AND ANTI-CORRUPTION', '5.111', '', 'Involvement in cases of bribery or attempted *bribery such as:\n* Bribery or attempted bribery means receiving or offering undue reward or anything of value and includes payments to secure a business advantage, financial or otherwise, to which the company ', ''),
(122, 'VIII', 'ANTI-BRIBERY AND ANTI-CORRUPTION', '5.112', '', 'Offering, promising or paying a bribe of any kind that could affect either party?s impartiality, influence a business decision or lead to the improper performance of an official duty', '31-60 Days Suspension to Dismissal'),
(123, 'VIII', 'ANTI-BRIBERY AND ANTI-CORRUPTION', '5.113', '', 'Soliciting, accepting or receiving a bribe of any kind that could affect either party?s impartiality, influence a business decision or lead to the improper performance of an official duty', '31-60 Days Suspension to Dismissal'),
(124, 'VIII', 'ANTI-BRIBERY AND ANTI-CORRUPTION', '5.114', '', 'Accepting *facilitation payments\n* Facilitation payments are small bribes to officials or personnel with a view to speeding up routine Coop transactions to which the payer is already entitled or the official or employee is already entitled through his mon', '31-60 Days Suspension to Dismissal'),
(125, 'VIII', 'ANTI-BRIBERY AND ANTI-CORRUPTION', '5.115', '', 'Taking part in *kickbacks either directly or indirectly\n* Kickbacks arise when suppliers or service providers pay part of their fees to the individuals who give them the contract or purchase order or some other business advantage', '31-60 Days Suspension to Dismissal'),
(126, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.116', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Unauthorized use of Coop facilities, equipment, vehicles, and all other properties or amenities owned by this Cooperative', '8-15 Days Suspension to Dismissal'),
(127, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.116.1', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Unauthorized use of ZAMSURECO-I Function Hall and other Coop facilities, pursuant to Memorandum No. 2007-260A\n(e.g. expired license, without authority, approval, consent , permit, etc.)', '8-15 Days Suspension to Dismissal'),
(128, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.117', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Any acts of omission and negligence resulting in loss or theft of company vehicle', '31-60 Days Suspension to Dismissal'),
(129, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.118', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Failure to cooperate during investigation for theft or loss of vehicle', '8-15 Days Suspension to Dismissal'),
(130, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.119', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Failure to submit or obtain * general information on cause of incident during vehicular accident\n* General information includes name of other party involved if any, date and time of incident, description of incident, vehicular parts damaged, cause of acci', 'Warning to Dismissal'),
(131, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.120', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Failure to report to the Human Resources Division, Area Manager, Department Head and General Manager all traffic violations involving motor vehicle laws, ordinance, etc. within twelve (12) hours from the occurrence.', 'Warning to Dismissal'),
(132, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.121', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Failure to immediately report carnap and theft of company vehicle to the Human Resources Division, Area Manager, Department Head and General Manager.', '8-15 Days Suspension to Dismissal'),
(133, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.122', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Operating Coop vehicles and equipment that are past scheduled preventive maintenance', '8-15 Days Suspension to Dismissal'),
(134, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.123', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Knowingly operating Coop vehicles and equipment with any defect (for Coop vehicles: engine trouble, suspension problem, steering issues, broken/busted lights, etc.,)', '31-60 Days Suspension to Dismissal'),
(135, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.124', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Negligence in the use of Coop assets resulting in minor injury or damage thereto such as, but not limited to the following:\n? Standard vehicles\n? Computers\n? Server\n? Camera\n? Other ICT facilities\n? Embossing machines\n? Sound system\n? Test instruments\n? A', '31-60 Days Suspension to Dismissal'),
(136, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.125', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Negligence in the use/operation of Coop-owned facilities/special equipment such as but not limited to the following:\n? Substation\n? Meter shop machine and test instruments\n? Metering facilities,\n? Rewinding testing equipment\n? Power line tools,\n? Power mo', '31-60 Days Suspension to Dismissal'),
(137, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.126', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Operating without previous authority or tinkering with, ZAMSURECO-I vehicles, operating machines, special tools or equipment, the operation of which requires specialized skills or training, for which the employee is not specifically trained or specificall', '31-60 Days Suspension to Dismissal'),
(138, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.127', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Without authority, allowing a third person party to operate, use, or tinker with coop vehicles, operating machines, special tool or equipment', '8-15 Days Suspension to Dismissal'),
(139, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.128', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Failure by the custodian and/or operator to immediately report damage or defects of Coop vehicle, operating machine, special tools or equipment', '8-15 Days Suspension to Dismissal'),
(140, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.129', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Failure to conduct proper and preventive maintenance of the assigned Coop vehicle (e.g. cleanliness, gas level, change oil, tire check, tire replacement, brake pad & rotor replacement and fluid conditions, etc.)', '8-15 Days Suspension to Dismissal'),
(141, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.130', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Repairing personal private vehicle using coop facilities, materials, spare parts and services on/off duty (Pursuant to Memorandum No. 2007-289)', '8-15 Days Suspension to Dismissal'),
(142, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.131', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Failure to park the Coop vehicle at the designated motor pool location during off duty hours\n(Pursuant to Memorandum No. 2007-289)', 'Warning to Dismissal'),
(143, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.132', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Parking employee?s private vehicle within the Coop compound in a prohibited or ?no parking? area', 'Warning to Dismissal'),
(144, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.133', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Disposal of any Cooperative property, irrespective of the status, condition and amount involved, without the approval of the General Manager', 'Dismissal'),
(145, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.134', 'VEHICLES, SPECIAL EQUIPMENT & TOOLS', 'Using privately owned vehicles for official business operations of the Cooperative without approval from the management.\n* Only Coop-owned and private vehicles with Management?s consent must be used on official business for vehicle tracking purposes', '8-15 Days Suspension to Dismissal'),
(146, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.135', 'ICT INFRASTRACTURE', 'RECO-I ICT Infrastructures, systems and software, including internet, intranet, VOIP, Video-teleconferencing facility, camera, sound system and accessories, computers, printers, scanners, accessories, etc. licenses, among others.\nImproper use include as f', '8-15 Days Suspension to Dismissal'),
(147, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.136', 'ICT INFRASTRACTURE', 'Improper use of coop e-mail\n* Improper use include as follows: porno, cyber bullying, attaching lewd photos, personal business or any activities outside official concerns', 'Dismissal'),
(148, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.137', 'ICT INFRASTRACTURE', 'Unauthorized use of records or access to information systems, including unauthorized sharing of computer security clearances/codes/passwords/', '31-60 Days Suspension to Dismissal'),
(149, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.138', 'ICT INFRASTRACTURE', 'Alteration, manipulation, or destruction of official computer files and data which resulted in damage/harm to the coop.', '31-60 Days Suspension to Dismissal'),
(150, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.139.1', 'ICT INFRASTRACTURE', 'Destruction of ICT assets:\n? ICT Asset/s worth 100,000 and below', '31-60 Days Suspension to Dismissal'),
(151, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.139.2', 'ICT INFRASTRACTURE', 'Destruction of ICT assets:\n? ICT Asset/s worth 100,000 and above', 'Dismissal'),
(152, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.140', 'ICT INFRASTRACTURE', 'Inappropriate use of computer systems including hacking and software piracy;', '31-60 Days Suspension to Dismissal'),
(153, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.141', 'ICT INFRASTRACTURE', 'Logging in or otherwise gaining access to a computer, computer network or protected web site, using the password or identity of another.', '31-60 Days Suspension to Dismissal'),
(154, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.142', 'OTHER PHYSICAL ASSETS & FACILITIES', 'Improper use & care of ZAMSURECO-I physical assets such as but limited to the following: sports facilities, comfort rooms, drinking fountains, among others\nNote: In case of damage of Physical Fitness Facility, refer to Memorandum No. 2007-120', 'penalty to be based on the value of the property destroyed'),
(155, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.143', 'OTHER PHYSICAL ASSETS & FACILITIES', 'Failure to perform preventive safety measures and energy saving acts on office equipment and facilities (e.g turn off lights &air conditioners, unplug computers, etc.)', 'Warning to Dismissal'),
(156, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.144', 'OTHER PHYSICAL ASSETS & FACILITIES', 'Failure to perform safeguarding of Coop assets (e.g. locking of doors, proper storage of files, tools and materials, etc.)', '8-15 Days Suspension to Dismissal'),
(157, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.145', 'OTHER PHYSICAL ASSETS & FACILITIES', 'Any acts of vandalism that may damage, deform or destroy Coop assets', '8-15 Days Suspension to Dismissal'),
(158, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.146', 'OTHER PHYSICAL ASSETS & FACILITIES', 'Gross negligence in the use of Coop property resulting in major damage or injury thereto or to its employees', 'Dismissal'),
(159, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.147', 'SUPPLIES', 'Unauthorized use of Cooperative?s stationery, office supplies or equipment for personal agenda and purposes', 'Warning to Dismissal'),
(160, 'IX', 'PROPER USE AND CARE OF ZAMSURECO-I ASSETS', '5.148', 'SUPPLIES', 'Unauthorized utilization of resources owned by Coop such as gas, water and electricity supply.', '8-15 Days Suspension to Dismissal'),
(161, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.149.1', 'EMPLOYEES? LEAVE', 'GOING ON SICK LEAVE, INCLUDING HOUSE CONFINEMENT, UNDER THE FOLLOWING CASES:\nBEFORE SICK LEAVE\n? Failure to submit proof of medical diagnosis and authorization from ZAMSURECO-I physician, reputable doctor or medical institution in case of an anticipated a', 'Warning to Dismissal'),
(162, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.149.2', 'EMPLOYEES? LEAVE', 'GOING ON SICK LEAVE, INCLUDING HOUSE CONFINEMENT, UNDER THE FOLLOWING CASES:\nON SICK LEAVE\n? In the absence of prior authorization, where the circumstances involving the time of onset of the illness and the nature thereof directly causes physical inabilit', '8-15 Days Suspension to Dismissal'),
(163, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.149.3', 'EMPLOYEES? LEAVE', 'GOING ON SICK LEAVE, INCLUDING HOUSE CONFINEMENT, UNDER THE FOLLOWING CASES:\nON SICK LEAVE\n? Caught on vacation upon employee monitoring', 'Warning to Dismissal'),
(164, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.149.4', 'EMPLOYEES? LEAVE', 'GOING ON SICK LEAVE, INCLUDING HOUSE CONFINEMENT, UNDER THE FOLLOWING CASES:\nON SICK LEAVE\nFailure to notify using\n* proper communication channel beyond 12 noon on the first day of leave.\n* Employee?s phone number must be registered in the HR', 'Warning to Dismissal'),
(165, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.149.5', 'EMPLOYEES? LEAVE', 'GOING ON SICK LEAVE, INCLUDING HOUSE CONFINEMENT, UNDER THE FOLLOWING CASES:\nAFTER SICK LEAVE\nFailure to submit medical certificate with *complete details upon return to work from at least a 3-day sick leave\n* Complete details include:\n? Name of hospital/', 'Warning to Dismissal'),
(166, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.149.6', 'EMPLOYEES? LEAVE', 'Without prior notice, extending the original period of sick leave previously authorized without officially informing ZAMSURECO-I and failure to submit a medical certificate upon reporting for work.', 'The same penalties provided for excessive absences or abandonment of work, as the case may be.'),
(167, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.150.1', 'EMPLOYEES? LEAVE', 'GOING ON VACATION LEAVE, UNDER THE FOLLOWING\n? Failure to file leave (e.g. vacation leave, solo parent, etc.) on the prescribed number of days ahead', 'Warning to Dismissal'),
(168, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.150.2', 'EMPLOYEES? LEAVE', 'GOING ON VACATION LEAVE, UNDER THE FOLLOWING\nApplying for an extension of vacation leave with an authorized absence of less than *two (2) weeks only\n* Only employees with an approved minimum of 2-week vacation leave and has officially turned-over necessar', 'Warning to Dismissal'),
(169, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.150.3', 'EMPLOYEES? LEAVE', 'Extension of vacation leave without notification to Coop?s communication channels', 'Dismissal'),
(170, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.150.4', 'EMPLOYEES? LEAVE', 'Enjoying a minimum of fifteen (15) days leave without proper turn-over of accountabilities to his/her direct supervisor', '8-15 Days Suspension to Dismissal'),
(171, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.151.1', 'EMPLOYEES? LEAVE', 'GOING ON EMERGENCY LEAVE, UNDER THE FOLLOWING CASES:\nFailure to inform SUPERVISOR AND HUMAN RESOURCES through proper communication channel upon the cause of emergency leave', 'Warning to Dismissal'),
(172, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.151.2', 'EMPLOYEES? LEAVE', 'GOING ON EMERGENCY LEAVE, UNDER THE FOLLOWING CASES:\nFailure to submit proof of emergency upon return to work (e.g. Barangay Certification, Death Certificate, photos, etc.)', 'Warning to Dismissal'),
(173, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.152', 'SSS, PAG-IBIG & PHILHEALTH', 'Failure to submit complete and original/certified true copy of maternity medical records prior to child delivery (used for SSS Maternity Notification)', 'Warning to Dismissal'),
(174, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.153', 'SSS, PAG-IBIG & PHILHEALTH', 'Failure to submit complete and original/certified true copy child?s birth certificate and/or maternity medical records fifteen (15) days upon child delivery or miscarriage or childbirth related record (used for SSS Maternity Reimbursement)', '8-15 Days Suspension to Dismissal'),
(175, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.154', 'SSS, PAG-IBIG & PHILHEALTH', 'Failure to submit complete and original copy of sickness medical records (e.g. hospital records) fifteen (15) days upon last day of confinement or hospital discharge\n(used for SSS Sickness claims)', '8-15 Days Suspension to Dismissal'),
(176, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.155', 'SSS, PAG-IBIG & PHILHEALTH', 'Failure to submit SSS check voucher to HR Division upon receipt of SSS loan\n(used for loan payment)', '8-15 Days Suspension to Dismissal'),
(177, 'X', 'STATUTORY BENEFIT COMPLIANCE', '5.156', 'SSS, PAG-IBIG & PHILHEALTH', 'Failure to submit any employee compliance requirements on SSS, Pag-IBIG & Phil-Health within the required timeframe', '8-15 Days Suspension to Dismissal'),
(178, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.157', 'BLOOD-BORNE VIRUSES (HIV, AIDS, Hepatitis), TUBERCULOSIS & OTHER INFECTIOUS DISEASES', 'Explicit use of needles or any fluid-injecting device in the workplace.\nexcept in cases of insulin dependent employees who officially registered through the Coop Nurse and the HR', 'Warning to Dismissal'),
(179, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.158', 'BLOOD-BORNE VIRUSES (HIV, AIDS, Hepatitis), TUBERCULOSIS & OTHER INFECTIOUS DISEASES', 'Conducting blood transfusion within ZAMSURECO-I premises.', '8-15 Days Suspension to Dismissal'),
(180, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.159', 'BLOOD-BORNE VIRUSES (HIV, AIDS, Hepatitis), TUBERCULOSIS & OTHER INFECTIOUS DISEASES', 'Willful non-disclosure of inherent or acquired blood-borne diseases and other infectious diseases to the Management', '31-60 Days Suspension to Dismissal'),
(181, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.160', 'BLOOD-BORNE VIRUSES (HIV, AIDS, Hepatitis), TUBERCULOSIS & OTHER INFECTIOUS DISEASES', 'Refusal to admit and undergo medical treatment even if medical diagnosis shows possible positivity of contagious disease', 'Dismissal'),
(182, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.161', 'ELECTRICAL & FIRE SAFETY', 'Failure to comply with electrical and fire safety standards\nWhen as a result, no actual damage to life and assets existed.', '8-15 Days Suspension to Dismissal'),
(183, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.162', 'ELECTRICAL & FIRE SAFETY', 'Failure to comply with electrical and fire safety standards\nWhen as a result, actual damage to life and assets existed.', '31-60 Days Suspension to Dismissal'),
(184, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.163', 'ELECTRICAL & FIRE SAFETY', 'Misuse office extinguishers', '8-15 Days Suspension to Dismissal'),
(185, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.164', 'ELECTRICAL & FIRE SAFETY', 'Misuse of fire alarm ? bomb jokes, fire alarm jokes, etc. (P.D. 1727)', '8-15 Days Suspension to Dismissal'),
(186, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.165', 'ELECTRICAL & FIRE SAFETY', 'Igniting flammable items in fire-prone areas (e.g. substations) and office premises', '31-60 Days Suspension to Dismissal'),
(187, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.166', 'ELECTRICAL & FIRE SAFETY', 'Using of candles inside coop premises in times of brownouts', 'Warning to Dismissal'),
(188, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.167', 'ELECTRICAL & FIRE SAFETY', 'Throwing of cigarette butts outside designated smoking areas( e.g. substations, inside office premises, storage areas)', '8-15 Days Suspension to Dismissal'),
(189, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.168', 'ELECTRICAL & FIRE SAFETY', 'Failure to follow and observe Memorandum No. 2007-109-A entitled ?SAFETY MEASURE? before and after work', '8-15 Days Suspension to Dismissal'),
(190, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.169', 'ELECTRICAL & FIRE SAFETY', 'Arson', 'Dismissal'),
(191, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.170', 'OFFICE HOUSEKEEPING & ENVIRONMENT', 'Failure to observe regular housekeeping\n(Pursuant to Memorandum No. 213-087-A)', 'Warning to Dismissal');
INSERT INTO `offensesnpenalty` (`id`, `sec_num`, `sec_name`, `sec_code`, `subsec_name`, `description`, `category`) VALUES
(192, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.171', 'OFFICE HOUSEKEEPING & ENVIRONMENT', 'Littering interior and exterior surroundings of ZAMSURECO-I', 'Warning to Dismissal'),
(193, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.172', 'OFFICE HOUSEKEEPING & ENVIRONMENT', 'No proper labeling, segregation and placement of warehouse materials', '8-15 Days Suspension to Dismissal'),
(194, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.173', 'OFFICE HOUSEKEEPING & ENVIRONMENT', 'No proper recordkeeping office documents', 'Warning to Dismissal'),
(195, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.174', 'OFFICE HOUSEKEEPING & ENVIRONMENT', 'Failure to abide work instructions or procedures directed by occupational safety and health (OSH) laws and regulations', '8-15 Days Suspension to Dismissal'),
(196, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.175', 'OFFICE HOUSEKEEPING & ENVIRONMENT', 'Failure to abide work instructions or procedures directed by occupational safety and health (OSH) laws and regulations', '8-15 Days Suspension to Dismissal'),
(197, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.176', 'WASTE SEGREGATION AND DISPOSAL ? WASTE DISPOSAL PLAN C/O GM/MANAGEMENT/BOD', 'Failure to conduct proper garbage segregation', '8-15 Days Suspension to Dismissal'),
(198, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.177', 'WASTE SEGREGATION AND DISPOSAL ? WASTE DISPOSAL PLAN C/O GM/MANAGEMENT/BOD', 'Failure to conduct proper waste disposal', '8-15 Days Suspension to Dismissal'),
(199, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.178', 'WASTE SEGREGATION AND DISPOSAL ? WASTE DISPOSAL PLAN C/O GM/MANAGEMENT/BOD', 'Scattering office trash, physical and/or technical waste, among others', '8-15 Days Suspension to Dismissal'),
(200, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.179', 'WASTE SEGREGATION AND DISPOSAL ? WASTE DISPOSAL PLAN C/O GM/MANAGEMENT/BOD', 'Creating or contributing to unsanitary conditions within coop premises', '8-15 Days Suspension to Dismissal'),
(201, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.180', 'PHYSICAL HEALTH', 'Failure to attend Mandatory Friday Physical Fitness without any justifiable reasons\n(Pursuant to existing policy and practices)', 'Warning to Dismissal'),
(202, 'XI', 'HEALTH AND SAFETY IN THE WORKPLACE', '5.181', 'PHYSICAL HEALTH', 'Failure to submit Cooperative?s mandatory annual medical check-up', 'Warning to Dismissal'),
(203, 'XII', 'PHYSICAL SECURITY', '5.182', '', 'Unauthorized intrusion or entering to any prohibited and restricted areas and danger-zone places so designated by the Management (e.g. substation etc.)', '8-15 Days Suspension to Dismissal'),
(204, 'XII', 'PHYSICAL SECURITY', '5.183', '', 'Allowing, conniving with or assisting an employee and/or outsider to enter the Coop?s restricted area', '8-15 Days Suspension to Dismissal'),
(205, 'XII', 'PHYSICAL SECURITY', '5.184', '', 'Refusal to submit to a reasonable inspection conducted within ZAMSURECO-I premises.', 'Warning to Dismissal'),
(206, 'XII', 'PHYSICAL SECURITY', '5.185', '', 'Intentionally compromising or subverting the Coop?s security system control', 'Dismissal'),
(207, 'XII', 'PHYSICAL SECURITY', '5.186', '', 'Sabotage', 'Dismissal'),
(208, 'XII', 'PHYSICAL SECURITY', '5.187', '', 'Carrying of deadly weapons within the coop premises', '31-60 Days Suspension to Dismissal'),
(209, 'XII', 'PHYSICAL SECURITY', '5.188.1', '', 'ICT-based Security\nFailure to report immediately any suspected computer security exposures or incidents to to the General Manager', '31-60 Days Suspension to Dismissal'),
(210, 'XII', 'PHYSICAL SECURITY', '5.188.2', '', 'ICT-based Security\nFailure to report immediately any suspected computer security exposures or incidents to to the General Manager\n? Ensuring that storage areas are protected against destruction or damage from physical hazards, like fire or floods.\n? Stori', '8-15 Days Suspension to Dismissal'),
(211, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.189', 'CONFIDENTIALITY, INTEGRITY AND AVAILABILITY OF COMPUTER DATA AND SYSTEM', 'Illegal Access\nThe access to the whole part or any part of a computer system of the Cooperative without right', 'Dismissal'),
(212, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.190', 'CONFIDENTIALITY, INTEGRITY AND AVAILABILITY OF COMPUTER DATA AND SYSTEM', 'Illegal Interception\nThe interception made by technical means without right of any non-public transmission of computer data to, from, or within a computer system including electromagnetic emissions from a computer system carrying such computer data', '31-60 Days Suspension to Dismissal'),
(213, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.191', 'CONFIDENTIALITY, INTEGRITY AND AVAILABILITY OF COMPUTER DATA AND SYSTEM', 'Data Interference\nThe intentional or reckless alteration, damaging, deletion or deterioration of computer data, electronic document, or electronic data message, without right, including the introduction of transmission of viruses', 'Dismissal'),
(214, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.192', 'CONFIDENTIALITY, INTEGRITY AND AVAILABILITY OF COMPUTER DATA AND SYSTEM', 'System Interference\nThe intentional alteration or reckless hindering or interference with the functioning of a computer or computer network by inputting, transmitting, damaging, deleting, deteriorating, altering or suppressing computer data or program, el', 'Dismissal'),
(215, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.193.1', 'CONFIDENTIALITY, INTEGRITY AND AVAILABILITY OF COMPUTER DATA AND SYSTEM', 'Misuse of Devices\nThe use, production, sale, procurement, importation, distribution or otherwise making available, without right, of:\n? A device including a computer program', '31-60 Days Suspension to Dismissal'),
(216, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.193.2', 'CONFIDENTIALITY, INTEGRITY AND AVAILABILITY OF COMPUTER DATA AND SYSTEM', 'Misuse of Devices\nThe use, production, sale, procurement, importation, distribution or otherwise making available, without right, of:\n? A computer password, access code, or similar data by which the whole or any part of a computer system is capable of bei', '31-60 Days Suspension to Dismissal'),
(217, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.193.3', 'CONFIDENTIALITY, INTEGRITY AND AVAILABILITY OF COMPUTER DATA AND SYSTEM', 'Misuse of Devices\nThe use, production, sale, procurement, importation, distribution or otherwise making available, without right, of:\n? The possession of an item referred to in paragraphs (1) or (2) of Section 5.191 above with the intent to use said devic', '31-60 Days Suspension to Dismissal'),
(218, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.194.1', 'CONFIDENTIALITY, INTEGRITY AND AVAILABILITY OF COMPUTER DATA AND SYSTEM', 'Cybersquatting\nThe acquisition of a domain name over the internet in bad faith to profit, mislead, destroy reputation and deprive others from registering the same, if such a domain is:\n? Similar, identical or confusingly similar to an existing trademark o', 'Dismissal'),
(219, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.194.2', 'CONFIDENTIALITY, INTEGRITY AND AVAILABILITY OF COMPUTER DATA AND SYSTEM', 'Cybersquatting\nThe acquisition of a domain name over the internet in bad faith to profit, mislead, destroy reputation and deprive others from registering the same, if such a domain is:\n? Identical or in any way similar with the name of a person/s of ZAMSU', 'Dismissal'),
(220, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.194.3', 'CONFIDENTIALITY, INTEGRITY AND AVAILABILITY OF COMPUTER DATA AND SYSTEM', 'Cybersquatting\nThe acquisition of a domain name over the internet in bad faith to profit, mislead, destroy reputation and deprive others from registering the same, if such a domain is:\n?  Acquired without right or with intellectual property interests in i', 'Dismissal'),
(221, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.195.1', 'COMPUTER-RELATED OFFENSES', 'Computer-related Forgery\n? The input, alteration, or deletion of any computer data without right resulting in inauthentic data with the intent that it be considered or acted upon for legal purposes as if it were authentic, regardless whether or not the da', 'Dismissal'),
(222, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.195.2', 'COMPUTER-RELATED OFFENSES', 'Computer-related Forgery\n? The act of knowingly using computer data which is the product of computer-related forgery as defined herein, for the purpose of perpetuating a fraudulent or dishonest design', 'Dismissal'),
(223, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.196.1', 'COMPUTER-RELATED OFFENSES', 'Computer-related Fraud\nThe unauthorised input, alteration, or deletion of computer data or program or interference in the functioning of a computer system, causing damage thereby with fraudulent intent provided that:\n? The computer-related fraud has cause', '31-60 Days Suspension to Dismissal'),
(224, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.196.2', 'COMPUTER-RELATED OFFENSES', 'Computer-related Fraud\nThe unauthorised input, alteration, or deletion of computer data or program or interference in the functioning of a computer system, causing damage thereby with fraudulent intent provided that:\n? The computer-related fraud has cause', 'Dismissal'),
(225, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.197.1', 'COMPUTER-RELATED OFFENSES', 'Computer-related Identity Theft\nThe intentional acquisition, use, misuse, transfer, possession, alteration, or deletion of identifying information belonging to another, whether natural or juridical, without right, provided that:\n? The computer-related ide', '31-60 Days Suspension to Dismissal'),
(226, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.197.2', 'COMPUTER-RELATED OFFENSES', 'Computer-related Identity Theft\nThe intentional acquisition, use, misuse, transfer, possession, alteration, or deletion of identifying information belonging to another, whether natural or juridical, without right, provided that:\n? The computer-related ide', 'Dismissal'),
(227, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.198', 'CONTENT-RELATED OFFENSES', 'Cybersex\nCommitted wilful engagement, maintenance, control, or operation, directly or indirectly of any lascivious exhibition of sexual organs or sexual activity, with the aid of a computer system, for favour or consideration', 'Dismissal'),
(228, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.199', 'CONTENT-RELATED OFFENSES', 'Child Pornography\nCommitted unlawful or prohibited acts defined and punishable by R.A. No. 9775 or the Anti-Child Pornography Act of 2009, committed through a computer system', 'Dismissal'),
(229, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.200', 'LIBEL', 'Committed unlawful or prohibited acts of libel as defined in Article 355 of the Revised Penal Code, as amended, committed through a computer system or any other similar means which may be devised in the future.\nThis may include the use of social networkin', '31-60 Days Suspension to Dismissal'),
(230, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.201', 'OTHER CYBERCRIME OFFENSES', 'Aiding or Abetting in the commission of Cybercrime\nAny employee who wilfully abets or aids in the commission of any of the offences enumerated in this section', '31-60 Days Suspension to Dismissal'),
(231, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.202', 'OTHER CYBERCRIME OFFENSES', 'Attempt in the Commission of Cybercrime\nAny employee who wilfully attempts to commit any of the offences enumerated in this section', '31-60 Days Suspension to Dismissal'),
(232, 'XIII', 'CYBERSECURITY IN THE WORKPLACE', '5.203', 'OTHER CYBERCRIME OFFENSES', 'All offenses defined by this Revised Code of Ethics and Discipline for Employees (CEDE) and/or crimes defined and penalised under Revised Penal Code, as amended, and special laws, if committed by, through and with the use of information and communications', '31-60 Days Suspension to Dismissal'),
(233, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.204.1', 'PERSONAL AND SENSITIVE INFORMATION', 'Unauthorized processing of personal information and sensitive personal information\n? Employees who process personal information without the consent of the data subject or without being authorized', '8-15 Days Suspension to Dismissal'),
(234, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.204.2', 'PERSONAL AND SENSITIVE INFORMATION', 'Unauthorized processing of personal information and sensitive personal information\n? Employees who process sensitive personal information without the consent of the data subject or without being authorized', '31-60 Days Suspension to Dismissal'),
(235, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.205.1', 'PERSONAL AND SENSITIVE INFORMATION', 'Accessing personal information and sensitive personal information due to negligence\n? Provided access to personal information without being authorised due to negligence', '8-15 Days Suspension to Dismissal'),
(236, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.205.2', 'PERSONAL AND SENSITIVE INFORMATION', 'Accessing personal information and sensitive personal information due to negligence\n? Provided access to sensitive personal information without being authorised due to negligence', '31-60 Days Suspension to Dismissal'),
(237, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.206.1', 'PERSONAL AND SENSITIVE INFORMATION', 'Improper disposal of personal information and sensitive personal information\n? Knowingly or negligently dispose, discard, or abandon the personal information of an individual in an area accessible to the public or has otherwise placed the personal informa', '8-15 Days Suspension to Dismissal'),
(238, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.206.2', 'PERSONAL AND SENSITIVE INFORMATION', 'Improper disposal of personal information and sensitive personal information\n? Knowingly or negligently dispose, discard, or abandon the sensitive personal information of an individual in an area accessible to the public or has otherwise placed the person', '31-60 Days Suspension to Dismissal'),
(239, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.207.1', 'PERSONAL AND SENSITIVE INFORMATION', 'Processing of personal information and sensitive personal information for unauthorised purposes\n? Processing personal information for purposes not authorised by the data subject, the Management and otherwise authorised under R.A. 10173 or under existing l', '8-15 Days Suspension to Dismissal'),
(240, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.207.2', 'PERSONAL AND SENSITIVE INFORMATION', 'Processing of personal information and sensitive personal information for unauthorised purposes\n? Processing sensitive personal information for purposes not authorized by the data subject, the Management or otherwise authorized under R.A. 10173 or under e', '31-60 Days Suspension to Dismissal'),
(241, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.208', 'PERSONAL AND SENSITIVE INFORMATION', 'Unauthorized access or intentional breach\nKnowingly and unlawfully violating data confidentiality and security data systems and breaks any way into any system where personal and sensitive personal information are stored', 'Dismissal'),
(242, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.209', 'PERSONAL AND SENSITIVE INFORMATION', 'Concealment of security breaches involving sensitive personal information\nIntentionally or by omission conceals the fact of a security breach and of the obligation to notify the Data Privacy Officer and the Management after having knowledge of such securi', '31-60 Days Suspension to Dismissal'),
(243, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.210', 'PERSONAL AND SENSITIVE INFORMATION', 'Malicious Disclosure\nAny officials or employees, who with malice or in bad faith, discloses unwarranted or false information relative to any personal information or sensitive personal information obtained by him/her', 'Dismissal'),
(244, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.211.1', 'PERSONAL AND SENSITIVE INFORMATION', 'Unauthorized Disclosure\n? Any official or employee, who discloses to a third party personal information not covered by the malicious disclosure without the consent of the data subject', '8-15 Days Suspension to Dismissal'),
(245, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.211.2', 'PERSONAL AND SENSITIVE INFORMATION', 'Unauthorized Disclosure\n? Any official or employee, who discloses to a third party sensitive personal information not covered by the malicious disclosure without the consent of the data subject', '31-60 Days Suspension to Dismissal'),
(246, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.212', 'PERSONAL AND SENSITIVE INFORMATION', 'Combination of series of acts under this section', 'Dismissal'),
(247, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.213', 'GENERAL INFORMATION', 'Divulging valuable information of a confidential character regarding the operations and/or activities of the company or any of its officers or employees to unauthorized persons or strangers', '8-15 Days Suspension to Dismissal'),
(248, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.214', 'GENERAL INFORMATION', 'Infidelity in the custody of Coop documents', '8-15 Days Suspension to Dismissal'),
(249, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.215', 'GENERAL INFORMATION', 'Without proper authority, releasing or divulging, leaking out or revealing confidential or classified information, technique, method and other legal and vital documents to unauthorized employees or persons', '8-15 Days Suspension to Dismissal'),
(250, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.216', 'GENERAL INFORMATION', 'False and misleading disclosures of Coop confidential records, information and documents to unauthorised persons or to the public', 'Dismissal'),
(251, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.217', 'GENERAL INFORMATION', 'Infringement of copyright', '31-60 Days Suspension to Dismissal'),
(252, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.218', 'TECHNICAL INFORMATION', 'Revealing of confidential knowledge, techniques and information (e.g. codes, passwords, among others)\nas a result of employment prejudicial to the operations of the Cooperative.', '8-15 Days Suspension to Dismissal'),
(253, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.219', 'TECHNICAL INFORMATION', 'All other acts that are prejudicial to operations of ZAMSURECO-I', '8-15 Days Suspension to Dismissal'),
(254, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.220', 'FINANCIAL INFORMATION', 'Leaking financial records and/or transactions to Coop stakeholders without the approval and consent of the Management', '31-60 Days Suspension to Dismissal'),
(255, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.221', 'FINANCIAL INFORMATION', 'Divulging Cooperative?s financial records and/or financial standing to interested parties without the knowledge and consent of the Management', '31-60 Days Suspension to Dismissal'),
(256, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.222', 'INSTITUTIONAL & INFORMATION COMMUNICATION TECHNOLOGY INFORMATION', 'Verbally divulging confidential employee information and documents or 201 records (e.g. personal data, work information, compensation & financial claims, health records, among others) to unauthorized persons or strangers without proper consent from the co', '8-15 Days Suspension to Dismissal'),
(257, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.223', 'INSTITUTIONAL & INFORMATION COMMUNICATION TECHNOLOGY INFORMATION', 'Releasing internal Institutional and ICT information to external parties without due authorization from the Management', '31-60 Days Suspension to Dismissal'),
(258, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.224', 'INSTITUTIONAL & INFORMATION COMMUNICATION TECHNOLOGY INFORMATION', 'Divulging member-consumer?s data and information to persons/entities without approval from the General Manager.\n(Pursuant to existing Memorandum No. 044, s. 2007)', '31-60 Days Suspension to Dismissal'),
(259, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.225', 'INSTITUTIONAL & INFORMATION COMMUNICATION TECHNOLOGY INFORMATION', 'Divulging and/or sharing coop ICT systems? passwords, codes, configurations and releasing ICT-related resources without approval from the General Manager.', '31-60 Days Suspension to Dismissal'),
(260, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.226', 'INSTITUTIONAL & INFORMATION COMMUNICATION TECHNOLOGY INFORMATION', 'Performing any techniques on hacking to gain unauthorized access of data and information and intrusion into ZAMSURECO-I computer, networks and systems.', 'Dismissal'),
(261, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.227', 'INSTITUTIONAL & INFORMATION COMMUNICATION TECHNOLOGY INFORMATION', 'Failure to comply with established data protection protocols or privacy laws or regulations as to the collection, usage, storage, retention, disposal and data transfer', 'Dismissal'),
(262, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.228', 'INSTITUTIONAL & INFORMATION COMMUNICATION TECHNOLOGY INFORMATION', 'Failure to accord respect to individual employee?s rights in relation to their personal information as well as the coop?s customers, business partners, suppliers, contacts, consultants and other stakeholders', '31-60 Days Suspension to Dismissal'),
(263, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.229', 'INSTITUTIONAL & INFORMATION COMMUNICATION TECHNOLOGY INFORMATION', 'Forwarding internal communications or sending confidential materials to persons/entities without the approval by the General Manager', '8-15 Days Suspension to Dismissal'),
(264, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.230', 'INSTITUTIONAL & INFORMATION COMMUNICATION TECHNOLOGY INFORMATION', 'Use or installation unauthorized of software or applications on official work computer and other devices or modification of Coop-owned software/applications/systems', '31-60 Days Suspension to Dismissal'),
(265, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.231', 'INSTITUTIONAL & INFORMATION COMMUNICATION TECHNOLOGY INFORMATION', 'Unauthorized use or access of Coop ICT related assets', '31-60 Days Suspension to Dismissal'),
(266, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.232', 'INTERNAL AUDIT INFORMATION', 'Divulging, sharing of audit reports, documents, and other data/information without the knowledge and approval of the General Manager', '8-15 Days Suspension to Dismissal'),
(267, 'XIV', 'DATA AND INFORMATION PRIVACY', '5.233', 'INTERNAL AUDIT INFORMATION', 'Releasing warehouse materials and critical information without the approval General Manager', '31-60 Days Suspension to Dismissal'),
(268, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.234', 'LIBEL, SLANDER AND DEFAMATORY STATEMENTS', 'Uttering, writing profanities, disrespectful language or acts, that tend to destroy, harm or cause shame to the name of the Cooperative', '31-60 Days Suspension to Dismissal'),
(269, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.235', 'LIBEL, SLANDER AND DEFAMATORY STATEMENTS', 'Uttering profanities, disrespectful language or displaying obscene acts, such as dirty finger, to a superior, coop officer or any member of the management', '31-60 Days Suspension to Dismissal'),
(270, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.236', 'LIBEL, SLANDER AND DEFAMATORY STATEMENTS', 'Uttering profanities, disrespectful language or displaying obscene acts, such as dirty finger towards co-workers other than coop officers, superiors or other members of the management', '31-60 Days Suspension to Dismissal'),
(271, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.237', 'LIBEL, SLANDER AND DEFAMATORY STATEMENTS', 'Committing subversive act, including the distribution of subversive materials within the coop premises', '31-60 Days Suspension to Dismissal'),
(272, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.238', 'LIBEL, SLANDER AND DEFAMATORY STATEMENTS', 'Slander.\nSpreading false or malicious information about the Cooperative programs and activities', '31-60 Days Suspension to Dismissal'),
(273, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.239', 'LIBEL, SLANDER AND DEFAMATORY STATEMENTS', 'Slander.\nSpreading false or malicious information about the Cooperative employees and officers', '31-60 Days Suspension to Dismissal'),
(274, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.240', 'LIBEL, SLANDER AND DEFAMATORY STATEMENTS', 'Grave threat', '31-60 Days Suspension to Dismissal'),
(275, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.241', 'ANTI-BULLYING IN THE WORKPLACE', 'Verbal bullying\n? Slandering, ridiculing or maligning a co-employee or his or her family; persistent name calling that is hurtful, insulting or humiliating; using co-employee as butt of jokes; abusive and offensive remarks', '31-60 Days Suspension to Dismissal'),
(276, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.242', 'ANTI-BULLYING IN THE WORKPLACE', 'Physical bullying\n? Pushing, shoving, kicking, poking, tripping, assault or threat of physical assault, damage to a co-employee?s work area or property', '31-60 Days Suspension to Dismissal'),
(277, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.243', 'ANTI-BULLYING IN THE WORKPLACE', 'Gesture bullying\n? Nonverbal threatening gestures; glances that can convey threatening messages', 'Warning to Dismissal'),
(278, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.244', 'VERBAL & PHYSICAL VIOLENCE', 'Fighting, provoking or instigating another employee/s to engage in a fight,', '31-60 Days Suspension to Dismissal'),
(279, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.245', 'VERBAL & PHYSICAL VIOLENCE', 'Engaging in horseplay, or using abusive language during working time, or within ZAMSURECO-I premises', '31-60 Days Suspension to Dismissal'),
(280, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.246', 'VERBAL & PHYSICAL VIOLENCE', 'Intentionally creating false or malicious statements or planting evidence against another employee, unduly imputing a crime or the commission of non offense under this Code against the latter', '31-60 Days Suspension to Dismissal'),
(281, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.247', 'VERBAL & PHYSICAL VIOLENCE', 'Evading responsibility and penalties imposed for the commission of an offense under this Code of Ethics and Discipline (CEDE) through rendering AWOL', 'Dismissal'),
(282, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.248', 'VERBAL & PHYSICAL VIOLENCE', 'Possession by an employee of explosives, firearms, bladed or other deadly weapons of any kind or other dangerous or hazardous device or substance within ZAMSURECO-I premises or coop leased facilities, unless otherwise necessary and legally authorized in w', '31-60 Days Suspension to Dismissal'),
(283, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.249', 'VERBAL & PHYSICAL VIOLENCE', 'Discharging of explosives or firearms within ZAMSURECO-premises', 'Dismissal'),
(284, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.250.1', 'VERBAL & PHYSICAL VIOLENCE', 'Committing prohibited conduct, or behaviors whether made in person or through telephone, e-mails, text messages, letters or through any form of electronic or other communication media, such as but not limited to the following:\n?  Engaging in behavior that', '31-60 Days Suspension to Dismissal'),
(285, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.250.2', 'VERBAL & PHYSICAL VIOLENCE', 'Committing prohibited conduct, or behaviors whether made in person or through telephone, e-mails, text messages, letters or through any form of electronic or other communication media, such as but not limited to the following:\n? Making or sending threaten', '31-60 Days Suspension to Dismissal'),
(286, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.250.3', 'VERBAL & PHYSICAL VIOLENCE', 'Committing prohibited conduct, or behaviors whether made in person or through telephone, e-mails, text messages, letters or through any form of electronic or other communication media, such as but not limited to the following:\n? Engaging in aggressive, th', '31-60 Days Suspension to Dismissal'),
(287, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.250.4', 'VERBAL & PHYSICAL VIOLENCE', 'Committing prohibited conduct, or behaviors whether made in person or through telephone, e-mails, text messages, letters or through any form of electronic or other communication media, such as but not limited to the following:\n? Engaging in behavior that ', '31-60 Days Suspension to Dismissal'),
(288, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.250.5', 'VERBAL & PHYSICAL VIOLENCE', 'Committing prohibited conduct, or behaviors whether made in person or through telephone, e-mails, text messages, letters or through any form of electronic or other communication media, such as but not limited to the following:\n? Engaging instalking or Una', '31-60 Days Suspension to Dismissal'),
(289, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.250.6', 'VERBAL & PHYSICAL VIOLENCE', 'Committing prohibited conduct, or behaviors whether made in person or through telephone, e-mails, text messages, letters or through any form of electronic or other communication media, such as but not limited to the following:\n? Intriguing against another', '31-60 Days Suspension to Dismissal'),
(290, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.251', 'VERBAL & PHYSICAL VIOLENCE', 'Assaulting, inflicting bodily harm or injury to another person in any form inside the premises or during working time.', 'Dismissal'),
(291, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.252', 'VERBAL & PHYSICAL VIOLENCE', 'Attempting to inflict bodily harm or injury to another person in any form inside the premises or during working time.', '31-60 Days Suspension to Dismissal'),
(292, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.253', 'VERBAL & PHYSICAL VIOLENCE', 'Sabotage (as defined in the Revised Penal Code and existing laws)', 'Dismissal'),
(293, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.254', 'VERBAL & PHYSICAL VIOLENCE', 'Blackmail or extortion', 'Dismissal'),
(294, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.255', 'VERBAL & PHYSICAL VIOLENCE', 'Rape', 'Dismissal'),
(295, 'XV', 'ANTI-VIOLENCE IN THE WORKPLACE', '5.256', 'VERBAL & PHYSICAL VIOLENCE', 'Other acts that endangers the interest, property of the Coop and lives of employees and other stakeholders', '31-60 Days Suspension to Dismissal'),
(296, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.257', 'ALCOHOL-FREE WORKPLACE', 'Entering ZAMSURECO-I premises under the influence of liquor/alcohol', '31-60 Days Suspension to Dismissal'),
(297, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.258', 'ALCOHOL-FREE WORKPLACE', 'Possessing or supplying alcohol in the workplace/ Coop premises or leased facilities', '31-60 Days Suspension to Dismissal'),
(298, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.259', 'ALCOHOL-FREE WORKPLACE', 'Reporting for work under the influence of alcohol or performing work while under the influence of liquor', '31-60 Days Suspension to Dismissal'),
(299, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.260', 'ALCOHOL-FREE WORKPLACE', 'Reporting for work under the influence of illegal drugs or performing work while under the influence of narcotics', 'Dismissal'),
(300, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.261', 'ALCOHOL-FREE WORKPLACE', 'Consuming/Drinking of alcoholic beverages during working time in the workplace/Coop premises or leased offices/facilities except at Coop-authorized occasions.', '31-60 Days Suspension to Dismissal'),
(301, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.262', 'ALCOHOL-FREE WORKPLACE', 'Abuse of any dangerous drug substances while at work', 'Dismissal'),
(302, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.263', 'ALCOHOL-FREE WORKPLACE', 'Entering ZAMSURECO-I premises or performing work while under the influence of liquor or narcotics.', '31-60 Days Suspension to Dismissal'),
(303, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.264', 'ALCOHOL-FREE WORKPLACE', 'Drinking liqueur beverages while on duty', '31-60 Days Suspension to Dismissal'),
(304, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.265', 'ALCOHOL-FREE WORKPLACE', 'Any other acts which may tend to violate rules and regulations in relation to the above subject/s', '31-60 Days Suspension to Dismissal'),
(305, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.266', 'SMOKE-FREE WORKPLACE', 'Smoking within Coop vehicles or conveyances whether stationary or in motion', 'Warning to Dismissal'),
(306, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.267', 'SMOKE-FREE WORKPLACE', 'Smoking outside Coop designated smoking area', 'Warning to Dismissal'),
(307, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.268', 'SMOKE-FREE WORKPLACE', 'Smoking while on duty', '8-15 Days Suspension to Dismissal'),
(308, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.269', 'SMOKE-FREE WORKPLACE', 'Selling or distributing tobacco products in office premises and/or during working hours', '8-15 Days Suspension to Dismissal'),
(309, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.270', 'SMOKE-FREE WORKPLACE', 'Ordering, instructing or compelling a minor to use, light up, buy, sell distribute, deliver, advertise or promote tobacco products in the workplace', '8-15 Days Suspension to Dismissal'),
(310, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.271', 'SMOKE-FREE WORKPLACE', 'Placing, posting, distributing advertisement and promotional materials of tobacco products such as but not limited to leaflets, posters, display structures and other materials in the workplace', '8-15 Days Suspension to Dismissal'),
(311, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.272', 'DRUG-FREE WORKPLACE', 'Entering ZAMSURECO-I premises under the influence of narcotics/illegal drugs', 'Dismissal'),
(312, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.273', 'DRUG-FREE WORKPLACE', 'Reporting for work under the influence of illegal drugs or performing work while under the influence of narcotics', 'Dismissal'),
(313, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.274', 'DRUG-FREE WORKPLACE', 'Possessing, purchasing/buying, selling, attempted selling, supplying, distributing or manufacturing of illegal drugs in the workplace/ Coop premises or leased offices/facilities, including non-prescription controlled substances, as well as the abuse/misus', 'Dismissal'),
(314, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.275', 'DRUG-FREE WORKPLACE', 'Using of prohibited/regulated narcotic drugs in any form and quantity while performing tasks and conducting business with ZAMSURECO-I on or off the premises', 'Dismissal'),
(315, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.276', 'DRUG-FREE WORKPLACE', 'When as a result of Drug Test, being found positive in the use of any prohibited drugs', 'Dismissal'),
(316, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.277', 'DRUG-FREE WORKPLACE', 'Accomplice in drug transport inside ZAMSURECO-I premises', 'Dismissal'),
(317, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.278', 'DRUG-FREE WORKPLACE', 'Transport, use or have in his possession prohibited or banned materials', 'Dismissal'),
(318, 'XVI', 'ALCOHOL-FREE, SMOKE-FREE AND DRUG-FREE WORKPLACE', '5.279', 'DRUG-FREE WORKPLACE', 'Any other acts which may tend to violate rules and regulations in relation to the above subject/s', 'Dismissal'),
(319, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.280', 'DRUG-FREE WORKPLACE', 'Using slurs, disparaging remarks, off-color jokes, insults, vulgar language, epithets and teasing', 'Warning to Dismissal'),
(320, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.281', 'DRUG-FREE WORKPLACE', 'Persistently telling smutty jokes to a co-employee who has indicated them offensive', 'Warning to Dismissal'),
(321, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.282', 'DRUG-FREE WORKPLACE', 'Taunting a co-employee with constant talk or sexual innuendos', '8-15 Days Suspension to Dismissal'),
(322, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.283', 'DRUG-FREE WORKPLACE', 'Asking a co-employee intimate questions on his/her sexual activities', '8-15 Days Suspension to Dismissal'),
(323, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.284', 'DRUG-FREE WORKPLACE', 'Making obscene phone calls to a co-employee during and outside work hours', '8-15 Days Suspension to Dismissal'),
(324, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.285', 'DRUG-FREE WORKPLACE', 'Displaying offensive posters, pictures symbols, cartoons, drawings, writings, computer displays or e-mails', '8-15 Days Suspension to Dismissal'),
(325, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.286', 'DRUG-FREE WORKPLACE', 'Making offensive hand or body gestures at a co-employee; staring or leering at a co-employee', '31-60 Days Suspension to Dismissal'),
(326, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.287', 'DRUG-FREE WORKPLACE', 'Unwelcome physical contact such as hugging, kissing, grabbing pinching, patting or unnecessarily brushing up against a co-employee?s body', '31-60 Days Suspension to Dismissal'),
(327, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.288', 'DRUG-FREE WORKPLACE', 'Requesting for dates or favors in exchange for a job, favorable working conditions or assignments', 'Dismissal'),
(328, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.289', 'DRUG-FREE WORKPLACE', 'Touching a co-employee in sensitive parts or his/her body, threats of a sexual nature and actual sexual assault', 'Dismissal'),
(329, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.290', 'DRUG-FREE WORKPLACE', 'Threatening another person or intentionally blocking someone?s way', '31-60 Days Suspension to Dismissal'),
(330, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.291', 'DRUG-FREE WORKPLACE', 'Committing unwelcome propositions, demands or advances of a sexual nature', '31-60 Days Suspension to Dismissal'),
(331, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.292', 'DRUG-FREE WORKPLACE', 'Committing inappropriate remarks about a person?s body or appearance, sexual gestures, or comments or unwanted verbal or physical flirtation', '31-60 Days Suspension to Dismissal'),
(332, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.293', 'DRUG-FREE WORKPLACE', 'Committing, showing or expressing vulgar or obscene gestures, language or comments', '8-15 Days Suspension to Dismissal'),
(333, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.294', 'DRUG-FREE WORKPLACE', 'On working time, or within ZAMSURECO-I premises, using abusive, threatening or profane language to fellow workers/supervisors', '31-60 Days Suspension to Dismissal'),
(334, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.295', 'DRUG-FREE WORKPLACE', 'Insult, use of foul language, disrespect or discourtesy towards member-consumers', '31-60 Days Suspension to Dismissal'),
(335, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.296', 'DRUG-FREE WORKPLACE', 'Engaging in any conduct where the purpose or effect of such conduct creates an intimidating, hostile or offensive work environment or unreasonably interferes with an individual?s work performance', '8-15 Days Suspension to Dismissal'),
(336, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.297', 'DRUG-FREE WORKPLACE', 'Accessing, sending or downloading inappropriate content or information that could be offensive, insulting, derogatory, or harassing to another person, such as sexually-explicit messages, jokes or ethnic racial slurs', 'Dismissal'),
(337, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.298.1', 'GENDER SENSITIVE WORKPLACE', 'Any employee, having authority, influence or moral ascendancy over a subordinate, co-employee, agent or other person, who shall demand, request or otherwise require any sexual favor from such other person, regardless of whether the demand, request or requ', 'Dismissal'),
(338, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.298.2', 'GENDER SENSITIVE WORKPLACE', 'Any employee, having authority, influence or moral ascendancy over a subordinate, co-employee, agent or other person, who shall demand, request or otherwise require any sexual favor from such other person, regardless of whether the demand, request or requ', 'Dismissal'),
(339, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.298.3', 'GENDER SENSITIVE WORKPLACE', 'Any employee, having authority, influence or moral ascendancy over a subordinate, co-employee, agent or other person, who shall demand, request or otherwise require any sexual favor from such other person, regardless of whether the demand, request or requ', 'Dismissal'),
(340, 'XVII', 'ANTI-HARASSMENT IN THE WORKPLACE', '5.298.4', 'GENDER SENSITIVE WORKPLACE', 'Any employee, having authority, influence or moral ascendancy over a subordinate, co-employee, agent or other person, who shall demand, request or otherwise require any sexual favor from such other person, regardless of whether the demand, request or requ', 'Dismissal'),
(341, 'XVIII', 'RELATIONSHIP WITH COMMUNITY', '5.299', '', 'Committed a criminal liability and convicted in the lower Courts (convicted)', 'Dismissal'),
(342, 'XVIII', 'RELATIONSHIP WITH COMMUNITY', '5.300', '', 'Committed or has an existing civil liability as adjudged by the Courts', 'Warning to Dismissal'),
(343, 'XIX', 'RESIGNATION / RETIREMENT', '5.301', '', 'Failure on the part of the resigning/retiring employee to serve advance written notice to the Cooperative at least thirty (30) days before the date he/she intends to leave service', 'Fine equivalent to 15 days salary'),
(344, 'XIX', 'RESIGNATION / RETIREMENT', '5.302', '', 'Unjustified refusal of the resigning/retiring employee to continue or render actual service within the grace period prior to his/her retirement effectivity date', 'Fine equivalent to 15 days salary'),
(345, 'XIX', 'RESIGNATION / RETIREMENT', '5.303', '', 'Failure to turn-over tools, gadgets and paraphernalia upon retirement', 'Fine equivalent to cost of materials'),
(346, 'XIX', 'RESIGNATION / RETIREMENT', '5.304', '', 'Failure to turn-over office documents and files upon retirement within 3 years upon retirement effectivity date', 'Forfeiture of retirement benefits'),
(347, 'XIX', 'RESIGNATION / RETIREMENT', '5.305', '', 'Failure to personally conduct employee clearance within 3-year from effective date of resignation/retirement from service unless otherwise physically incapacitated do so', 'Subject to Non-clearance and automatic termination/forfeiture of retirement benefits');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `recordNo` int(11) NOT NULL,
  `memo_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date_created` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `empid` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_lever` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`empid`, `username`, `password`, `user_lever`) VALUES
('457', 'admin', '123456', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`attachID`,`attachCode`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `noticetoexplain`
--
ALTER TABLE `noticetoexplain`
  ADD PRIMARY KEY (`memo_no`);

--
-- Indexes for table `nte_penalty`
--
ALTER TABLE `nte_penalty`
  ADD PRIMARY KEY (`penaltyNo`,`RecordNo`);

--
-- Indexes for table `offensesnpenalty`
--
ALTER TABLE `offensesnpenalty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`recordNo`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `attachID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nte_penalty`
--
ALTER TABLE `nte_penalty`
  MODIFY `penaltyNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offensesnpenalty`
--
ALTER TABLE `offensesnpenalty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `recordNo` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
