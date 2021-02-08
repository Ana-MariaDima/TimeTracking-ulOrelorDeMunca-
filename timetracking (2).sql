-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mai 27, 2020 la 06:27 PM
-- Versiune server: 10.4.11-MariaDB
-- Versiune PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `timetracking`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `angajati`
--

CREATE TABLE `angajati` (
  `id_angajat` int(11) NOT NULL,
  `id_invitatie` varchar(64) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `parola` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `angajati`
--

INSERT INTO `angajati` (`id_angajat`, `id_invitatie`, `nickname`, `email`, `parola`) VALUES
(3, 'RLBYXQiGJgjbVFu9bEydkk6j0XTWur5wYAxJCOEFobMubeYF2TMMBg749WmR2z7n', 'yo', 'anamia99.dima@gmail.com', 'yo'),
(4, 'uCmewiCVIH0lUtnJamR8RcdH4mOqTsdiHnkPfSXBQX7Xl0CA8CD2PMDTw7ACvewS', 'me', 'me@cti.ro', 'me'),
(8, '7mEUxXPr7fOVWgk6dcSMlyrBBeJtioCP09SXBGcz2mIT4f260u9TdeGfIFVR6nlA', 'test', 'test@cti.ro', '1');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `angajat_proiect`
--

CREATE TABLE `angajat_proiect` (
  `id_ap` int(11) NOT NULL,
  `id_angajat` int(11) NOT NULL,
  `cod_proiect` varchar(16) NOT NULL,
  `data_inrolarii` datetime NOT NULL,
  `data_parasire` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `angajat_proiect`
--

INSERT INTO `angajat_proiect` (`id_ap`, `id_angajat`, `cod_proiect`, `data_inrolarii`, `data_parasire`) VALUES
(1, 4, '10', '2020-05-18 11:47:45', '2020-05-21 00:00:00'),
(2, 3, '20', '2020-05-19 00:00:00', '2020-05-22 00:00:00'),
(3, 3, '10', '2020-05-19 10:18:49', NULL),
(5, 4, '10', '2020-05-26 11:54:51', NULL),
(6, 4, '85', '2020-05-26 12:00:46', NULL),
(8, 8, 'eap', '2020-05-27 19:07:22', NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `companii`
--

CREATE TABLE `companii` (
  `id_companie` int(11) NOT NULL,
  `user` varchar(45) NOT NULL,
  `parola` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `companii`
--

INSERT INTO `companii` (`id_companie`, `user`, `parola`) VALUES
(1, 'ASDF', 'asdf'),
(2, 'ZXCV', 'zxcv');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `invitatii`
--

CREATE TABLE `invitatii` (
  `id_invitatie` varchar(64) NOT NULL,
  `invitatie_folosita` tinyint(1) NOT NULL DEFAULT 0,
  `id_companie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `invitatii`
--

INSERT INTO `invitatii` (`id_invitatie`, `invitatie_folosita`, `id_companie`) VALUES
('1Z1mmcIkjSNdFLDczfMJmWdHQrGNbNUotAPWe2YtRQZHGTmAWRMOuHjlfXR4QqQL', 1, 1),
('7mEUxXPr7fOVWgk6dcSMlyrBBeJtioCP09SXBGcz2mIT4f260u9TdeGfIFVR6nlA', 1, 1),
('qlPM76wysGjVQQfuKEbwrn0NvHk1JvEWo16YiNdk6eh963ooRpCtrCtCZC1azcgt', 0, 1),
('RLBYXQiGJgjbVFu9bEydkk6j0XTWur5wYAxJCOEFobMubeYF2TMMBg749WmR2z7n', 1, 1),
('uCmewiCVIH0lUtnJamR8RcdH4mOqTsdiHnkPfSXBQX7Xl0CA8CD2PMDTw7ACvewS', 1, 1),
('VpSwCDK8yS7znaeqTFNkx3OOXkMjNEJQY36y5U6BPSMmXDlWeAuBTxleBRS8pLo9', 0, 1),
('yc7oHTcSum55bj01SQN4dUK99R8TQX4O2P3vcmonDNgrIMvjkx7tI74XXastjkRV', 1, 1),
('YmCOSahOXCKX59UFtcevkGqaTtTEjkRgIPioGhJoRXau2w20LFIX0Teyl4dSRIgQ', 1, 1),
('YQV4xapqrXsTd15Gi6U61anyE8cv95axrAHmijfGRJo6WJ8W1eZs2OGn4bUk6aH5', 0, 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `proiecte`
--

CREATE TABLE `proiecte` (
  `cod_proiect` varchar(16) NOT NULL,
  `ID_COMPANIE` int(11) NOT NULL,
  `nume` varchar(45) DEFAULT NULL,
  `data_creare` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `proiecte`
--

INSERT INTO `proiecte` (`cod_proiect`, `ID_COMPANIE`, `nume`, `data_creare`) VALUES
('10', 1, 'asa', '2020-05-04'),
('20', 1, 'da', '2020-05-19'),
('85', 1, 'asde', '2020-05-26'),
('eap', 1, 'prezentare', '2020-05-28');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `sesiuni`
--

CREATE TABLE `sesiuni` (
  `id_sesiune` int(11) NOT NULL,
  `timestamp_inceput` datetime NOT NULL,
  `timestamp_final` datetime DEFAULT NULL,
  `id_ap` int(11) NOT NULL,
  `descriere_munca` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `sesiuni`
--

INSERT INTO `sesiuni` (`id_sesiune`, `timestamp_inceput`, `timestamp_final`, `id_ap`, `descriere_munca`) VALUES
(1, '2020-05-19 00:00:00', '2020-05-20 00:00:00', 1, ''),
(4, '2020-05-24 00:00:00', NULL, 3, ''),
(5, '2020-05-26 21:08:05', '2020-05-26 21:08:11', 5, 'yess'),
(8, '2020-05-27 19:07:38', '2020-05-27 19:07:51', 8, 'test');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `angajati`
--
ALTER TABLE `angajati`
  ADD PRIMARY KEY (`id_angajat`),
  ADD KEY `fk_invitatii` (`id_invitatie`);

--
-- Indexuri pentru tabele `angajat_proiect`
--
ALTER TABLE `angajat_proiect`
  ADD PRIMARY KEY (`id_ap`),
  ADD KEY `fk_angajat` (`id_angajat`),
  ADD KEY `fk_proiect` (`cod_proiect`);

--
-- Indexuri pentru tabele `companii`
--
ALTER TABLE `companii`
  ADD PRIMARY KEY (`id_companie`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indexuri pentru tabele `invitatii`
--
ALTER TABLE `invitatii`
  ADD PRIMARY KEY (`id_invitatie`),
  ADD UNIQUE KEY `id_invitatie` (`id_invitatie`),
  ADD KEY `fk_comp` (`id_companie`);

--
-- Indexuri pentru tabele `proiecte`
--
ALTER TABLE `proiecte`
  ADD PRIMARY KEY (`cod_proiect`),
  ADD UNIQUE KEY `cod_proiect` (`cod_proiect`);

--
-- Indexuri pentru tabele `sesiuni`
--
ALTER TABLE `sesiuni`
  ADD PRIMARY KEY (`id_sesiune`),
  ADD KEY `fk_sesiuni_1` (`id_ap`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `angajati`
--
ALTER TABLE `angajati`
  MODIFY `id_angajat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pentru tabele `angajat_proiect`
--
ALTER TABLE `angajat_proiect`
  MODIFY `id_ap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pentru tabele `companii`
--
ALTER TABLE `companii`
  MODIFY `id_companie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `sesiuni`
--
ALTER TABLE `sesiuni`
  MODIFY `id_sesiune` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `angajati`
--
ALTER TABLE `angajati`
  ADD CONSTRAINT `fk_invitatii` FOREIGN KEY (`id_invitatie`) REFERENCES `invitatii` (`id_invitatie`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constrângeri pentru tabele `angajat_proiect`
--
ALTER TABLE `angajat_proiect`
  ADD CONSTRAINT `fk_angajat` FOREIGN KEY (`id_angajat`) REFERENCES `angajati` (`id_angajat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proiect` FOREIGN KEY (`cod_proiect`) REFERENCES `proiecte` (`cod_proiect`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constrângeri pentru tabele `invitatii`
--
ALTER TABLE `invitatii`
  ADD CONSTRAINT `fk_comp` FOREIGN KEY (`id_companie`) REFERENCES `companii` (`id_companie`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constrângeri pentru tabele `sesiuni`
--
ALTER TABLE `sesiuni`
  ADD CONSTRAINT `fk_sesiuni_1` FOREIGN KEY (`id_ap`) REFERENCES `angajat_proiect` (`id_ap`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
