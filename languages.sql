-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 07:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `world`
--

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `country_code` char(3) NOT NULL DEFAULT '',
  `language` char(30) NOT NULL DEFAULT '',
  `official` enum('T','F') NOT NULL DEFAULT 'F',
  `percentage` float(4,1) NOT NULL DEFAULT 0.0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`country_code`, `language`, `official`, `percentage`) VALUES
('AFG', 'Pashto', 'T', 52.4),
('NLD', 'Dutch', 'T', 95.6),
('ANT', 'Papiamento', 'T', 86.2),
('ALB', 'Albaniana', 'T', 97.9),
('DZA', 'Arabic', 'T', 86.0),
('ASM', 'Samoan', 'T', 90.6),
('AND', 'Spanish', 'F', 44.6),
('AGO', 'Ovimbundu', 'F', 37.2),
('AIA', 'English', 'T', 0.0),
('ATG', 'Creole English', 'F', 95.7),
('ARE', 'Arabic', 'T', 42.0),
('ARG', 'Spanish', 'T', 96.8),
('ARM', 'Armenian', 'T', 93.4),
('ABW', 'Papiamento', 'F', 76.7),
('AUS', 'English', 'T', 81.2),
('AZE', 'Azerbaijani', 'T', 89.0),
('BHS', 'Creole English', 'F', 89.7),
('BHR', 'Arabic', 'T', 67.7),
('BGD', 'Bengali', 'T', 97.7),
('BRB', 'Bajan', 'F', 95.1),
('BEL', 'Dutch', 'T', 59.2),
('BLZ', 'English', 'T', 50.8),
('BEN', 'Fon', 'F', 39.8),
('BMU', 'English', 'T', 100.0),
('BTN', 'Dzongkha', 'T', 50.0),
('BOL', 'Spanish', 'T', 87.7),
('BIH', 'Serbo-Croatian', 'T', 99.2),
('BWA', 'Tswana', 'F', 75.5),
('BRA', 'Portuguese', 'T', 97.5),
('GBR', 'English', 'T', 97.3),
('VGB', 'English', 'T', 0.0),
('BRN', 'Malay', 'T', 45.5),
('BGR', 'Bulgariana', 'T', 83.2),
('BFA', 'Mossi', 'F', 50.2),
('BDI', 'Kirundi', 'T', 98.1),
('CYM', 'English', 'T', 0.0),
('CHL', 'Spanish', 'T', 89.7),
('COK', 'Maori', 'T', 0.0),
('CRI', 'Spanish', 'T', 97.5),
('DJI', 'Somali', 'F', 43.9),
('DMA', 'Creole English', 'F', 100.0),
('DOM', 'Spanish', 'T', 98.0),
('ECU', 'Spanish', 'T', 93.0),
('EGY', 'Arabic', 'T', 98.8),
('SLV', 'Spanish', 'T', 100.0),
('ERI', 'Tigrinja', 'T', 49.1),
('ESP', 'Spanish', 'T', 74.4),
('ZAF', 'Zulu', 'T', 22.7),
('ETH', 'Oromo', 'F', 31.0),
('FLK', 'English', 'T', 0.0),
('FJI', 'Fijian', 'T', 50.8),
('PHL', 'Pilipino', 'T', 29.3),
('FRO', 'Faroese', 'T', 100.0),
('GAB', 'Fang', 'F', 35.8),
('GMB', 'Malinke', 'F', 34.1),
('GEO', 'Georgiana', 'T', 71.7),
('GHA', 'Akan', 'F', 52.4),
('GIB', 'English', 'T', 88.9),
('GRD', 'Creole English', 'F', 100.0),
('GRL', 'Greenlandic', 'T', 87.5),
('GLP', 'Creole French', 'F', 95.0),
('GUM', 'English', 'T', 37.5),
('GTM', 'Spanish', 'T', 64.7),
('GIN', 'Ful', 'F', 38.6),
('GNB', 'Crioulo', 'F', 36.4),
('GUY', 'Creole English', 'F', 96.4),
('HTI', 'Haiti Creole', 'F', 100.0),
('HND', 'Spanish', 'T', 97.2),
('HKG', 'Canton Chinese', 'F', 88.7),
('SJM', 'Norwegian', 'T', 0.0),
('IDN', 'Javanese', 'F', 39.4),
('IND', 'Hindi', 'T', 39.9),
('IRQ', 'Arabic', 'T', 77.2),
('IRN', 'Persian', 'T', 45.7),
('IRL', 'English', 'T', 98.4),
('ISL', 'Icelandic', 'T', 95.7),
('ISR', 'Hebrew', 'T', 63.1),
('ITA', 'Italian', 'T', 94.1),
('TMP', 'Sunda', 'F', 0.0),
('AUT', 'German', 'T', 92.0),
('JAM', 'Creole English', 'F', 94.2),
('JPN', 'Japanese', 'T', 99.1),
('YEM', 'Arabic', 'T', 99.6),
('JOR', 'Arabic', 'T', 97.9),
('CXR', 'Chinese', 'F', 0.0),
('YUG', 'Serbo-Croatian', 'T', 75.2),
('KHM', 'Khmer', 'T', 88.6),
('CMR', 'Fang', 'F', 19.7),
('CAN', 'English', 'T', 60.4),
('CPV', 'Crioulo', 'F', 100.0),
('KAZ', 'Kazakh', 'T', 46.0),
('KEN', 'Kikuyu', 'F', 20.9),
('CAF', 'Gbaya', 'F', 23.8),
('CHN', 'Chinese', 'T', 92.0),
('KGZ', 'Kirgiz', 'T', 59.7),
('KIR', 'Kiribati', 'T', 98.9),
('COL', 'Spanish', 'T', 99.0),
('COM', 'Comorian', 'T', 75.0),
('COG', 'Kongo', 'F', 51.5),
('COD', 'Luba', 'F', 18.0),
('CCK', 'Malay', 'F', 0.0),
('PRK', 'Korean', 'T', 99.9),
('KOR', 'Korean', 'T', 99.9),
('GRC', 'Greek', 'T', 98.5),
('HRV', 'Serbo-Croatian', 'T', 95.9),
('CUB', 'Spanish', 'T', 100.0),
('KWT', 'Arabic', 'T', 78.1),
('CYP', 'Greek', 'T', 74.1),
('LAO', 'Lao', 'T', 67.2),
('LVA', 'Latvian', 'T', 55.1),
('LSO', 'Sotho', 'T', 85.0),
('LBN', 'Arabic', 'T', 93.0),
('LBR', 'Kpelle', 'F', 19.5),
('LBY', 'Arabic', 'T', 96.0),
('LIE', 'German', 'T', 89.0),
('LTU', 'Lithuanian', 'T', 81.6),
('LUX', 'Luxembourgish', 'T', 64.4),
('ESH', 'Arabic', 'T', 100.0),
('MAC', 'Canton Chinese', 'F', 85.6),
('MDG', 'Malagasy', 'T', 98.9),
('MKD', 'Macedonian', 'T', 66.5),
('MWI', 'Chichewa', 'T', 58.3),
('MDV', 'Dhivehi', 'T', 100.0),
('MYS', 'Malay', 'T', 58.4),
('MLI', 'Bambara', 'F', 31.8),
('MLT', 'Maltese', 'T', 95.8),
('MAR', 'Arabic', 'T', 65.0),
('MHL', 'Marshallese', 'T', 96.8),
('MTQ', 'Creole French', 'F', 96.6),
('MRT', 'Hassaniya', 'F', 81.7),
('MUS', 'Creole French', 'F', 70.6),
('MYT', 'Mahoré', 'F', 41.9),
('MEX', 'Spanish', 'T', 92.1),
('FSM', 'Trukese', 'F', 41.6),
('MDA', 'Romanian', 'T', 61.9),
('MCO', 'French', 'T', 41.9),
('MNG', 'Mongolian', 'T', 78.8),
('MSR', 'English', 'T', 0.0),
('MOZ', 'Makua', 'F', 27.8),
('MMR', 'Burmese', 'T', 69.0),
('NAM', 'Ovambo', 'F', 50.7),
('NRU', 'Nauru', 'T', 57.5),
('NPL', 'Nepali', 'T', 50.4),
('NIC', 'Spanish', 'T', 97.6),
('NER', 'Hausa', 'F', 53.1),
('NGA', 'Joruba', 'F', 21.4),
('NIU', 'Niue', 'F', 0.0),
('NFK', 'English', 'T', 0.0),
('NOR', 'Norwegian', 'T', 96.6),
('CIV', 'Akan', 'F', 30.0),
('OMN', 'Arabic', 'T', 76.7),
('PAK', 'Punjabi', 'F', 48.2),
('PLW', 'Palau', 'T', 82.2),
('PAN', 'Spanish', 'T', 76.8),
('PNG', 'Papuan Languages', 'F', 78.1),
('PRY', 'Spanish', 'T', 55.1),
('PER', 'Spanish', 'T', 79.8),
('PCN', 'Pitcairnese', 'F', 0.0),
('MNP', 'Philippene Languages', 'F', 34.1),
('PRT', 'Portuguese', 'T', 99.0),
('PRI', 'Spanish', 'T', 51.3),
('POL', 'Polish', 'T', 97.6),
('GNQ', 'Fang', 'F', 84.8),
('QAT', 'Arabic', 'T', 40.7),
('FRA', 'French', 'T', 93.6),
('GUF', 'Creole French', 'F', 94.3),
('PYF', 'Tahitian', 'F', 46.4),
('REU', 'Creole French', 'F', 91.5),
('ROM', 'Romanian', 'T', 90.7),
('RWA', 'Rwanda', 'T', 100.0),
('SWE', 'Swedish', 'T', 89.5),
('SHN', 'English', 'T', 0.0),
('KNA', 'Creole English', 'F', 100.0),
('LCA', 'Creole French', 'F', 80.0),
('VCT', 'Creole English', 'F', 99.1),
('SPM', 'French', 'T', 0.0),
('DEU', 'German', 'T', 91.3),
('SLB', 'Malenasian Languages', 'F', 85.6),
('ZMB', 'Bemba', 'F', 29.7),
('WSM', 'Samoan-English', 'F', 52.0),
('SMR', 'Italian', 'T', 100.0),
('STP', 'Crioulo', 'F', 86.3),
('SAU', 'Arabic', 'T', 95.0),
('SEN', 'Wolof', 'T', 48.1),
('SYC', 'Seselwa', 'F', 91.3),
('SLE', 'Mende', 'F', 34.8),
('SGP', 'Chinese', 'T', 77.1),
('SVK', 'Slovak', 'T', 85.6),
('SVN', 'Slovene', 'T', 87.9),
('SOM', 'Somali', 'T', 98.3),
('LKA', 'Singali', 'T', 60.3),
('SDN', 'Arabic', 'T', 49.4),
('FIN', 'Finnish', 'T', 92.7),
('SUR', 'Sranantonga', 'F', 81.0),
('SWZ', 'Swazi', 'T', 89.9),
('CHE', 'German', 'T', 63.6),
('SYR', 'Arabic', 'T', 90.0),
('TJK', 'Tadzhik', 'T', 62.2),
('TWN', 'Min', 'F', 66.7),
('TZA', 'Nyamwesi', 'F', 21.1),
('DNK', 'Danish', 'T', 93.5),
('THA', 'Thai', 'T', 52.6),
('TGO', 'Ewe', 'T', 23.2),
('TKL', 'Tokelau', 'F', 0.0),
('TON', 'Tongan', 'T', 98.3),
('TTO', 'English', 'F', 93.5),
('TCD', 'Sara', 'F', 27.7),
('CZE', 'Czech', 'T', 81.2),
('TUN', 'Arabic', 'T', 69.9),
('TUR', 'Turkish', 'T', 87.6),
('TKM', 'Turkmenian', 'T', 76.7),
('TCA', 'English', 'T', 0.0),
('TUV', 'Tuvalu', 'T', 92.5),
('UGA', 'Ganda', 'F', 18.1),
('UKR', 'Ukrainian', 'T', 64.7),
('HUN', 'Hungarian', 'T', 98.5),
('URY', 'Spanish', 'T', 95.7),
('NCL', 'Malenasian Languages', 'F', 45.4),
('NZL', 'English', 'T', 87.0),
('UZB', 'Uzbek', 'T', 72.6),
('BLR', 'Belorussian', 'T', 65.6),
('WLF', 'Wallis', 'F', 0.0),
('VUT', 'Bislama', 'T', 56.6),
('VAT', 'Italian', 'T', 0.0),
('VEN', 'Spanish', 'T', 96.9),
('RUS', 'Russian', 'T', 86.6),
('VNM', 'Vietnamese', 'T', 86.8),
('EST', 'Estonian', 'T', 65.3),
('USA', 'English', 'T', 86.2),
('VIR', 'English', 'T', 81.7),
('UMI', 'English', 'T', 0.0),
('ZWE', 'Shona', 'F', 72.1),
('PSE', 'Arabic', 'F', 95.9),
('AFG', 'Dari', 'T', 32.1),
('NLD', 'Fries', 'F', 3.7),
('ANT', 'English', 'F', 7.8),
('ALB', 'Greek', 'F', 1.8),
('DZA', 'Berberi', 'F', 14.0),
('ASM', 'English', 'T', 3.1),
('AND', 'Catalan', 'T', 32.3),
('AGO', 'Mbundu', 'F', 21.6),
('ATG', 'English', 'T', 0.0),
('ARE', 'Hindi', 'F', 0.0),
('ARG', 'Italian', 'F', 1.7),
('ARM', 'Azerbaijani', 'F', 2.6),
('ABW', 'English', 'F', 9.5),
('AUS', 'Italian', 'F', 2.2),
('AZE', 'Russian', 'F', 3.0),
('BHS', 'Creole French', 'F', 10.3),
('BHR', 'English', 'F', 0.0),
('BGD', 'Chakma', 'F', 0.4),
('BRB', 'English', 'T', 0.0),
('BEL', 'French', 'T', 32.6),
('BLZ', 'Spanish', 'F', 31.6),
('BEN', 'Joruba', 'F', 12.2),
('BTN', 'Nepali', 'F', 34.8),
('BOL', 'Ketšua', 'T', 8.1),
('BWA', 'Shona', 'F', 12.3),
('BRA', 'German', 'F', 0.5),
('GBR', 'Kymri', 'F', 0.9),
('BRN', 'Malay-English', 'F', 28.8),
('BGR', 'Turkish', 'F', 9.4),
('BFA', 'Ful', 'F', 9.7),
('BDI', 'French', 'T', 0.0),
('CHL', 'Araucan', 'F', 9.6),
('COK', 'English', 'F', 0.0),
('CRI', 'Creole English', 'F', 2.0),
('DJI', 'Afar', 'F', 34.8),
('DMA', 'Creole French', 'F', 0.0),
('DOM', 'Creole French', 'F', 2.0),
('ECU', 'Ketšua', 'F', 7.0),
('EGY', 'Sinaberberi', 'F', 0.0),
('SLV', 'Nahua', 'F', 0.0),
('ERI', 'Tigre', 'F', 31.7),
('ESP', 'Catalan', 'F', 16.9),
('ZAF', 'Xhosa', 'T', 17.7),
('ETH', 'Amhara', 'F', 30.0),
('FJI', 'Hindi', 'F', 43.7),
('PHL', 'Cebuano', 'F', 23.3),
('FRO', 'Danish', 'T', 0.0),
('GAB', 'Punu-sira-nzebi', 'F', 17.1),
('GMB', 'Ful', 'F', 16.2),
('GEO', 'Russian', 'F', 8.8),
('GHA', 'Mossi', 'F', 15.8),
('GIB', 'Arabic', 'F', 7.4),
('GRL', 'Danish', 'T', 12.5),
('GLP', 'French', 'T', 0.0),
('GUM', 'Chamorro', 'T', 29.6),
('GTM', 'Quiché', 'F', 10.1),
('GIN', 'Malinke', 'F', 23.2),
('GNB', 'Ful', 'F', 16.6),
('GUY', 'Caribbean', 'F', 2.2),
('HTI', 'French', 'T', 0.0),
('HND', 'Garifuna', 'F', 1.3),
('HKG', 'English', 'T', 2.2),
('SJM', 'Russian', 'F', 0.0),
('IDN', 'Sunda', 'F', 15.8),
('IND', 'Bengali', 'F', 8.2),
('IRQ', 'Kurdish', 'F', 19.0),
('IRN', 'Azerbaijani', 'F', 16.8),
('IRL', 'Irish', 'T', 1.6),
('ISL', 'English', 'F', 0.0),
('ISR', 'Arabic', 'T', 18.0),
('ITA', 'Sardinian', 'F', 2.7),
('TMP', 'Portuguese', 'T', 0.0),
('AUT', 'Serbo-Croatian', 'F', 2.2),
('JAM', 'Hindi', 'F', 1.9),
('JPN', 'Korean', 'F', 0.5),
('YEM', 'Soqutri', 'F', 0.0),
('JOR', 'Circassian', 'F', 1.0),
('CXR', 'English', 'T', 0.0),
('YUG', 'Albaniana', 'F', 16.5),
('KHM', 'Vietnamese', 'F', 5.5),
('CMR', 'Bamileke-bamum', 'F', 18.6),
('CAN', 'French', 'T', 23.4),
('CPV', 'Portuguese', 'T', 0.0),
('KAZ', 'Russian', 'F', 34.7),
('KEN', 'Luhya', 'F', 13.8),
('CAF', 'Banda', 'F', 23.5),
('CHN', 'Zhuang', 'F', 1.4),
('KGZ', 'Russian', 'T', 16.2),
('KIR', 'Tuvalu', 'F', 0.5),
('COL', 'Chibcha', 'F', 0.4),
('COM', 'Comorian-French', 'F', 12.9),
('COG', 'Teke', 'F', 17.3),
('COD', 'Kongo', 'F', 16.0),
('CCK', 'English', 'T', 0.0),
('PRK', 'Chinese', 'F', 0.1),
('KOR', 'Chinese', 'F', 0.1),
('GRC', 'Turkish', 'F', 0.9),
('HRV', 'Slovene', 'F', 0.0),
('KWT', 'English', 'F', 0.0),
('CYP', 'Turkish', 'T', 22.4),
('LAO', 'Mon-khmer', 'F', 16.5),
('LVA', 'Russian', 'F', 32.5),
('LSO', 'Zulu', 'F', 15.0),
('LBN', 'Armenian', 'F', 5.9),
('LBR', 'Bassa', 'F', 13.7),
('LBY', 'Berberi', 'F', 1.0),
('LIE', 'Italian', 'F', 2.5),
('LTU', 'Russian', 'F', 8.1),
('LUX', 'Portuguese', 'F', 13.0),
('MAC', 'Portuguese', 'T', 2.3),
('MDG', 'French', 'T', 0.0),
('MKD', 'Albaniana', 'F', 22.9),
('MWI', 'Lomwe', 'F', 18.4),
('MDV', 'English', 'F', 0.0),
('MYS', 'Chinese', 'F', 9.0),
('MLI', 'Ful', 'F', 13.9),
('MLT', 'English', 'T', 2.1),
('MAR', 'Berberi', 'F', 33.0),
('MHL', 'English', 'T', 0.0),
('MTQ', 'French', 'T', 0.0),
('MRT', 'Wolof', 'F', 6.6),
('MUS', 'Bhojpuri', 'F', 21.1),
('MYT', 'French', 'T', 20.3),
('MEX', 'Náhuatl', 'F', 1.8),
('FSM', 'Pohnpei', 'F', 23.8),
('MDA', 'Russian', 'F', 23.2),
('MCO', 'Monegasque', 'F', 16.1),
('MNG', 'Kazakh', 'F', 5.9),
('MOZ', 'Tsonga', 'F', 12.4),
('MMR', 'Shan', 'F', 8.5),
('NAM', 'Nama', 'F', 12.4),
('NRU', 'Kiribati', 'F', 17.9),
('NPL', 'Maithili', 'F', 11.9),
('NIC', 'Miskito', 'F', 1.6),
('NER', 'Songhai-zerma', 'F', 21.2),
('NGA', 'Hausa', 'F', 21.1),
('NIU', 'English', 'T', 0.0),
('NOR', 'English', 'F', 0.5),
('CIV', 'Gur', 'F', 11.7),
('OMN', 'Balochi', 'F', 0.0),
('PAK', 'Pashto', 'F', 13.1),
('PLW', 'Philippene Languages', 'F', 9.2),
('PAN', 'Creole English', 'F', 14.0),
('PNG', 'Malenasian Languages', 'F', 20.0),
('PRY', 'Guaraní', 'T', 40.1),
('PER', 'Ketšua', 'T', 16.4),
('MNP', 'Chamorro', 'F', 30.0),
('PRI', 'English', 'F', 47.4),
('POL', 'German', 'F', 1.3),
('GNQ', 'Bubi', 'F', 8.7),
('QAT', 'Urdu', 'F', 0.0),
('FRA', 'Arabic', 'F', 2.5),
('GUF', 'Indian Languages', 'F', 1.9),
('PYF', 'French', 'T', 40.8),
('REU', 'Chinese', 'F', 2.8),
('ROM', 'Hungarian', 'F', 7.2),
('RWA', 'French', 'T', 0.0),
('SWE', 'Finnish', 'F', 2.4),
('KNA', 'English', 'T', 0.0),
('LCA', 'English', 'T', 20.0),
('VCT', 'English', 'T', 0.0),
('DEU', 'Turkish', 'F', 2.6),
('SLB', 'Papuan Languages', 'F', 8.6),
('ZMB', 'Tongan', 'F', 11.0),
('WSM', 'Samoan', 'T', 47.5),
('STP', 'French', 'F', 0.7),
('SEN', 'Ful', 'F', 21.7),
('SYC', 'English', 'T', 3.8),
('SLE', 'Temne', 'F', 31.8),
('SGP', 'Malay', 'T', 14.1),
('SVK', 'Hungarian', 'F', 10.5),
('SVN', 'Serbo-Croatian', 'F', 7.9),
('SOM', 'Arabic', 'T', 0.0),
('LKA', 'Tamil', 'T', 19.6),
('SDN', 'Dinka', 'F', 11.5),
('FIN', 'Swedish', 'T', 5.7),
('SUR', 'Hindi', 'F', 0.0),
('SWZ', 'Zulu', 'F', 2.0),
('CHE', 'French', 'T', 19.2),
('SYR', 'Kurdish', 'F', 9.0),
('TJK', 'Uzbek', 'F', 23.2),
('TWN', 'Mandarin Chinese', 'T', 20.1),
('TZA', 'Swahili', 'T', 8.8),
('DNK', 'Turkish', 'F', 0.8),
('THA', 'Lao', 'F', 26.9),
('TGO', 'Kabyé', 'T', 13.8),
('TKL', 'English', 'T', 0.0),
('TON', 'English', 'T', 0.0),
('TTO', 'Hindi', 'F', 3.4),
('TCD', 'Arabic', 'T', 12.3),
('CZE', 'Moravian', 'F', 12.9),
('TUN', 'Arabic-French', 'F', 26.3),
('TUR', 'Kurdish', 'F', 10.6),
('TKM', 'Uzbek', 'F', 9.2),
('TUV', 'Kiribati', 'F', 7.5),
('UGA', 'Nkole', 'F', 10.7),
('UKR', 'Russian', 'F', 32.9),
('HUN', 'Romani', 'F', 0.5),
('NCL', 'French', 'T', 34.3),
('NZL', 'Maori', 'F', 4.3),
('UZB', 'Russian', 'F', 10.9),
('BLR', 'Russian', 'T', 32.0),
('WLF', 'Futuna', 'F', 0.0),
('VUT', 'English', 'T', 28.3),
('VEN', 'Goajiro', 'F', 0.4),
('RUS', 'Tatar', 'F', 3.2),
('VNM', 'Tho', 'F', 1.8),
('EST', 'Russian', 'F', 27.8),
('USA', 'Spanish', 'F', 7.5),
('VIR', 'Spanish', 'F', 13.3),
('ZWE', 'Ndebele', 'F', 16.2),
('PSE', 'Hebrew', 'F', 4.1),
('AFG', 'Uzbek', 'F', 8.8),
('NLD', 'Arabic', 'F', 0.9),
('ANT', 'Dutch', 'T', 0.0),
('ALB', 'Macedonian', 'F', 0.1),
('ASM', 'Tongan', 'F', 3.1),
('AND', 'Portuguese', 'F', 10.8),
('AGO', 'Kongo', 'F', 13.2),
('ARG', 'Indian Languages', 'F', 0.3),
('ABW', 'Spanish', 'F', 7.4),
('AUS', 'Greek', 'F', 1.6),
('AZE', 'Lezgian', 'F', 2.3),
('BGD', 'Marma', 'F', 0.2),
('BEL', 'Italian', 'F', 2.4),
('BLZ', 'Maya Languages', 'F', 9.6),
('BEN', 'Adja', 'F', 11.1),
('BTN', 'Asami', 'F', 15.2),
('BOL', 'Aimará', 'T', 3.2),
('BWA', 'San', 'F', 3.5),
('BRA', 'Italian', 'F', 0.4),
('GBR', 'Gaeli', 'F', 0.1),
('BRN', 'Chinese', 'F', 9.3),
('BGR', 'Romani', 'F', 3.7),
('BFA', 'Gurma', 'F', 5.7),
('BDI', 'Swahili', 'F', 0.0),
('CHL', 'Aimará', 'F', 0.5),
('CRI', 'Chibcha', 'F', 0.3),
('DJI', 'Arabic', 'T', 10.6),
('ERI', 'Afar', 'F', 4.3),
('ESP', 'Galecian', 'F', 6.4),
('ZAF', 'Afrikaans', 'T', 14.3),
('ETH', 'Tigrinja', 'F', 7.2),
('PHL', 'Ilocano', 'F', 9.3),
('GAB', 'Mpongwe', 'F', 14.6),
('GMB', 'Wolof', 'F', 12.6),
('GEO', 'Armenian', 'F', 6.8),
('GHA', 'Ewe', 'F', 11.9),
('GUM', 'Philippene Languages', 'F', 19.7),
('GTM', 'Cakchiquel', 'F', 8.9),
('GIN', 'Susu', 'F', 11.0),
('GNB', 'Balante', 'F', 14.6),
('GUY', 'Arawakan', 'F', 1.4),
('HND', 'Creole English', 'F', 0.2),
('HKG', 'Fukien', 'F', 1.9),
('IDN', 'Malay', 'T', 12.1),
('IND', 'Telugu', 'F', 7.8),
('IRQ', 'Azerbaijani', 'F', 1.7),
('IRN', 'Kurdish', 'F', 9.1),
('ISR', 'Russian', 'F', 8.9),
('ITA', 'Friuli', 'F', 1.2),
('AUT', 'Turkish', 'F', 1.5),
('JPN', 'Chinese', 'F', 0.2),
('JOR', 'Armenian', 'F', 1.0),
('YUG', 'Hungarian', 'F', 3.4),
('KHM', 'Chinese', 'F', 3.1),
('CMR', 'Duala', 'F', 10.9),
('CAN', 'Chinese', 'F', 2.5),
('KAZ', 'Ukrainian', 'F', 5.0),
('KEN', 'Luo', 'F', 12.8),
('CAF', 'Mandjia', 'F', 14.8),
('CHN', 'Mantšu', 'F', 0.9),
('KGZ', 'Uzbek', 'F', 14.1),
('COL', 'Creole English', 'F', 0.1),
('COM', 'Comorian-madagassi', 'F', 5.5),
('COG', 'Mboshi', 'F', 11.4),
('COD', 'Mongo', 'F', 13.5),
('LAO', 'Thai', 'F', 7.8),
('LVA', 'Belorussian', 'F', 4.1),
('LSO', 'English', 'T', 0.0),
('LBN', 'French', 'F', 0.0),
('LBR', 'Grebo', 'F', 8.9),
('LIE', 'Turkish', 'F', 2.5),
('LTU', 'Polish', 'F', 7.0),
('LUX', 'Italian', 'F', 4.6),
('MAC', 'Mandarin Chinese', 'F', 1.2),
('MKD', 'Turkish', 'F', 4.0),
('MWI', 'Yao', 'F', 13.2),
('MYS', 'Tamil', 'F', 3.9),
('MLI', 'Senufo and Minianka', 'F', 12.0),
('MRT', 'Tukulor', 'F', 5.4),
('MUS', 'French', 'F', 3.4),
('MYT', 'Malagasy', 'F', 16.1),
('MEX', 'Yucatec', 'F', 1.1),
('FSM', 'Mortlock', 'F', 7.6),
('MDA', 'Ukrainian', 'F', 8.6),
('MCO', 'Italian', 'F', 16.1),
('MNG', 'Dorbet', 'F', 2.7),
('MOZ', 'Sena', 'F', 9.4),
('MMR', 'Karen', 'F', 6.2),
('NAM', 'Kavango', 'F', 9.7),
('NRU', 'Chinese', 'F', 8.5),
('NPL', 'Bhojpuri', 'F', 7.5),
('NIC', 'Creole English', 'F', 0.5),
('NER', 'Tamashek', 'F', 10.4),
('NGA', 'Ibo', 'F', 18.1),
('NOR', 'Danish', 'F', 0.4),
('CIV', 'Malinke', 'F', 11.4),
('PAK', 'Sindhi', 'F', 11.8),
('PLW', 'English', 'T', 3.2),
('PAN', 'Guaymí', 'F', 5.3),
('PRY', 'Portuguese', 'F', 3.2),
('PER', 'Aimará', 'T', 2.3),
('MNP', 'Chinese', 'F', 7.1),
('POL', 'Ukrainian', 'F', 0.6),
('FRA', 'Portuguese', 'F', 1.2),
('PYF', 'Chinese', 'F', 2.9),
('REU', 'Comorian', 'F', 2.8),
('ROM', 'Romani', 'T', 0.7),
('SWE', 'Southern Slavic Languages', 'F', 1.3),
('DEU', 'Southern Slavic Languages', 'F', 1.4),
('SLB', 'Polynesian Languages', 'F', 3.8),
('ZMB', 'Nyanja', 'F', 7.8),
('WSM', 'English', 'T', 0.6),
('SEN', 'Serer', 'F', 12.5),
('SYC', 'French', 'T', 1.3),
('SLE', 'Limba', 'F', 8.3),
('SGP', 'Tamil', 'T', 7.4),
('SVK', 'Romani', 'F', 1.7),
('SVN', 'Hungarian', 'F', 0.5),
('LKA', 'Mixed Languages', 'F', 19.6),
('SDN', 'Nubian Languages', 'F', 8.1),
('FIN', 'Russian', 'F', 0.4),
('CHE', 'Italian', 'T', 7.7),
('TJK', 'Russian', 'F', 9.7),
('TWN', 'Hakka', 'F', 11.0),
('TZA', 'Hehet', 'F', 6.9),
('DNK', 'Arabic', 'F', 0.7),
('THA', 'Chinese', 'F', 12.1),
('TGO', 'Watyi', 'F', 10.3),
('TTO', 'Creole English', 'F', 2.9),
('TCD', 'Mayo-kebbi', 'F', 11.5),
('CZE', 'Slovak', 'F', 3.1),
('TUN', 'Arabic-French-English', 'F', 3.2),
('TUR', 'Arabic', 'F', 1.4),
('TKM', 'Russian', 'F', 6.7),
('TUV', 'English', 'T', 0.0),
('UGA', 'Kiga', 'F', 8.3),
('UKR', 'Romanian', 'F', 0.7),
('HUN', 'German', 'F', 0.4),
('NCL', 'Polynesian Languages', 'F', 11.6),
('UZB', 'Tadzhik', 'F', 4.4),
('BLR', 'Ukrainian', 'F', 1.3),
('VUT', 'French', 'T', 14.2),
('VEN', 'Warrau', 'F', 0.1),
('RUS', 'Ukrainian', 'F', 1.3),
('VNM', 'Thai', 'F', 1.6),
('EST', 'Ukrainian', 'F', 2.8),
('USA', 'French', 'F', 0.7),
('VIR', 'French', 'F', 2.5),
('ZWE', 'English', 'T', 2.2),
('AFG', 'Turkmenian', 'F', 1.9),
('NLD', 'Turkish', 'F', 0.8),
('AND', 'French', 'F', 6.2),
('AGO', 'Luimbe-nganguela', 'F', 5.4),
('ABW', 'Dutch', 'T', 5.3),
('AUS', 'Canton Chinese', 'F', 1.1),
('AZE', 'Armenian', 'F', 2.0),
('BGD', 'Garo', 'F', 0.1),
('BEL', 'Arabic', 'F', 1.6),
('BLZ', 'Garifuna', 'F', 6.8),
('BEN', 'Aizo', 'F', 8.7),
('BOL', 'Guaraní', 'F', 0.1),
('BWA', 'Khoekhoe', 'F', 2.5),
('BRA', 'Japanese', 'F', 0.4),
('BRN', 'English', 'F', 3.1),
('BGR', 'Macedonian', 'F', 2.6),
('BFA', 'Busansi', 'F', 3.5),
('CHL', 'Rapa nui', 'F', 0.2),
('CRI', 'Chinese', 'F', 0.2),
('ERI', 'Hadareb', 'F', 3.8),
('ESP', 'Basque', 'F', 1.6),
('ZAF', 'Northsotho', 'F', 9.1),
('ETH', 'Gurage', 'F', 4.7),
('PHL', 'Hiligaynon', 'F', 9.1),
('GAB', 'Mbete', 'F', 13.8),
('GMB', 'Diola', 'F', 9.2),
('GEO', 'Azerbaijani', 'F', 5.5),
('GHA', 'Ga-adangme', 'F', 7.8),
('GUM', 'Korean', 'F', 3.3),
('GTM', 'Kekchí', 'F', 4.9),
('GIN', 'Kissi', 'F', 6.0),
('GNB', 'Portuguese', 'T', 8.1),
('HND', 'Miskito', 'F', 0.2),
('HKG', 'Hakka', 'F', 1.6),
('IDN', 'Madura', 'F', 4.3),
('IND', 'Marathi', 'F', 7.4),
('IRQ', 'Assyrian', 'F', 0.8),
('IRN', 'Gilaki', 'F', 5.3),
('ITA', 'French', 'F', 0.5),
('AUT', 'Hungarian', 'F', 0.4),
('JPN', 'English', 'F', 0.1),
('YUG', 'Romani', 'F', 1.4),
('KHM', 'Tšam', 'F', 2.4),
('CMR', 'Ful', 'F', 9.6),
('CAN', 'Italian', 'F', 1.7),
('KAZ', 'German', 'F', 3.1),
('KEN', 'Kamba', 'F', 11.2),
('CAF', 'Ngbaka', 'F', 7.5),
('CHN', 'Hui', 'F', 0.8),
('KGZ', 'Ukrainian', 'F', 1.7),
('COL', 'Arawakan', 'F', 0.1),
('COM', 'Comorian-Arabic', 'F', 1.6),
('COG', 'Mbete', 'F', 4.8),
('COD', 'Rwanda', 'F', 10.3),
('LAO', 'Lao-Soung', 'F', 5.2),
('LVA', 'Ukrainian', 'F', 2.9),
('LBR', 'Gio', 'F', 7.9),
('LTU', 'Belorussian', 'F', 1.4),
('LUX', 'French', 'T', 4.2),
('MAC', 'English', 'F', 0.5),
('MKD', 'Romani', 'F', 2.3),
('MWI', 'Ngoni', 'F', 6.7),
('MYS', 'Iban', 'F', 2.8),
('MLI', 'Soninke', 'F', 8.7),
('MRT', 'Soninke', 'F', 2.7),
('MUS', 'Hindi', 'F', 1.2),
('MEX', 'Zapotec', 'F', 0.6),
('FSM', 'Kosrean', 'F', 7.3),
('MDA', 'Gagauzi', 'F', 3.2),
('MCO', 'English', 'F', 6.5),
('MNG', 'Bajad', 'F', 1.9),
('MOZ', 'Lomwe', 'F', 7.8),
('MMR', 'Rakhine', 'F', 4.5),
('NAM', 'Afrikaans', 'F', 9.5),
('NRU', 'Tuvalu', 'F', 8.5),
('NPL', 'Tharu', 'F', 5.4),
('NIC', 'Sumo', 'F', 0.2),
('NER', 'Ful', 'F', 9.7),
('NGA', 'Ful', 'F', 11.3),
('NOR', 'Swedish', 'F', 0.3),
('CIV', 'Kru', 'F', 10.5),
('PAK', 'Saraiki', 'F', 9.8),
('PLW', 'Chinese', 'F', 1.6),
('PAN', 'Cuna', 'F', 2.0),
('PRY', 'German', 'F', 0.9),
('MNP', 'Korean', 'F', 6.5),
('POL', 'Belorussian', 'F', 0.5),
('FRA', 'Italian', 'F', 0.4),
('REU', 'Malagasy', 'F', 1.4),
('ROM', 'German', 'F', 0.4),
('SWE', 'Arabic', 'F', 0.8),
('DEU', 'Italian', 'F', 0.7),
('ZMB', 'Lozi', 'F', 6.4),
('SEN', 'Diola', 'F', 5.0),
('SLE', 'Kono-vai', 'F', 5.1),
('SVK', 'Czech and Moravian', 'F', 1.1),
('SDN', 'Beja', 'F', 6.4),
('FIN', 'Estonian', 'F', 0.2),
('CHE', 'Romansh', 'T', 0.6),
('TWN', 'Ami', 'F', 0.6),
('TZA', 'Haya', 'F', 5.9),
('DNK', 'German', 'F', 0.5),
('THA', 'Malay', 'F', 3.6),
('TGO', 'Kotokoli', 'F', 5.7),
('TCD', 'Kanem-bornu', 'F', 9.0),
('CZE', 'Polish', 'F', 0.6),
('TKM', 'Kazakh', 'F', 2.0),
('UGA', 'Soga', 'F', 8.2),
('UKR', 'Bulgariana', 'F', 0.3),
('HUN', 'Serbo-Croatian', 'F', 0.2),
('UZB', 'Kazakh', 'F', 3.8),
('BLR', 'Polish', 'F', 0.6),
('RUS', 'Chuvash', 'F', 0.9),
('VNM', 'Muong', 'F', 1.5),
('EST', 'Belorussian', 'F', 1.4),
('USA', 'German', 'F', 0.7),
('ZWE', 'Nyanja', 'F', 2.2),
('AFG', 'Balochi', 'F', 0.9),
('AGO', 'Nyaneka-nkhumbi', 'F', 5.4),
('AUS', 'Arabic', 'F', 1.0),
('BGD', 'Khasi', 'F', 0.1),
('BEL', 'German', 'T', 1.0),
('BEN', 'Bariba', 'F', 8.7),
('BWA', 'Ndebele', 'F', 1.3),
('BRA', 'Indian Languages', 'F', 0.2),
('BFA', 'Dagara', 'F', 3.1),
('ERI', 'Bilin', 'F', 3.0),
('ZAF', 'English', 'T', 8.5),
('ETH', 'Somali', 'F', 4.1),
('PHL', 'Bicol', 'F', 5.7),
('GMB', 'Soninke', 'F', 7.6),
('GEO', 'Osseetti', 'F', 2.4),
('GHA', 'Gurma', 'F', 3.3),
('GUM', 'Japanese', 'F', 2.0),
('GTM', 'Mam', 'F', 2.7),
('GIN', 'Kpelle', 'F', 4.6),
('GNB', 'Malinke', 'F', 6.9),
('HKG', 'Chiu chau', 'F', 1.4),
('IDN', 'Minangkabau', 'F', 2.4),
('IND', 'Tamil', 'F', 6.3),
('IRQ', 'Persian', 'F', 0.8),
('IRN', 'Luri', 'F', 4.3),
('ITA', 'German', 'F', 0.5),
('AUT', 'Slovene', 'F', 0.4),
('JPN', 'Philippene Languages', 'F', 0.1),
('YUG', 'Slovak', 'F', 0.7),
('CMR', 'Tikar', 'F', 7.4),
('CAN', 'German', 'F', 1.6),
('KAZ', 'Uzbek', 'F', 2.3),
('KEN', 'Kalenjin', 'F', 10.8),
('CAF', 'Sara', 'F', 6.4),
('CHN', 'Miao', 'F', 0.7),
('KGZ', 'Tatar', 'F', 1.3),
('COL', 'Caribbean', 'F', 0.1),
('COM', 'Comorian-Swahili', 'F', 0.5),
('COG', 'Punu', 'F', 2.9),
('COD', 'Zande', 'F', 6.1),
('LVA', 'Polish', 'F', 2.1),
('LBR', 'Kru', 'F', 7.2),
('LTU', 'Ukrainian', 'F', 1.1),
('LUX', 'German', 'T', 2.3),
('MKD', 'Serbo-Croatian', 'F', 2.0),
('MYS', 'English', 'F', 1.6),
('MLI', 'Tamashek', 'F', 7.3),
('MRT', 'Ful', 'F', 1.2),
('MUS', 'Tamil', 'F', 0.8),
('MEX', 'Mixtec', 'F', 0.6),
('FSM', 'Yap', 'F', 5.8),
('MDA', 'Bulgariana', 'F', 1.6),
('MNG', 'Buryat', 'F', 1.7),
('MOZ', 'Shona', 'F', 6.5),
('MMR', 'Mon', 'F', 2.4),
('NAM', 'Herero', 'F', 8.0),
('NRU', 'English', 'T', 7.5),
('NPL', 'Tamang', 'F', 4.9),
('NER', 'Kanuri', 'F', 4.4),
('NGA', 'Ibibio', 'F', 5.6),
('NOR', 'Saame', 'F', 0.0),
('CIV', '[South]Mande', 'F', 7.7),
('PAK', 'Urdu', 'T', 7.6),
('PAN', 'Embera', 'F', 0.6),
('MNP', 'English', 'T', 4.8),
('FRA', 'Spanish', 'F', 0.4),
('REU', 'Tamil', 'F', 0.0),
('ROM', 'Ukrainian', 'F', 0.3),
('SWE', 'Spanish', 'F', 0.6),
('DEU', 'Greek', 'F', 0.4),
('ZMB', 'Chewa', 'F', 5.7),
('SEN', 'Malinke', 'F', 3.8),
('SLE', 'Bullom-sherbro', 'F', 3.8),
('SVK', 'Ukrainian and Russian', 'F', 0.6),
('SDN', 'Nuer', 'F', 4.9),
('FIN', 'Saame', 'F', 0.0),
('TWN', 'Atayal', 'F', 0.4),
('TZA', 'Makonde', 'F', 5.9),
('DNK', 'English', 'F', 0.3),
('THA', 'Khmer', 'F', 1.3),
('TGO', 'Ane', 'F', 5.7),
('TCD', 'Ouaddai', 'F', 8.7),
('CZE', 'German', 'F', 0.5),
('UGA', 'Teso', 'F', 6.0),
('UKR', 'Hungarian', 'F', 0.3),
('HUN', 'Romanian', 'F', 0.1),
('UZB', 'Karakalpak', 'F', 2.0),
('RUS', 'Bashkir', 'F', 0.7),
('VNM', 'Chinese', 'F', 1.4),
('EST', 'Finnish', 'F', 0.7),
('USA', 'Italian', 'F', 0.6),
('AGO', 'Chokwe', 'F', 4.2),
('AUS', 'Vietnamese', 'F', 0.8),
('BGD', 'Santhali', 'F', 0.1),
('BEL', 'Turkish', 'F', 0.9),
('BEN', 'Somba', 'F', 6.7),
('BFA', 'Dyula', 'F', 2.6),
('ERI', 'Saho', 'F', 3.0),
('ZAF', 'Tswana', 'F', 8.1),
('ETH', 'Sidamo', 'F', 3.2),
('PHL', 'Waray-waray', 'F', 3.8),
('GEO', 'Abhyasi', 'F', 1.7),
('GHA', 'Joruba', 'F', 1.3),
('GIN', 'Yalunka', 'F', 2.9),
('GNB', 'Mandyako', 'F', 4.9),
('IDN', 'Batakki', 'F', 2.2),
('IND', 'Urdu', 'F', 5.1),
('IRN', 'Mazandarani', 'F', 3.6),
('ITA', 'Albaniana', 'F', 0.2),
('AUT', 'Polish', 'F', 0.2),
('JPN', 'Ainu', 'F', 0.0),
('YUG', 'Macedonian', 'F', 0.5),
('CMR', 'Mandara', 'F', 5.7),
('CAN', 'Polish', 'F', 0.7),
('KAZ', 'Tatar', 'F', 2.0),
('KEN', 'Gusii', 'F', 6.1),
('CAF', 'Mbum', 'F', 6.4),
('CHN', 'Uighur', 'F', 0.6),
('KGZ', 'Kazakh', 'F', 0.8),
('COG', 'Sango', 'F', 2.6),
('COD', 'Ngala and Bangi', 'F', 5.8),
('LVA', 'Lithuanian', 'F', 1.2),
('LBR', 'Mano', 'F', 7.2),
('MYS', 'Dusun', 'F', 1.1),
('MLI', 'Songhai', 'F', 6.9),
('MRT', 'Zenaga', 'F', 1.2),
('MUS', 'Marathi', 'F', 0.7),
('MEX', 'Otomí', 'F', 0.4),
('FSM', 'Wolea', 'F', 3.7),
('MNG', 'Dariganga', 'F', 1.4),
('MOZ', 'Tswa', 'F', 6.0),
('MMR', 'Chin', 'F', 2.2),
('NAM', 'Caprivi', 'F', 4.7),
('NPL', 'Newari', 'F', 3.7),
('NGA', 'Kanuri', 'F', 4.1),
('PAK', 'Balochi', 'F', 3.0),
('PAN', 'Arabic', 'F', 0.6),
('MNP', 'Carolinian', 'F', 4.8),
('FRA', 'Turkish', 'F', 0.4),
('ROM', 'Serbo-Croatian', 'F', 0.1),
('SWE', 'Norwegian', 'F', 0.5),
('DEU', 'Polish', 'F', 0.3),
('ZMB', 'Nsenga', 'F', 4.3),
('SEN', 'Soninke', 'F', 1.3),
('SLE', 'Ful', 'F', 3.8),
('SDN', 'Zande', 'F', 2.7),
('TWN', 'Paiwan', 'F', 0.3),
('TZA', 'Nyakusa', 'F', 5.4),
('DNK', 'Swedish', 'F', 0.3),
('THA', 'Kuy', 'F', 1.1),
('TGO', 'Moba', 'F', 5.4),
('TCD', 'Hadjarai', 'F', 6.7),
('CZE', 'Silesiana', 'F', 0.4),
('UGA', 'Lango', 'F', 5.9),
('UKR', 'Belorussian', 'F', 0.3),
('HUN', 'Slovak', 'F', 0.1),
('UZB', 'Tatar', 'F', 1.8),
('RUS', 'Chechen', 'F', 0.6),
('VNM', 'Khmer', 'F', 1.4),
('USA', 'Chinese', 'F', 0.6),
('AGO', 'Luvale', 'F', 3.6),
('AUS', 'Serbo-Croatian', 'F', 0.6),
('BGD', 'Tripuri', 'F', 0.1),
('BEN', 'Ful', 'F', 5.6),
('ZAF', 'Southsotho', 'F', 7.6),
('ETH', 'Walaita', 'F', 2.8),
('PHL', 'Pampango', 'F', 3.0),
('GIN', 'Loma', 'F', 2.3),
('IDN', 'Bugi', 'F', 2.2),
('IND', 'Gujarati', 'F', 4.8),
('IRN', 'Balochi', 'F', 2.3),
('ITA', 'Slovene', 'F', 0.2),
('AUT', 'Czech', 'F', 0.2),
('CMR', 'Maka', 'F', 4.9),
('CAN', 'Spanish', 'F', 0.7),
('KEN', 'Meru', 'F', 5.5),
('CHN', 'Yi', 'F', 0.6),
('KGZ', 'Tadzhik', 'F', 0.8),
('COD', 'Rundi', 'F', 3.8),
('LBR', 'Loma', 'F', 5.8),
('MOZ', 'Chuabo', 'F', 5.7),
('MMR', 'Kachin', 'F', 1.4),
('NAM', 'San', 'F', 1.9),
('NPL', 'Hindi', 'F', 3.0),
('NGA', 'Edo', 'F', 3.3),
('PAK', 'Hindko', 'F', 2.4),
('SLE', 'Kuranko', 'F', 3.4),
('SDN', 'Bari', 'F', 2.5),
('TZA', 'Chaga and Pare', 'F', 4.9),
('DNK', 'Norwegian', 'F', 0.3),
('TGO', 'Naudemba', 'F', 4.1),
('TCD', 'Tandjile', 'F', 6.5),
('CZE', 'Romani', 'F', 0.3),
('UGA', 'Lugbara', 'F', 4.7),
('UKR', 'Polish', 'F', 0.1),
('RUS', 'Mordva', 'F', 0.5),
('VNM', 'Nung', 'F', 1.1),
('USA', 'Tagalog', 'F', 0.4),
('AGO', 'Ambo', 'F', 2.4),
('AUS', 'German', 'F', 0.6),
('ZAF', 'Tsonga', 'F', 4.3),
('PHL', 'Pangasinan', 'F', 1.8),
('IDN', 'Banja', 'F', 1.8),
('IND', 'Kannada', 'F', 3.9),
('IRN', 'Arabic', 'F', 2.2),
('ITA', 'Romani', 'F', 0.2),
('AUT', 'Romanian', 'F', 0.2),
('CMR', 'Masana', 'F', 3.9),
('CAN', 'Portuguese', 'F', 0.7),
('KEN', 'Nyika', 'F', 4.8),
('CHN', 'Tujia', 'F', 0.5),
('COD', 'Teke', 'F', 2.7),
('LBR', 'Malinke', 'F', 5.1),
('MOZ', 'Ronga', 'F', 3.7),
('MMR', 'Kayah', 'F', 0.4),
('NAM', 'German', 'F', 0.9),
('NGA', 'Tiv', 'F', 2.3),
('PAK', 'Brahui', 'F', 1.2),
('SLE', 'Yalunka', 'F', 3.4),
('SDN', 'Fur', 'F', 2.1),
('TZA', 'Luguru', 'F', 4.9),
('TGO', 'Gurma', 'F', 3.4),
('TCD', 'Gorane', 'F', 6.2),
('CZE', 'Hungarian', 'F', 0.2),
('UGA', 'Gisu', 'F', 4.5),
('RUS', 'Kazakh', 'F', 0.4),
('VNM', 'Miao', 'F', 0.9),
('USA', 'Polish', 'F', 0.3),
('AGO', 'Luchazi', 'F', 2.4),
('ZAF', 'Swazi', 'F', 2.5),
('PHL', 'Maguindanao', 'F', 1.4),
('IDN', 'Bali', 'F', 1.7),
('IND', 'Malajalam', 'F', 3.6),
('IRN', 'Bakhtyari', 'F', 1.7),
('CAN', 'Punjabi', 'F', 0.7),
('KEN', 'Masai', 'F', 1.6),
('CHN', 'Mongolian', 'F', 0.4),
('COD', 'Boa', 'F', 2.3),
('MOZ', 'Marendje', 'F', 3.5),
('NGA', 'Ijo', 'F', 1.8),
('SDN', 'Chilluk', 'F', 1.7),
('TZA', 'Shambala', 'F', 4.3),
('UGA', 'Acholi', 'F', 4.4),
('RUS', 'Avarian', 'F', 0.4),
('VNM', 'Man', 'F', 0.7),
('USA', 'Korean', 'F', 0.3),
('ZAF', 'Venda', 'F', 2.2),
('PHL', 'Maranao', 'F', 1.3),
('IND', 'Orija', 'F', 3.3),
('IRN', 'Turkmenian', 'F', 1.6),
('CAN', 'Ukrainian', 'F', 0.6),
('KEN', 'Turkana', 'F', 1.4),
('CHN', 'Tibetan', 'F', 0.4),
('COD', 'Chokwe', 'F', 1.8),
('MOZ', 'Nyanja', 'F', 3.3),
('NGA', 'Bura', 'F', 1.6),
('SDN', 'Lotuko', 'F', 1.5),
('TZA', 'Gogo', 'F', 3.9),
('UGA', 'Rwanda', 'F', 3.2),
('RUS', 'Mari', 'F', 0.4),
('USA', 'Vietnamese', 'F', 0.2),
('ZAF', 'Ndebele', 'F', 1.5),
('IND', 'Punjabi', 'F', 2.8),
('CAN', 'Dutch', 'F', 0.5),
('CHN', 'Puyi', 'F', 0.2),
('TZA', 'Ha', 'F', 3.5),
('RUS', 'Udmur', 'F', 0.3),
('USA', 'Japanese', 'F', 0.2),
('IND', 'Asami', 'F', 1.5),
('CAN', 'Eskimo Languages', 'F', 0.1),
('CHN', 'Dong', 'F', 0.2),
('RUS', 'Belorussian', 'F', 0.3),
('USA', 'Portuguese', 'F', 0.2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`country_code`,`language`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;