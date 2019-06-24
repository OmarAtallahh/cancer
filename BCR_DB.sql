-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2019 at 09:40 AM
-- Server version: 8.0.15
-- PHP Version: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BCR_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_link`
--

CREATE TABLE `admin_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apps_countries`
--

CREATE TABLE `apps_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apps_countries`
--

INSERT INTO `apps_countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `country_id` int(10) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `hospital_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `first_name`, `last_name`, `password`, `email`, `job_id`, `country_id`, `phone_number`, `hospital_name`, `isdelete`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'alexander', 'Brett J. Nelson', 'Armando', 'orci.Donec@erosturpis.edu', 6, 90, 9781695, 'Ryan Schneider', 0, 300, 281, NULL, NULL),
(2, 'alexander', 'Hollee W. Sampson', 'Keith', 'eros.Nam@molestie.co.uk', 6, 106, 9810840, 'Noah Frost', 0, 266, 272, NULL, NULL),
(3, 'alexander', 'Chase B. Hobbs', 'Chloe', 'consectetuer@sit.ca', 4, 122, 9489781, 'Kenyon Bush', 0, 259, 287, NULL, NULL),
(4, 'alexander', 'Nathan X. Morales', 'Aristotle', 'Maecenas@tristique.ca', 5, 87, 9894126, 'Uriah Keith', 0, 267, 294, NULL, NULL),
(5, 'Laith Dalton', 'Madeson D. Campos', 'Bryar', 'adipiscing.non.luctus@consequatpurusMaecenas.net', 5, 42, 9136271, 'Hamilton Griffin', 1, 282, 260, NULL, NULL),
(6, 'Daquan Perry', 'Regan E. Brown', 'Serena', 'rhoncus.Proin@elitpharetraut.edu', 2, 101, 9947454, 'Duncan Moss', 0, 264, 274, NULL, NULL),
(7, 'Lance Herman', 'Darryl V. Moody', 'Camden', 'natoque.penatibus@egestasblandit.org', 8, 114, 9401797, 'Ethan Gibbs', 1, 254, 298, NULL, NULL),
(8, 'Bevis Klein', 'Quemby M. Valenzuela', 'Angela', 'ipsum@vitaealiquet.org', 7, 11, 9467936, 'Brett Diaz', 0, 293, 280, NULL, NULL),
(9, 'George Guerra', 'Cora C. Riggs', 'Tashya', 'vel.venenatis@sit.co.uk', 6, 2, 9918081, 'Jason Hughes', 0, 285, 295, NULL, NULL),
(10, 'Cadman Burnett', 'Quintessa O. Pearson', 'Karina', 'pede.Cras.vulputate@orciUtsemper.com', 1, 7, 9406894, 'Hedley Irwin', 1, 254, 254, NULL, NULL),
(11, 'Lucius Harding', 'Veda W. Cardenas', 'Kiona', 'tellus.Nunc@lacinia.co.uk', 5, 101, 9420548, 'Hammett Dalton', 1, 267, 276, NULL, NULL),
(12, 'Hayes Pena', 'Colin N. Ayala', 'Xaviera', 'ipsum.dolor.sit@Sednuncest.org', 10, 101, 9179564, 'Adam Mcclure', 0, 268, 299, NULL, NULL),
(13, 'Erasmus Dominguez', 'Galena C. Price', 'Adam', 'ullamcorper@nec.net', 3, 116, 9990863, 'Hayden Harrington', 0, 255, 299, NULL, NULL),
(14, 'Kirk Holder', 'Orli B. Fulton', 'Isabelle', 'bibendum.ullamcorper.Duis@Maurisvel.net', 3, 8, 9263692, 'Dolan Greer', 1, 284, 272, NULL, NULL),
(15, 'Kennedy Sparks', 'Chandler U. Paul', 'Reuben', 'conubia@congueturpis.edu', 4, 16, 9604898, 'Otto Marsh', 1, 289, 261, NULL, NULL),
(16, 'Andrew Bates', 'Avram O. Duran', 'Britanni', 'nunc@Aliquamnec.net', 9, 105, 9592774, 'Damon Cleveland', 1, 259, 271, NULL, NULL),
(17, 'Michael Reyes', 'Eagan S. Shelton', 'Calista', 'mus@orci.edu', 3, 101, 9958793, 'Hashim Hopper', 0, 286, 260, NULL, NULL),
(18, 'Ciaran Talley', 'Trevor A. Hyde', 'Jerome', 'ut.sem@Integervulputate.org', 7, 40, 9347927, 'Macon Gamble', 0, 278, 252, NULL, NULL),
(19, 'Clark Russell', 'Darryl K. Santiago', 'Britanni', 'Vestibulum@sapiengravida.com', 7, 56, 9446524, 'Devin Bartlett', 1, 297, 298, NULL, NULL),
(20, 'Eric Pollard', 'Maggie E. Goodwin', 'Lamar', 'dapibus.rutrum@variusultrices.edu', 3, 57, 9126531, 'Barry Rodriquez', 0, 288, 266, NULL, NULL),
(21, 'Macon Walker', 'Christine W. Morrison', 'Bertha', 'tellus@aaliquetvel.net', 4, 49, 9832911, 'Dante Elliott', 0, 253, 267, NULL, NULL),
(22, 'Macaulay Griffith', 'Julian K. Cox', 'Lunea', 'metus.vitae.velit@tristiquesenectuset.org', 6, 69, 9312407, 'Thor Cain', 1, 297, 263, NULL, NULL),
(23, 'Drake Beard', 'Gretchen P. Rodriquez', 'Keefe', 'dolor.sit@liberolacusvarius.ca', 9, 40, 9387343, 'Hakeem Russell', 0, 281, 275, NULL, NULL),
(24, 'Dale Chase', 'Lionel T. Alvarado', 'Grady', 'Suspendisse.eleifend.Cras@consequat.co.uk', 1, 60, 9893417, 'Alden Hodge', 1, 262, 287, NULL, NULL),
(25, 'Timon Hodge', 'Suki M. Hartman', 'Darrel', 'tellus.justo@liberoInteger.ca', 4, 128, 9284049, 'Timon Brown', 0, 260, 281, NULL, NULL),
(26, 'Reese Donovan', 'Bertha D. Colon', 'Dylan', 'erat.eget@orci.co.uk', 8, 90, 9217810, 'Declan Burnett', 1, 282, 264, NULL, NULL),
(27, 'Lars Willis', 'Patrick N. Miller', 'Ahmed', 'eleifend.nunc.risus@mienimcondimentum.net', 2, 36, 9929655, 'Graiden Waters', 1, 252, 279, NULL, NULL),
(28, 'Ferris English', 'Thane D. Gilbert', 'Wyoming', 'pretium.neque.Morbi@libero.com', 7, 10, 9166703, 'Ronan Morrison', 1, 258, 263, NULL, NULL),
(29, 'Silas Deleon', 'Karyn W. Morrison', 'Jaime', 'sociis.natoque@Aeneangravidanunc.com', 9, 100, 9915510, 'Ferris Cleveland', 1, 290, 277, NULL, NULL),
(30, 'Orson Booth', 'Isabelle F. Wong', 'Alika', 'elementum.dui.quis@fermentumvelmauris.ca', 8, 97, 9263378, 'Joel Shields', 0, 255, 284, NULL, NULL),
(31, 'Cole Goff', 'Demetrius D. Glover', 'Emerald', 'congue@mauris.ca', 1, 134, 9894736, 'Lionel Hess', 0, 285, 299, NULL, NULL),
(32, 'Drew Nolan', 'Nelle E. Sampson', 'Rudyard', 'volutpat.Nulla@nonummyutmolestie.ca', 1, 122, 9855569, 'Nigel Clarke', 0, 250, 289, NULL, NULL),
(33, 'Burton Ryan', 'Clio E. Meyers', 'Mari', 'risus@turpisegestasFusce.ca', 8, 44, 9947916, 'Wyatt Wilkerson', 1, 295, 285, NULL, NULL),
(34, 'Carter Mccullough', 'Keelie C. Wooten', 'Bevis', 'Donec@ligulaDonecluctus.edu', 6, 111, 9894640, 'Kermit Williams', 1, 263, 265, NULL, NULL),
(35, 'Peter Mays', 'Gary C. Whitaker', 'Farrah', 'libero@sociisnatoquepenatibus.com', 8, 81, 9931894, 'Hayden Buckner', 0, 270, 282, NULL, NULL),
(36, 'Asher Ewing', 'Madeline A. Britt', 'Brady', 'laoreet@semperetlacinia.com', 8, 63, 9598994, 'Jin Burch', 0, 297, 283, NULL, NULL),
(37, 'Julian Wood', 'Martina O. Walters', 'Vivian', 'pharetra@aliquam.edu', 4, 55, 9223540, 'Tobias Mcmillan', 1, 281, 252, NULL, NULL),
(38, 'Phelan Craig', 'Kadeem O. Rodriquez', 'Aretha', 'imperdiet.dictum@cursusnon.ca', 7, 31, 9572663, 'Keith Franks', 1, 298, 279, NULL, NULL),
(39, 'Guy Craig', 'Brynne S. Saunders', 'Bruce', 'dui@gravida.edu', 3, 8, 9783965, 'Raphael Ramirez', 1, 297, 254, NULL, NULL),
(40, 'Kenneth Hewitt', 'Vaughan V. Mathis', 'Keely', 'cursus.purus.Nullam@laoreetposuere.edu', 1, 91, 9735986, 'Solomon Oneal', 0, 272, 300, NULL, NULL),
(41, 'Boris Newton', 'Beck B. Guzman', 'Sage', 'in.felis.Nulla@accumsansedfacilisis.edu', 7, 38, 9853705, 'Allen Cantrell', 1, 282, 251, NULL, NULL),
(42, 'Luke Patton', 'Grady I. Schwartz', 'Gage', 'nunc@primisin.ca', 5, 106, 9227727, 'Raymond Dawson', 0, 259, 251, NULL, NULL),
(43, 'Preston Leblanc', 'Guy H. Guerra', 'Nichole', 'Nunc@Donecelementumlorem.edu', 1, 100, 9696307, 'Brock Gillespie', 1, 257, 284, NULL, NULL),
(44, 'Phillip Gilmore', 'Elizabeth Y. Carlson', 'Baker', 'nisi@nectempus.net', 7, 109, 9452180, 'Wade Day', 1, 252, 280, NULL, NULL),
(45, 'Hunter Lester', 'Raya L. Marsh', 'Rinah', 'pretium.neque.Morbi@dolor.org', 4, 24, 9201237, 'Quentin Blankenship', 1, 282, 292, NULL, NULL),
(46, 'Jameson Olson', 'Amela X. Merrill', 'Willow', 'dui@dui.org', 2, 94, 9868283, 'Wang Roman', 1, 295, 292, NULL, NULL),
(47, 'Barclay Shepherd', 'Ivana R. Battle', 'Jayme', 'vitae.aliquam@eget.com', 7, 96, 9275288, 'Brennan Odonnell', 0, 297, 270, NULL, NULL),
(48, 'Camden Schwartz', 'Dylan A. Sharpe', 'Jakeem', 'augue@lobortisultrices.ca', 9, 90, 9680831, 'Uriah Adkins', 0, 287, 261, NULL, NULL),
(49, 'Fitzgerald Stein', 'Ayanna Q. White', 'Grady', 'semper.et@quisurnaNunc.net', 1, 127, 9158318, 'Elmo Hampton', 0, 270, 297, NULL, NULL),
(50, 'Rooney Riddle', 'Hannah W. Hill', 'Ulla', 'lobortis@doloregestasrhoncus.com', 1, 2, 9702065, 'Conan Adkins', 0, 298, 262, NULL, NULL),
(51, 'Honorato Chaney', 'Gavin C. Mays', 'Yuli', 'velit.eget.laoreet@mifringilla.co.uk', 8, 19, 9688860, 'Zeph Rowe', 0, 277, 271, NULL, NULL),
(52, 'Thomas Patrick', 'Avram Y. Fitzpatrick', 'Mark', 'elementum@rutrum.org', 2, 81, 9857354, 'Kato Alexander', 0, 257, 282, NULL, NULL),
(53, 'Lyle Barnett', 'Wesley N. Sherman', 'Timon', 'volutpat@eratinconsectetuer.net', 10, 39, 9671771, 'Colton Curtis', 1, 287, 252, NULL, NULL),
(54, 'Byron Chang', 'Inga F. Randolph', 'Medge', 'quis.lectus.Nullam@eu.edu', 9, 45, 9219052, 'Hop Peters', 1, 290, 266, NULL, NULL),
(55, 'Lance Harmon', 'Zoe B. Figueroa', 'Meghan', 'Sed.eget@purussapiengravida.com', 7, 65, 9750191, 'Edward Myers', 0, 259, 290, NULL, NULL),
(56, 'Ashton Woodard', 'Rebecca A. Singleton', 'Rashad', 'consectetuer.adipiscing@metus.co.uk', 1, 123, 9281421, 'Vladimir Frye', 0, 290, 267, NULL, NULL),
(57, 'Talon Cooper', 'Ayanna Q. Lewis', 'Whitney', 'orci.Phasellus.dapibus@orci.net', 6, 45, 9507216, 'Ira Holden', 1, 271, 282, NULL, NULL),
(58, 'Philip Fisher', 'Harriet X. Hayden', 'Tyrone', 'vitae.posuere.at@natoquepenatibus.net', 7, 112, 9981759, 'Avram Mckinney', 0, 297, 288, NULL, NULL),
(59, 'Ryder Giles', 'Octavia M. Cline', 'Mari', 'sapien.Cras@velpede.edu', 4, 108, 9346734, 'Zeph Patel', 0, 286, 296, NULL, NULL),
(60, 'Fritz Adams', 'India U. Salinas', 'John', 'leo.Vivamus.nibh@rhoncusProin.ca', 1, 129, 9911776, 'Gary Lucas', 0, 283, 274, NULL, NULL),
(61, 'Kibo Hanson', 'Ulysses R. Zimmerman', 'Gary', 'Proin.non@Integer.ca', 1, 115, 9390335, 'Colby Mosley', 1, 275, 267, NULL, NULL),
(62, 'Odysseus Newton', 'TaShya D. Vazquez', 'Nasim', 'netus.et@bibendumDonec.org', 5, 74, 9759080, 'Graham Thomas', 1, 290, 259, NULL, NULL),
(63, 'Griffin Cotton', 'Sean X. Shepherd', 'Michelle', 'mauris.Suspendisse@lacus.ca', 6, 44, 9435918, 'Nigel Combs', 1, 299, 277, NULL, NULL),
(64, 'Yuli Langley', 'Alexandra Q. Cook', 'Gisela', 'egestas.Aliquam@pellentesquemassalobortis.net', 10, 28, 9583844, 'Logan Cline', 1, 291, 296, NULL, NULL),
(65, 'Hu Morrow', 'Hiram G. Sims', 'Lyle', 'porttitor.scelerisque.neque@antedictum.com', 6, 93, 9441749, 'Hedley Mckinney', 1, 293, 256, NULL, NULL),
(66, 'Declan Terrell', 'Leonard I. Durham', 'Destiny', 'pede@nulla.co.uk', 6, 67, 9810782, 'Cade Allen', 1, 253, 287, NULL, NULL),
(67, 'Uriel Mays', 'Lucian F. Craft', 'Kamal', 'a.facilisis.non@famesac.co.uk', 6, 29, 9584341, 'Byron Santiago', 0, 295, 299, NULL, NULL),
(68, 'Andrew Stafford', 'Courtney V. Butler', 'Sawyer', 'aliquam.adipiscing@pede.ca', 7, 131, 9969834, 'Herman Little', 1, 270, 287, NULL, NULL),
(69, 'Kenyon Whitaker', 'Raven M. Acosta', 'Duncan', 'quis@scelerisqueduiSuspendisse.com', 9, 44, 9881469, 'Zachary Fox', 0, 267, 296, NULL, NULL),
(70, 'Dale Tillman', 'Rhea X. Snow', 'Savannah', 'ac.sem.ut@Suspendisseacmetus.edu', 3, 90, 9561614, 'Tyler Larson', 0, 253, 283, NULL, NULL),
(71, 'Merritt Tucker', 'Calvin H. Cleveland', 'Zephr', 'arcu.Vestibulum@vitae.co.uk', 2, 75, 9984772, 'Samuel Davis', 0, 253, 255, NULL, NULL),
(72, 'Arthur Mclean', 'Cain Y. Frye', 'Ariel', 'leo@pharetraut.com', 3, 49, 9370765, 'Phelan Justice', 0, 265, 292, NULL, NULL),
(73, 'Jin Dean', 'Amy K. Williamson', 'Regan', 'faucibus@nisiMauris.net', 1, 137, 9582565, 'Lance Golden', 0, 283, 291, NULL, NULL),
(74, 'Nathaniel Ayers', 'Molly M. Thompson', 'Jennifer', 'Donec@cursus.edu', 5, 111, 9732551, 'Barrett James', 1, 282, 289, NULL, NULL),
(75, 'Cade Woodward', 'Wayne E. Shaffer', 'Finn', 'hendrerit.id.ante@Phasellus.org', 1, 67, 9807530, 'Bernard Welch', 1, 254, 283, NULL, NULL),
(77, 'Oren Walter', 'Brody P. Brewer', 'Kevin', 'erat@maurisut.net', 1, 77, 9787015, 'Armando Gilbert', 1, 259, 278, NULL, NULL),
(78, 'Ezra Wolf', 'Laith V. Lynch', 'Veronica', 'lectus.ante@aliquam.com', 3, 1, 9432279, 'Ross Obrien', 0, 275, 292, NULL, NULL),
(79, 'Henry Padilla', 'Micah J. Chang', 'Clarke', 'elementum.at@leo.com', 5, 93, 9535884, 'Wylie Tillman', 0, 264, 257, NULL, NULL),
(80, 'Beau Sparks', 'Jamal U. Estrada', 'Reese', 'urna@nequesed.org', 6, 26, 9642322, 'Tanner Anthony', 0, 287, 262, NULL, NULL),
(81, 'Hunter Jordan', 'Macy Z. Valentine', 'Lev', 'Proin@amet.co.uk', 2, 119, 9409209, 'Jordan Sharpe', 1, 252, 251, NULL, NULL),
(82, 'Ivan Harrell', 'Grady L. Salazar', 'Maxine', 'vel@quam.org', 7, 41, 9164813, 'Hayes Flowers', 1, 296, 297, NULL, NULL),
(83, 'Chase Olson', 'Destiny U. Rivers', 'Tad', 'Etiam.laoreet.libero@consectetuer.org', 2, 119, 9202556, 'Jermaine Tyson', 1, 268, 257, NULL, NULL),
(84, 'Alden Levy', 'Claudia K. Simmons', 'Dean', 'sociis.natoque@leo.edu', 6, 73, 9770463, 'Chandler Fisher', 1, 266, 255, NULL, NULL),
(85, 'Axel Hawkins', 'Emerson R. Manning', 'Sylvester', 'ante.Maecenas@CuraePhasellusornare.co.uk', 3, 76, 9558978, 'Castor Parks', 0, 294, 300, NULL, NULL),
(86, 'Kyle Mccarty', 'Scarlett U. Fox', 'Edan', 'at@facilisisloremtristique.edu', 6, 99, 9667094, 'Hasad Armstrong', 0, 291, 270, NULL, NULL),
(87, 'Peter Sanchez', 'Harlan Q. Berg', 'Angela', 'risus.Donec@fringillamilacinia.edu', 6, 132, 9695998, 'Hall Gates', 0, 286, 300, NULL, NULL),
(88, 'Chaney Hamilton', 'Lara I. Buckley', 'Medge', 'vulputate.posuere.vulputate@ornaretortor.org', 3, 35, 9413524, 'James Gray', 1, 288, 293, NULL, NULL),
(89, 'Ferdinand Washington', 'Sebastian X. Reynolds', 'Galvin', 'id.ante@enimEtiam.org', 7, 31, 9366652, 'Wesley Mathews', 0, 260, 261, NULL, NULL),
(90, 'Hayden Floyd', 'Wyatt J. Whitney', 'Sigourney', 'erat.semper@consectetueradipiscing.edu', 5, 34, 9324390, 'Knox Alexander', 0, 257, 297, NULL, NULL),
(91, 'Theodore Estrada', 'Lee A. Cote', 'Ivory', 'fermentum@ornarelectus.co.uk', 10, 9, 9522880, 'Vincent Nguyen', 1, 284, 296, NULL, NULL),
(92, 'Daniel Clarke', 'Quamar D. Trujillo', 'Jessamine', 'lacus.Ut@posuere.ca', 10, 92, 9862749, 'Tobias Guthrie', 1, 290, 296, NULL, NULL),
(93, 'Griffith Kent', 'Caldwell V. Hays', 'Hedwig', 'nec.orci.Donec@duinecurna.edu', 3, 139, 9342426, 'Chaney Combs', 1, 276, 277, NULL, NULL),
(94, 'Kasper Oliver', 'Derek S. Bradshaw', 'Walter', 'orci.in@erategetipsum.co.uk', 10, 97, 9493568, 'Thaddeus Glover', 0, 280, 265, NULL, NULL),
(95, 'Gavin Frost', 'Kaye P. Shaw', 'Reuben', 'Morbi.neque.tellus@orcitinciduntadipiscing.ca', 3, 106, 9145021, 'John Schwartz', 1, 280, 289, NULL, NULL),
(96, 'Elliott Aguilar', 'Xander L. Bush', 'Kasimir', 'eget.ipsum.Suspendisse@elitpellentesquea.edu', 7, 96, 9268742, 'Otto Castro', 1, 266, 285, NULL, NULL),
(97, 'Kasper Dudley', 'Brianna D. Velez', 'Bernard', 'nisi.a.odio@dolor.net', 2, 17, 9324604, 'Simon Orr', 0, 268, 299, NULL, NULL),
(98, 'Clark Peck', 'Stuart P. Goodman', 'Caryn', 'lorem.ut.aliquam@dolorFuscemi.net', 2, 36, 9208258, 'Murphy Franco', 0, 253, 272, NULL, NULL),
(99, 'Asher Davenport', 'Mufutau L. Jennings', 'Rebecca', 'Cum@Proin.net', 6, 32, 9449583, 'Gil Walls', 0, 288, 253, NULL, NULL),
(100, 'Ezekiel Wilson', 'Beverly U. Hodge', 'Melyssa', 'dignissim.pharetra@Sedcongueelit.org', 8, 14, 9490068, 'Harlan Blankenship', 1, 279, 300, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `show_in_menu` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(63, '2014_10_12_000000_create_users_table', 1),
(64, '2014_10_12_100000_create_password_resets_table', 1),
(65, '2019_02_19_101023_create_admins_table', 1),
(66, '2019_02_19_101531_create_doctors_table', 1),
(67, '2019_02_19_124048_creat_link_table', 1),
(68, '2019_02_19_124103_creat_admin_link_table', 1),
(69, '2019_02_20_074304_create_patients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) NOT NULL,
  `report` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `report`, `created_at`, `updated_at`) VALUES
(1, 'there is a problem here', '2019-02-24 13:44:44', '2019-02-24 13:44:44'),
(2, 'second problem  second problem second problem second problem second problem second problem second problem second problem second problem second problem', '2019-02-24 14:22:02', '2019-02-24 14:22:02'),
(3, 'test report', '2019-02-26 13:12:34', '2019-02-26 13:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_link`
--
ALTER TABLE `admin_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps_countries`
--
ALTER TABLE `apps_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`),
  ADD KEY `country_realation` (`country_id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_link`
--
ALTER TABLE `admin_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apps_countries`
--
ALTER TABLE `apps_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `country_realation` FOREIGN KEY (`country_id`) REFERENCES `apps_countries` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
