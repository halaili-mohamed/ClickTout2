-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 24 Décembre 2019 à 13:16
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `click_tout`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE IF NOT EXISTS `administrateur` (
  `id_admin` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `type_admin` int(11) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`id_admin`, `login`, `pwd`, `type_admin`, `telephone`, `adresse`, `email`, `nom`) VALUES
(1, 'super_admin', '0000', 0, '', '', '', ''),
(2, 'admin', 'admin', 0, '', '', '', ''),
(3, 'super_admin', '0000', 1, '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(250) NOT NULL,
  `Prenom` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `N_carte` varchar(250) DEFAULT NULL,
  `ccv` varchar(250) DEFAULT NULL,
  `Date_Carte` date DEFAULT NULL,
  `telClient` int(11) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id_client`, `Nom`, `Prenom`, `Email`, `N_carte`, `ccv`, `Date_Carte`, `telClient`) VALUES
(1, 'raboudi', 'wafa', 'wafa@hkza.com', '1234455', 'dckmld', '2019-09-28', 20293022),
(2, 'raboudi', 'wafa', 'sahar@kzmask.cm', '12Z32', 'dmlqz', '2019-09-25', 23424532),
(4, 'raboudi', 'raboudi', 'raboudi@gmail.com', NULL, NULL, NULL, 123456789),
(5, 'raboudi', 'raboudi', 'raboudi@gmail.com', NULL, NULL, NULL, 123456789),
(6, '11111', '111', 'raboudi@gmail.com', NULL, NULL, NULL, 1111),
(13, 'Hlaili', 'mouda', 'mouda@gmail.com', NULL, NULL, NULL, 1233444),
(15, 'rab', 'wafa', 'raboudi@gmail.com', NULL, NULL, NULL, 2098712),
(16, 'TEST', 'TEST', 'test@gmal.com', NULL, NULL, NULL, 3421),
(17, 'TEST', 'TEST', 'test@gmal.com', NULL, NULL, NULL, 3421),
(18, '', '', '', NULL, NULL, NULL, 0),
(19, '', '', '', NULL, NULL, NULL, 0),
(20, '', '', '', NULL, NULL, NULL, 0),
(21, 'TEST', 'TEST', 'test@gmal.com', NULL, NULL, NULL, 1111),
(22, 'TEST', 'TEST', 'test@gmal.com', NULL, NULL, NULL, 1111),
(23, 'TEST', 'TEST', 'test@gmal.com', NULL, NULL, NULL, 1111),
(24, 'TEST3', 'TEST3', 'test@gmal.com', NULL, NULL, NULL, 3333),
(25, 'raboudi', 'raboudi', 'raboudi@gmail.com', NULL, NULL, NULL, 3333),
(26, 'rab', 'wafa', 'raboudi@gmail.com', NULL, NULL, NULL, 3333),
(27, 'Hlaili', 'mouda', 'mouda@gmail.com', NULL, NULL, NULL, 3421);

-- --------------------------------------------------------

--
-- Structure de la table `commende`
--

CREATE TABLE IF NOT EXISTS `commende` (
  `id_commende` int(11) NOT NULL AUTO_INCREMENT,
  `Adresse_depart` varchar(250) NOT NULL,
  `Adresse_arrive` varchar(250) NOT NULL,
  `Date` date NOT NULL,
  `Heure` time NOT NULL,
  `type_voiture` varchar(50) NOT NULL,
  `nb_place_dispo` int(11) NOT NULL,
  `nb_ouvruer` int(11) NOT NULL,
  `typeClient` varchar(50) NOT NULL,
  `n_cmd` varchar(50) NOT NULL,
  `prix` float NOT NULL,
  `n_facture` varchar(50) NOT NULL,
  `client_id_client` int(11) DEFAULT NULL,
  `transporteur_Id_Transporteur` int(11) DEFAULT NULL,
  `partenaire_id_partenaire` int(11) DEFAULT NULL,
  `etatCmd` int(11) NOT NULL,
  PRIMARY KEY (`id_commende`),
  KEY `FK_commende_client` (`client_id_client`),
  KEY `FK_commende_transporteur` (`transporteur_Id_Transporteur`),
  KEY `FK_commende_partenaire` (`partenaire_id_partenaire`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Contenu de la table `commende`
--

INSERT INTO `commende` (`id_commende`, `Adresse_depart`, `Adresse_arrive`, `Date`, `Heure`, `type_voiture`, `nb_place_dispo`, `nb_ouvruer`, `typeClient`, `n_cmd`, `prix`, `n_facture`, `client_id_client`, `transporteur_Id_Transporteur`, `partenaire_id_partenaire`, `etatCmd`) VALUES
(2, 'dar chaabene', 'hammamet', '2019-09-18', '12:00:00', '3', 0, 0, 'partenaire', '123', 54, '56', 2, 1, 1, 4),
(25, ' Nabeul', 'dar chaabene', '2020-01-20', '08:46:00', '3', 1, 1, 'partenaire', '124', 12, '', 16, 1, 1, 3),
(26, 'nabeul', 'nabeul', '2019-09-25', '00:00:22', '1', 1, 1, 'partenaire', '125', 23, 'F34', 13, NULL, 1, 3),
(30, 'Porto, Portugal', 'PortimÃ£o, Portugal', '2029-09-20', '08:47:00', '1', 1, 1, 'partenaire', '126', 12, '2134', 21, NULL, 1, 4),
(31, 'Playa del Carmen, Quintana Roo, Mexique', 'Pensacola, Floride, Ã‰tats-Unis', '2029-09-20', '08:47:00', '1', 1, 1, 'partenaire', '127', 12, '2134', 21, NULL, 1, 2),
(32, 'Santander, Espagne', 'SS Rotterdam, 3e Katendrechtse Hoofd, Rotterdam, Pays-Bas', '2029-09-20', '08:47:00', '1', 1, 1, 'partenaire', '128', 12, '2134', 21, NULL, 1, 1),
(33, 'LogroÃ±o, Espagne', 'Laboratoire PMMH ESPCI Paris CNRS, Quai Saint-Bernard, Paris, France', '2006-10-20', '12:11:00', '2', 1, 0, 'partenaire', '129', 12, '2134', 24, 1, 1, 4),
(34, 'Playa del Carmen, Quintana Roo, Mexique', 'PPG Paints Arena, Fifth Avenue, Pittsburgh, Pennsylvanie, Ã‰tats-Unis', '2019-11-20', '08:07:00', '3', 1, 0, 'partenaire', 'c25', 12, 'F23', 25, 1, 1, 3),
(35, 'Jersey City, New Jersey, Ã‰tats-Unis', 'Jacksonville, Floride, Ã‰tats-Unis', '2019-12-20', '08:07:00', '3', 0, 0, 'partenaire', 'c25', 12, '2134', 25, 1, 1, -1),
(36, 'Las Vegas, Nevada, Ã‰tats-Unis', 'Lima, PÃ©rou', '2020-01-20', '08:10:00', '3', 1, 1, 'partenaire', 'c27', 12, '2134', 27, 1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

CREATE TABLE IF NOT EXISTS `partenaire` (
  `id_partenaire` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ste` varchar(250) NOT NULL DEFAULT '0',
  `responsable` varchar(250) NOT NULL DEFAULT '0',
  `tel` varchar(250) NOT NULL DEFAULT '0',
  `email` varchar(250) NOT NULL DEFAULT '0',
  `adresse` varchar(250) NOT NULL DEFAULT '0',
  `psudo` varchar(250) NOT NULL DEFAULT '0',
  `pwd` varchar(250) NOT NULL DEFAULT '0',
  `siteweb` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_partenaire`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `partenaire`
--

INSERT INTO `partenaire` (`id_partenaire`, `nom_ste`, `responsable`, `tel`, `email`, `adresse`, `psudo`, `pwd`, `siteweb`, `logo`) VALUES
(1, 'meublatex', 'wafa raboudi', '72123123', 'meublatex@gmail.com', ' Nabeul', 'part', 'part', 'www.meublatex.com', 'https://www.keejob.com/media/recruiter/recruiter_5832/logo_20140416-082844.jpg'),
(2, 'ikea', 'iksqd0', '0', '0', '0', 'ikea', 'ikea', '', 'https://static.dezeen.com/uploads/2019/04/ikea-logo-new-hero-1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE IF NOT EXISTS `reclamation` (
  `id_Reclamation` int(11) NOT NULL AUTO_INCREMENT,
  `Message` text NOT NULL,
  `type_compte` varchar(50) NOT NULL,
  `commende_id_commende` int(11) NOT NULL,
  `date_reclamation` date NOT NULL,
  PRIMARY KEY (`id_Reclamation`),
  KEY `FK_reclamation_commende` (`commende_id_commende`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `reclamation`
--

INSERT INTO `reclamation` (`id_Reclamation`, `Message`, `type_compte`, `commende_id_commende`, `date_reclamation`) VALUES
(3, 'retard', 'Client', 2, '2019-11-17');

-- --------------------------------------------------------

--
-- Structure de la table `transporteur`
--

CREATE TABLE IF NOT EXISTS `transporteur` (
  `Id_Transporteur` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(250) NOT NULL,
  `Prenom` varchar(250) NOT NULL,
  `Date_naiss` date NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Adresse` varchar(250) NOT NULL,
  `Matricule` varchar(250) NOT NULL,
  `Type_Voiture` varchar(250) NOT NULL,
  `Pseudo` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Telephone` int(11) NOT NULL,
  `Cin` int(11) NOT NULL,
  `Etat_compte` int(20) NOT NULL,
  PRIMARY KEY (`Id_Transporteur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `transporteur`
--

INSERT INTO `transporteur` (`Id_Transporteur`, `Nom`, `Prenom`, `Date_naiss`, `Email`, `Adresse`, `Matricule`, `Type_Voiture`, `Pseudo`, `Password`, `Telephone`, `Cin`, `Etat_compte`) VALUES
(1, 'ennour', 'rim', '2019-11-12', 'rima@gmail.com', 'hammamet', 'jh', '3', 'rima', 'rima', 2345321, 0, 0);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commende`
--
ALTER TABLE `commende`
  ADD CONSTRAINT `FK_commende_client` FOREIGN KEY (`client_id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `FK_commende_partenaire` FOREIGN KEY (`partenaire_id_partenaire`) REFERENCES `partenaire` (`id_partenaire`),
  ADD CONSTRAINT `FK_commende_transporteur` FOREIGN KEY (`transporteur_Id_Transporteur`) REFERENCES `transporteur` (`Id_Transporteur`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `FK_reclamation_commende` FOREIGN KEY (`commende_id_commende`) REFERENCES `commende` (`id_commende`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
