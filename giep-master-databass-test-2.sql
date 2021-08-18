-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 18 août 2021 à 13:16
-- Version du serveur :  8.0.21
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `giep-master-databass-test-2`
--

-- --------------------------------------------------------

--
-- Structure de la table `absences_absences`
--

DROP TABLE IF EXISTS `absences_absences`;
CREATE TABLE IF NOT EXISTS `absences_absences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `motif_start_id` bigint UNSIGNED NOT NULL,
  `motif_end_id` bigint UNSIGNED NOT NULL,
  `agents_id` bigint UNSIGNED NOT NULL,
  `agents_poles_services_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `absences_motif_end` (`motif_end_id`),
  KEY `fk_absences_absences_absences_motif_start1` (`motif_start_id`),
  KEY `fk_absences_absences_agents1` (`agents_id`,`agents_poles_services_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `absences_absences`
--

INSERT INTO `absences_absences` (`id`, `date_start`, `date_end`, `motif_start_id`, `motif_end_id`, `agents_id`, `agents_poles_services_id`) VALUES
(74, '2021-06-07 00:00:00', '2021-06-07 00:00:00', 2, 3, 122, 1),
(75, '2021-06-14 00:00:00', '2021-06-14 00:00:00', 2, 3, 122, 1),
(77, '2021-06-09 00:00:00', '2021-06-10 00:00:00', 2, 3, 130, 12),
(78, '2021-06-07 00:00:00', '2021-06-20 00:00:00', 2, 3, 132, 12),
(79, '2021-06-10 00:00:00', '2021-06-11 00:00:00', 2, 3, 126, 2),
(80, '2021-06-14 00:00:00', '2021-06-16 00:00:00', 2, 3, 124, 2),
(81, '2021-06-14 00:00:00', '2021-06-15 00:00:00', 2, 3, 125, 2),
(82, '2021-06-07 00:00:00', '2021-06-10 00:00:00', 2, 3, 129, 2),
(84, '2021-06-21 00:00:00', '2021-06-22 00:00:00', 2, 3, 158, 3),
(85, '2021-06-11 00:00:00', '2021-06-15 00:00:00', 2, 3, 163, 3),
(86, '2021-06-07 00:00:00', '2021-06-07 00:00:00', 2, 3, 162, 3),
(87, '2021-06-21 00:00:00', '2021-06-21 00:00:00', 2, 3, 162, 3),
(88, '2021-06-04 00:00:00', '2021-06-04 00:00:00', 2, 2, 160, 3),
(89, '2021-06-14 00:00:00', '2021-06-17 00:00:00', 2, 3, 140, 9),
(90, '2021-06-18 00:00:00', '2021-06-20 00:00:00', 3, 3, 140, 9),
(91, '2021-06-09 00:00:00', '2021-06-13 00:00:00', 2, 3, 137, 9),
(92, '2021-06-14 00:00:00', '2021-06-16 00:00:00', 2, 3, 168, 7),
(93, '2021-06-07 00:00:00', '2021-06-07 00:00:00', 2, 3, 170, 7),
(94, '2021-06-07 00:00:00', '2021-06-09 00:00:00', 2, 3, 167, 7),
(95, '2021-06-07 00:00:00', '2021-06-10 00:00:00', 2, 3, 172, 7),
(96, '2021-06-29 00:00:00', '2021-06-29 00:00:00', 2, 3, 172, 7),
(97, '2021-06-07 00:00:00', '2021-06-20 00:00:00', 2, 3, 173, 7),
(98, '2021-06-07 00:00:00', '2021-06-13 00:00:00', 2, 3, 174, 7),
(99, '2021-06-14 00:00:00', '2021-06-20 00:00:00', 2, 3, 176, 7),
(100, '2021-06-23 00:00:00', '2021-06-23 00:00:00', 2, 3, 176, 7),
(101, '2021-06-14 00:00:00', '2021-06-20 00:00:00', 2, 3, 177, 7),
(102, '2021-06-04 00:00:00', '2021-06-04 00:00:00', 2, 2, 178, 7),
(103, '2021-06-07 00:00:00', '2021-06-30 00:00:00', 2, 3, 178, 7),
(104, '2021-06-18 00:00:00', '2021-06-20 00:00:00', 3, 3, 164, 6),
(105, '2021-06-07 00:00:00', '2021-06-13 00:00:00', 2, 3, 204, 4),
(106, '2021-06-01 00:00:00', '2021-06-13 00:00:00', 2, 3, 205, 4),
(107, '2021-06-01 00:00:00', '2021-06-04 00:00:00', 2, 3, 206, 4),
(108, '2021-06-07 00:00:00', '2021-06-07 00:00:00', 2, 3, 209, 4),
(109, '2021-06-28 00:00:00', '2021-06-28 00:00:00', 2, 3, 209, 4),
(110, '2021-06-18 00:00:00', '2021-06-20 00:00:00', 3, 3, 147, 11),
(111, '2021-06-30 00:00:00', '2021-06-30 00:00:00', 2, 3, 147, 11),
(112, '2021-06-28 00:00:00', '2021-06-29 00:00:00', 2, 3, 148, 11),
(113, '2021-06-07 00:00:00', '2021-06-07 00:00:00', 2, 3, 151, 11),
(114, '2021-06-01 00:00:00', '2021-06-04 00:00:00', 2, 3, 153, 11),
(115, '2021-06-10 00:00:00', '2021-06-10 00:00:00', 2, 3, 154, 11),
(116, '2021-06-03 00:00:00', '2021-06-03 00:00:00', 2, 3, 154, 11),
(117, '2021-06-07 00:00:00', '2021-06-07 00:00:00', 2, 3, 190, 5),
(118, '2021-06-14 00:00:00', '2021-06-20 00:00:00', 2, 3, 190, 5),
(119, '2021-06-21 00:00:00', '2021-06-27 00:00:00', 2, 3, 192, 5),
(120, '2021-06-14 00:00:00', '2021-06-14 00:00:00', 2, 2, 193, 5),
(121, '2021-06-14 00:00:00', '2021-06-15 00:00:00', 2, 3, 199, 13),
(122, '2021-06-28 00:00:00', '2021-06-28 00:00:00', 2, 3, 135, 12),
(123, '2021-06-21 00:00:00', '2021-06-25 00:00:00', 2, 3, 213, 10),
(124, '2021-06-18 00:00:00', '2021-06-21 00:00:00', 2, 3, 166, 6),
(125, '2021-06-14 00:00:00', '2021-06-20 00:00:00', 2, 3, 208, 4),
(126, '2021-06-14 00:00:00', '2021-06-14 00:00:00', 2, 3, 209, 4),
(127, '2021-06-28 00:00:00', '2021-06-30 00:00:00', 2, 3, 145, 11),
(128, '2021-06-14 00:00:00', '2021-06-16 00:00:00', 2, 3, 156, 11),
(129, '2021-06-18 00:00:00', '2021-06-21 00:00:00', 3, 3, 157, 11),
(130, '2021-08-18 00:00:00', '2021-08-14 00:00:00', 2, 3, 116, 1);

-- --------------------------------------------------------

--
-- Structure de la table `absences_motif_end`
--

DROP TABLE IF EXISTS `absences_motif_end`;
CREATE TABLE IF NOT EXISTS `absences_motif_end` (
  `idmotif_end` int NOT NULL AUTO_INCREMENT,
  `motif_end` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idmotif_end`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `absences_motif_end`
--

INSERT INTO `absences_motif_end` (`idmotif_end`, `motif_end`) VALUES
(1, 'Journée'),
(2, 'Matin'),
(3, 'Après-midi');

-- --------------------------------------------------------

--
-- Structure de la table `absences_motif_start`
--

DROP TABLE IF EXISTS `absences_motif_start`;
CREATE TABLE IF NOT EXISTS `absences_motif_start` (
  `idmotif_start` int NOT NULL AUTO_INCREMENT,
  `motif_start` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idmotif_start`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `absences_motif_start`
--

INSERT INTO `absences_motif_start` (`idmotif_start`, `motif_start`) VALUES
(1, 'Journée'),
(2, 'Matin'),
(3, 'Après-midi');

-- --------------------------------------------------------

--
-- Structure de la table `agents`
--

DROP TABLE IF EXISTS `agents`;
CREATE TABLE IF NOT EXISTS `agents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `first_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `function` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwords` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poles_services_id` bigint UNSIGNED NOT NULL,
  `role_ressource` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_agents_poles_services1` (`poles_services_id`)
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agents`
--

INSERT INTO `agents` (`id`, `name`, `first_name`, `function`, `passwords`, `active`, `email`, `poles_services_id`, `role_ressource`) VALUES
(116, 'DUJARDIN', 'Fabrice', 'Apprenti développeur web', '1234567', 1, 'fabrice.dujardin@giep.nc', 1, 2),
(117, 'PELAGE', 'Ronny', 'Chef du service communication / documentation', '123456', 1, 'ronny.pelage@giep.nc', 1, 2),
(121, 'DEVILLERS', 'Jérôme', 'Chargé de communication', '123456', 1, 'jerome.devillers@giep.nc', 1, 0),
(122, 'POIROT', 'Céline', 'Gestionnaire de l\'information et de la docume', '123456', 1, 'celine.poirot@giep.nc', 1, 0),
(123, 'MUAVAKA', 'Gabriel', 'Directeur', '123456', 1, 'gabriel.muavaka@giep.nc', 2, 0),
(124, 'N’GUYEN VAN SOC', 'Guillaume', 'Directeur adjoint en charge des finances', '123456', 1, 'guillaume.nguyen-van-soc@giep.nc', 2, 0),
(125, 'VELASCO', 'Pascal', 'Directeur adjoint en charge de la formation', '123456', 1, 'pascal.velasco@giep.nc', 2, 0),
(126, 'GIROLD', 'Laurence', 'Assistante de direction', '123456', 1, 'laurence.girold@giep.nc', 2, 0),
(127, 'LICHA', 'Franck', 'Agent comptable', '123456', 1, 'franck.licha@giep.nc', 2, 0),
(128, 'WAIMO', 'Henriette', 'Gestionnaire comptable', '123456', 1, 'henriette.waimo@giep.nc', 3, 0),
(129, 'WAKA-AWA', 'Corine', 'Assistante de formation et administrative', '123456', 1, 'corine.waka-awa@giep.nc', 2, 0),
(130, 'CACELLI', 'Alexandra', 'Chef du service coordination et Péri-formation', '123456', 1, 'alexandra.cacelli@giep.nc', 12, 0),
(131, 'BODEOUAROU', 'Myra-Flore', 'Surveillante / Animatrice', '123456', 1, 'myra-flore.bodeouarou@giep.nc', 12, 0),
(132, 'MOINO', 'Pascal', 'Surveillant / Animateur', '123456', 1, 'pascal.moino@giep.nc', 12, 0),
(133, 'MOUEAOUMA', 'Gladys', 'Agent polyvalent de restauration', '123456', 1, 'gladys.moueaouma@giep.nc', 12, 0),
(134, 'POARAIRIWA', 'Warren', 'Surveillant / Animateur', '123456', 1, 'warren.poarairiwa@giep.nc', 12, 0),
(135, 'TEUET', 'Fabienne', 'Agent polyvalent de restauration et d’entretien', '123456', 1, 'fabienne.teuet@giep.nc', 12, 0),
(136, 'DEBELS', 'Nathalie', 'Agent d\'entretien péri-formation', '123456', 1, 'nathalie.debels@giep.nc', 12, 0),
(137, 'FEDRONIE', 'Marianne', 'Responsable des pôles de formation I.T.L.M.', '123456', 1, 'marianne.fedronie@giep.nc', 9, 0),
(138, 'AVILA', 'Patrick', 'Assistant technico-pédagogique (Bourail)', '123456', 1, 'patrick.avila@giep.nc', 9, 0),
(139, 'BOIVENT', 'Xavier', 'Formateur en soudure (Bourail)', '123456', 1, 'xavier.boivent@giep.nc', 9, 0),
(140, 'DRISS', 'Stéphanie', 'Référente stagiaires ITL (Bourail)', '123456', 1, 'stephanie.driss@giep.nc', 9, 0),
(141, 'PEBOU-HAMENE', 'Jean-Pierre', 'Formateur en maintenance industrielle (Bourail)', '123456', 1, 'jean-pierre.pebou-hamene@giep.nc', 9, 0),
(142, 'PIRAS', 'Emmanuel', 'Formateur en métallerie et transformation des métaux (Bourail)', '123456', 1, 'emmanuel.piras@giep.nc', 9, 0),
(143, 'RICHARD', 'Carina', 'Gestionnaire comptable ITL (Bourail)', '123456', 1, 'carina.richard@giep.nc', 9, 0),
(144, 'ULM', 'Patrick', 'Chef du service des moyens généraux', '123456', 1, 'patrick.ulm@giep.nc', 11, 0),
(145, 'ADJILIMA', 'Pauline', 'Agent d\'entretien Nouville', '123456', 1, 'pauline.adjilima@giep.nc', 11, 0),
(146, 'AKAPO', 'Emmanuel', 'Agent d’entretien Nouville', '123456', 1, 'emmanuel.akapo@giep.nc', 11, 0),
(147, 'BOUGENOT', 'Charlotte', 'Assistante administrative', '123456', 1, 'charlotte.bougenot@giep.nc', 11, 0),
(148, 'BOURRELLY', 'Stella', 'Agent d\'accueil Bourail', '123456', 1, 'stella.bourrelly@giep.nc', 11, 0),
(149, 'DECOURT', 'Frédéric', 'Chef de projet informatique', '123456', 1, 'frederic.decourt@giep.nc', 11, 0),
(150, 'DIEM', 'Yves', 'Assistant moyens généraux', '123456', 1, 'yves.diem@giep.nc', 11, 0),
(151, 'GOLA', 'Jean-Pierre', 'Responsable des achats', '123456', 1, 'jean-pierre.gola@giep.nc', 11, 0),
(152, 'HNAGEJE', 'Jean', 'Agent d\'accueil Nouville', '123456', 1, 'jean.hnageje@giep.nc', 11, 0),
(153, 'MEDARD', 'Jean-Jacques', 'Agent d\'entretien Bourail', '123456', 1, 'jean-jacques.medard@giep.nc', 11, 0),
(154, 'PARMAN', 'Gilbert', 'Assistant moyens généraux', '123456', 1, 'gilbert.parman@giep.nc', 11, 0),
(155, 'TONG', 'Philippe', 'Agent d\'entretien Bourail	', '123456', 1, 'philippe.tong@giep.nc', 11, 0),
(156, 'TRABE', 'Jean-Christophe', 'Agent d\'entretien Nouville', '123456', 1, 'jean-christophe.trabe@giep.nc\r\n', 11, 0),
(157, 'WACAPO', 'Albert', 'Vaguemestre', '123456', 1, 'albert.wacapo@giep.nc\r\n', 11, 0),
(158, 'BURGUIERE', 'Sandra', 'Gestionnaire comptable', '123456', 1, 'sandra.burguiere@giep.nc', 3, 0),
(159, 'DELRIEU', 'Mylène', 'Responsable des recettes', '123456', 1, 'mylene.delrieu@giep.nc', 3, 0),
(160, 'TELAI', 'Anna', 'Gestionnaire comptable', '123456', 1, 'anna.telai@giep.nc', 3, 0),
(161, 'UPINUE', 'Erika', 'Gestionnaire comptable', '123456', 1, 'erika.upinue@giep.nc', 3, 0),
(162, 'KILAMA', 'Diane', 'Responsable ressources humaines', '123456', 1, 'diane.kilama@giep.nc', 3, 0),
(163, 'FOUCADE', 'Lindsay', 'Assistante ressources humaines', '123456', 1, 'lindsay.foucade@giep.nc', 3, 0),
(164, 'CLAIRET', 'Pierre-Olivier', 'Formateur en mécanique', '123456', 0, 'pierre-olivier.clairet@giep.nc', 6, 0),
(165, 'DUBAIN', 'Sylvain', 'Formateur en mécanique engins', '123456', 1, 'sylvain.dubain@giep.nc', 6, 0),
(166, 'TIAVOUANE', 'Floriane', 'Assistante de formation et administrative', '123456', 1, 'floriane.tiavouane@giep.nc', 6, 0),
(167, 'EVAIN', 'Séverine', 'Responsable Pôle IOEPA', '123456', 1, 'severine.evain@giep.nc', 7, 0),
(168, 'ARMAND', 'Corinne', 'Psychologue (SPOT)', '123456', 1, 'corinne.armand@giep.nc', 7, 0),
(169, 'BOUSQUET', 'Anne', 'Conseillère en évolution professionnelle', '123456', 1, 'anne.bousquet@giep.nc', 7, 0),
(170, 'ECHAPPE', 'Marie', 'Assistante administrative', '123456', 1, 'marie.echappe@giep.nc', 7, 0),
(171, 'EHNYIMANE', 'Marjorie', 'Conseillère en évolution professionnelle', '123456', 1, 'marjorie.ehnyimane@giep.nc', 7, 0),
(172, 'FELS', 'Robineda', 'Conseillère en évolution professionnelle', '123456', 1, 'robineda.fels@giep.nc', 7, 0),
(173, 'JUSSAN', 'Valérie', 'Psychologue', '123456', 1, 'valerie.jussan@giep.nc', 7, 0),
(174, 'MAILLARD', 'Gaëlle', 'Psychologue (Bourail)', '123456', 1, 'gaelle.maillard@giep.nc', 7, 0),
(175, 'MIRAL', 'Jeanne', 'Conseillère en évolution professionnelle', '123456', 1, 'jeanne.miral@giep.nc', 7, 0),
(176, 'RIGAUD', 'Florian', 'Agent d\'accueil', '123456', 1, 'florian.rigaud@giep.nc', 7, 0),
(177, 'SAINTPIERRE', 'Anouck', 'Conseillère en évolution professionnelle', '123456', 1, 'anouck.saintpierre@giep.nc', 7, 0),
(178, 'TAUZIN', 'Marie', 'Psychologue (SPOT)', '123456', 1, 'marie.tauzin@giep.nc', 7, 0),
(179, 'TROUILLOT', 'Marie-Laurence', 'Psychologue (SPOT)	', '123456', 1, 'marie-laurence.trouillot@giep.nc', 7, 0),
(188, 'BARRE', 'Yoann', 'Formateur espace technique industrie', '123456', 1, 'yoann.barre@giep.nc', 5, 0),
(189, 'CAILLET', 'Antony', 'Formateur en éco-recyclage', '123456', 1, 'antony.caillet@giep.nc', 5, 0),
(190, 'CHANTREUX', 'Ennrika', 'Assistante de formation et administrative', '123456', 1, 'ennrika.chantreux@giep.nc\r\n', 5, 0),
(191, 'CHAUVEL', 'Philippe', 'Formateur en accompagnement individualisé', '123456', 1, 'philippe.chauvel@giep.nc', 5, 0),
(192, 'JUSTIN', 'Roselyne', 'Référente stagiaires', '123456', 1, 'roselyne.justin@giep.nc', 5, 0),
(193, 'MERCIER', 'Frédéric', 'Formateur en cuisine', '123456', 1, 'frederic.mercier@giep.nc', 5, 0),
(194, 'VAIMUA SELUI', 'Sylvaine', 'Référente stagiaires', '123456', 1, 'sylvaine.vaimua@giep.nc\r\n', 5, 0),
(195, 'WEBER', 'Marion', 'Formatrice hygiène des locaux et aide à la personne', '123456', 1, 'marion.weber@giep.nc', 5, 0),
(196, 'CORMIER', 'Christophe', 'Formateur serveur en restauration', '123456', 1, 'christophe.cormier@giep.nc', 10, 0),
(197, 'MUCHUITTI', 'Fabien', 'Formateur en cuisine', '123456', 1, 'fabien.muchuitti@giep.nc', 10, 0),
(199, 'PEROTTO - RAMBEAU', 'Aline', 'Formattrice métiers du transport et de la logistique (Bourail)', '123456', 1, 'aline.perotto-rambeau@giep.nc', 13, 0),
(200, 'DELAVEUVE', 'Laurent', 'Responsable Pôle Métiers de la mer', '123456', 1, 'laurent.delaveuve@giep.nc', 4, 0),
(201, 'AUDABRAM', 'Nicolas', 'Formateur polyvalent pont, machine et sécurit', '123456', 1, 'nicolas.audabram@giep.nc', 4, 0),
(202, 'BRAUD', 'Laurent', 'Formateur polyvalent', '123456', 1, 'laurent.braud@giep.nc', 4, 0),
(203, 'GUEGAN', 'Thibaut', 'Formateur polyvalent pont et sécurité', '123456', 1, 'thibaut.guegan@giep.nc', 4, 0),
(204, 'MAPONE', 'Maria', 'Référente stagiaires', '123456', 1, 'maria.mapone@giep.nc', 4, 0),
(205, 'NYIKEINE', 'Pascal', 'Assistant technico-pédagogique', '123456', 1, 'pascal.nyikeine@giep.nc', 4, 0),
(206, 'OLONDE', 'Patrick', 'Formateur polyvalent', '123456', 1, 'patrick.olonde@giep.nc', 4, 0),
(207, 'ROSSI', 'Eric', 'Référent agrément	', '123456', 1, 'eric.rossi@giep.nc', 4, 0),
(208, 'SAO', 'Sapolina', 'Assistante de formation et administrative', '123456', 1, 'sapolina.sao@giep.nc', 4, 0),
(209, 'VO VAN HIEN', 'Anthony', 'Formateur polyvalent', '123456', 1, 'anthony.vo-van-hien@giep.nc', 4, 0),
(212, 'PRADEL', 'Laure', 'Psychologue', '123456', 1, 'laure.pradel@giep.nc', 7, 0),
(213, 'SANCHEZ', 'Emilie', 'Formatrice en hôtellerie back office', '123456', 1, 'emilie.sanchez@giep.nc', 10, 0);

-- --------------------------------------------------------

--
-- Structure de la table `agents_has_applications`
--

DROP TABLE IF EXISTS `agents_has_applications`;
CREATE TABLE IF NOT EXISTS `agents_has_applications` (
  `agents_id` bigint UNSIGNED NOT NULL,
  `applications_id` bigint UNSIGNED NOT NULL,
  `droit` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `fk_agents_has_applications_agents1` (`agents_id`),
  KEY `fk_agents_has_applications_applications1` (`applications_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agents_has_applications`
--

INSERT INTO `agents_has_applications` (`agents_id`, `applications_id`, `droit`) VALUES
(116, 1, 'A'),
(117, 1, 'A'),
(124, 1, 'U'),
(162, 1, 'U'),
(163, 1, 'U');

-- --------------------------------------------------------

--
-- Structure de la table `appartienservices`
--

DROP TABLE IF EXISTS `appartienservices`;
CREATE TABLE IF NOT EXISTS `appartienservices` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ressource_id` bigint UNSIGNED NOT NULL,
  `poles_service_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appartienservices_ressource_id_foreign` (`ressource_id`),
  KEY `appartienservices_poles_service_id_foreign` (`poles_service_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `appartienservices`
--

INSERT INTO `appartienservices` (`id`, `ressource_id`, `poles_service_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 7, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 5, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `applications`
--

INSERT INTO `applications` (`id`, `name`) VALUES
(1, 'connexion_absences'),
(2, 'connexion_ressources');

-- --------------------------------------------------------

--
-- Structure de la table `lieus`
--

DROP TABLE IF EXISTS `lieus`;
CREATE TABLE IF NOT EXISTS `lieus` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lieu_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lieus`
--

INSERT INTO `lieus` (`id`, `lieu_name`, `created_at`, `updated_at`) VALUES
(1, 'nouméa\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_06_17_020440_create_poles_services_table', 1),
(2, '2021_06_17_020442_create_agents_table', 1),
(3, '2021_06_17_020443_create_absences_motif_end_table', 1),
(4, '2021_06_17_020444_create_absences_motif_start_table', 1),
(5, '2021_06_17_020445_create_applications_table', 1),
(6, '2021_06_17_020446_create_agents_has_applications_table', 1),
(7, '2021_06_17_020449_create_absences_absences_table', 1),
(8, '2021_06_17_020450_add_foreign_keys_to_absences_absences_table', 1),
(9, '2021_06_17_020450_add_foreign_keys_to_agents_has_applications_table', 1),
(10, '2021_06_17_020450_add_foreign_keys_to_agents_table', 1),
(11, '2021_06_20_234255_create_typeressources_table', 1),
(12, '2021_06_20_234904_create_lieus_table', 1),
(13, '2021_06_20_235001_create_ressources_table', 1),
(14, '2021_06_20_235342_create_appartienservices_table', 1),
(15, '2021_06_21_011929_create_reservations_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `poles_services`
--

DROP TABLE IF EXISTS `poles_services`;
CREATE TABLE IF NOT EXISTS `poles_services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_pole_service` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `poles_services`
--

INSERT INTO `poles_services` (`id`, `name_pole_service`, `email`, `phone`) VALUES
(1, 'COMMUNICATION / DOCUMENTATION​', 'communication@giep.nc', NULL),
(2, 'DIRECTION', 'direction@giep.nc', '26 57 30'),
(3, 'FINANCE ET RESSOURCE HUMAINE', 'compta@giep.nc​', NULL),
(4, 'METIERS DE LA MER', 'mer@giep.nc', '28 78 63'),
(5, 'SPOT', 'spot@giep.nc', '28 95 10'),
(6, 'MAINTENANCE AUMOBILE / ENGIN', 'auto@giep.nc', '24 02 08'),
(7, 'INFORMATION ORIENTATION', 'orientation@giep.nc', '28 10 82'),
(8, 'NUMÉRO VERT​', NULL, '05 07 09'),
(9, 'INDUSTRIE', 'industrie@giep.nc', '44 12 46'),
(10, 'HÔTELLERIE RESTAURATION', 'hotelrest@giep.nc', '27 78 41'),
(11, 'MOYENS GÉNÉRAUX​', 'smg@giep.nc', NULL),
(12, 'COORDINATION ET PÉRI-FORMATION BOURAIL​', NULL, NULL),
(13, 'TRANSPORT LOGISTIQUE', 'translog@giep.nc', '44 12 46');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ressource_id` bigint UNSIGNED NOT NULL,
  `agent_id` bigint UNSIGNED NOT NULL,
  `byagent_id` bigint UNSIGNED NOT NULL,
  `lieu_id` bigint UNSIGNED NOT NULL,
  `date_start` date NOT NULL,
  `time_start` int NOT NULL,
  `date_end` date NOT NULL,
  `time_end` int NOT NULL,
  `date_resa` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `motif` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateDebPlusHeure` datetime NOT NULL,
  `dateFinPlusHeure` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reservations_ressource_id_foreign` (`ressource_id`),
  KEY `reservations_agent_id_foreign` (`agent_id`),
  KEY `reservations_byagent_id_foreign` (`byagent_id`),
  KEY `reservations_lieu_id_foreign` (`lieu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ressources`
--

DROP TABLE IF EXISTS `ressources`;
CREATE TABLE IF NOT EXISTS `ressources` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ressource_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu_id` bigint UNSIGNED NOT NULL,
  `typeressource_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ressources_lieu_id_foreign` (`lieu_id`),
  KEY `ressources_typeressource_id_foreign` (`typeressource_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ressources`
--

INSERT INTO `ressources` (`id`, `ressource_name`, `lieu_id`, `typeressource_id`, `created_at`, `updated_at`) VALUES
(1, 'SALLE DE RÉUNION : Petite salle (2)', 1, 3, NULL, NULL),
(2, 'SALLE DE RÉUNION : Grande salle (1)', 1, 3, NULL, NULL),
(3, 'DUSTER BLANC : 355 726 NC', 1, 1, NULL, NULL),
(4, 'CLE 4G : OPT', 1, 2, NULL, NULL),
(5, 'ORDINATEUR PORTABLE : LENOVO', 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `typeressources`
--

DROP TABLE IF EXISTS `typeressources`;
CREATE TABLE IF NOT EXISTS `typeressources` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `typeressources`
--

INSERT INTO `typeressources` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'VEHICULES', NULL, NULL),
(2, 'INFORMATIQUE', NULL, NULL),
(3, 'SALLE', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
