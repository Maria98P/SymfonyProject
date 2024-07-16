-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 16, 2024 at 07:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `EBEWD2_CR6_bigEventsMariaParaskevopoulou`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address_location` varchar(50) NOT NULL,
  `address_street_name` varchar(50) NOT NULL,
  `address_street_number` int(11) NOT NULL,
  `address_zip_code` varchar(10) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `date_time`, `description`, `image`, `capacity`, `email`, `phone_number`, `address_location`, `address_street_name`, `address_street_number`, `address_zip_code`, `url`, `type`) VALUES
(1, 'Film Festival at Vienna’s Rathausplatz', '2024-06-29 18:13:00', 'This summer, the Rathausplatz will once again become a vibrant open-air venue: starting on June 29, the film festival will feature world-class music from opera, classical music, jazz and pop/rock as well as culinary delights. Before that, there will be public screenings of Austria’s European Championship matches. That’s what this summer has in store for Vienna. Free admission!', 'filmFestival.webp', 500, 'vienna@gmail.com', '+4323558444', 'Vienna', 'Rathausplatz', 1, '1010', 'www.fanarena-rathausplatz.at', 'music'),
(2, 'EuroGames 2024 in Vienna', '2024-07-17 19:00:00', 'The centerpiece of the EuroGames 2024 is the EuroGames Village on Vienna’s Karlsplatz. In addition to the opening and closing ceremonies, various events, ranging from concerts and film screenings to discussions, will take place here over four days. It will also be possible for participants to register in the immediate vicinity.', 'eurogames.jpg', 1000, 'https://eurogames2024.at', '', 'Vienna', 'Karlsplatz', 1, '1010', 'https://eurogames2024.at/eurogames2024/ceremonies-village/', 'sports'),
(3, 'Open-air cinema', '2024-07-31 08:00:00', 'The Cinema like never before at Augartenspitz presents a mix of popular movie classics and exciting new discoveries from Austria and around the world again from June 27. The motto “Female & Fearless” focuses on quick-witted, independent and fearless film heroines. These include cult films such as “Erin Brockovich” (by Steven Soderbergh from 2000 with Julia Roberts in the leading role), “Lola” by Rainer Werner Fassbinder (1981) and more recent productions such as “Anatomy of a Fall”. Birgit Minichmayr portrays an equally strong woman in the Austrian version. At the cinema sessions, classic silent movies will be accompanied by live music. As part of the focus on “100 years of cinema”, special films from 1924 will be screened here, including the iconic Austrian film “Die Sklavenkönigin” and the cinematic gem “Die Stadt ohne Juden”. Culinary delights are supplied by the Grünstern garden kitchen.', 'openair1.webp', 1000, 'reservierung@filmarchiv.at', '0800 808 133', 'Vienna', 'Johannesgasse ', 4, '1010', 'www.kinowienochnie.at', 'film'),
(4, 'Cinema on the Roof', '2024-07-18 20:00:00', 'The Kino am Dach (Cinema on the Roof) of the Main Library on the Gürtel is entering its 21st season this year and is presenting a diverse selection of coming-of-age films under the motto “Forever 21” in addition to must-see national and international film highlights. The Austrian film “Andrea lässt sich scheiden” by Josef Hader will be screened at the official opening. The fantastic Oscar-winning film “Poor Things” starring Emma Stone will also be screened, as will the touching film “All Of Us Strangers” and the 1996 classic “Trainspotting” by Danny Boyle.', 'openair2.webp', 500, '', '+43 699 113 669 47', 'Vienna', 'Urban-Loritz-Platz', 2, '1070', 'tickets.kinoamdach.at', 'film'),
(5, 'Klima Biennale Wien', '2024-07-27 16:30:00', 'Interdisciplinary, low-threshold and interactive: this is how the first Vienna Climate Biennale presents itself. From April 5 to July 14, 2024, this innovative climate art festival will focus on the potential of art, design, architecture and science with regard to a sustainable future worth living and the social impact of climate change.', 'biennale.jpg', 10000, 'info@kunsthauswien.com', '+43-1-712 04 91', 'Vienna', 'Untere Weissbergstrasse', 13, '1030', 'www.biennale.wien', 'art'),
(6, 'ImPulsTanz 2024', '2024-07-25 22:00:00', 'From July 11 to August 11, 2024, the ImPulsTanz - Vienna International Dance Festival will bring together the international dance and performance scene in Vienna.\nStars such as Dada Masilo, William Kentridge, Anne Teresa De Keersmaeker, Sidi Larbi Cherkaoui and Wim Vandekeybus will be performing on stage.', 'tanz.jpg', 300, 'office@MAK.at', '+43 1 235 00 22', 'Vienna', 'Stubenring', 5, '1010', 'www.ImPulsTanz.com', 'dance'),
(7, 'Sommer Rhapsodie in the Garden', '2024-07-22 14:40:00', 'In front of the backdrop of Liechtenstein Garden Palace, theSummer Rhapsodieoffers art and dining under a open sky. The program from July 8 to August 7 is as extensive as it is high-quality, with classics from literature, cabaret, and theater as well as concerts from classical to world.', 'rhapsodie.jpg', 1000, 'kontakt@sommerrhapsodie.at', '+43 1 319 57 67 700', 'Vienna', 'Fürstengasse', 1, '1090', 'www.sommerrhapsodie.at', 'art'),
(8, '15th Pop Festival', '2024-07-31 14:43:00', 'From July 25 to 28, the 15th Popfest will take place around Karlsplatz. New local pop music can be heard, danced to and experienced. Verifiziert, Der Nino aus Wien, Anda Morts and Oskar Haag & Band open the festival on the Seebühne.', 'popfest.jpg', 1000, NULL, NULL, 'Vienna', 'Karlsplatz', 1, '1040', 'www.popfest.at', 'music');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
