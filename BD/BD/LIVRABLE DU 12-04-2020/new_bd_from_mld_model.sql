-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.19 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour mydocta_db
CREATE DATABASE IF NOT EXISTS `mydocta_db` /*!40100 DEFAULT CHARACTER SET ucs2 */;
USE `mydocta_db`;

-- Export de la structure de la table mydocta_db. administrateur
CREATE TABLE IF NOT EXISTS `administrateur` (
  `id_administrateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` int(11) DEFAULT '0',
  `prenom` int(11) DEFAULT '0',
  `pseudo` int(11) DEFAULT '0',
  `mot_de_passe` int(11) DEFAULT '0',
  `adresse_email` int(11) DEFAULT '0',
  PRIMARY KEY (`id_administrateur`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.administrateur : ~0 rows (environ)
DELETE FROM `administrateur`;
/*!40000 ALTER TABLE `administrateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrateur` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. astuce
CREATE TABLE IF NOT EXISTS `astuce` (
  `id_astuce` int(11) NOT NULL AUTO_INCREMENT,
  `titre` char(50) DEFAULT NULL,
  `description` char(50) DEFAULT NULL,
  `media` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_astuce`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.astuce : ~0 rows (environ)
DELETE FROM `astuce`;
/*!40000 ALTER TABLE `astuce` DISABLE KEYS */;
/*!40000 ALTER TABLE `astuce` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. authentification
CREATE TABLE IF NOT EXISTS `authentification` (
  `id_fiche` int(11) DEFAULT NULL,
  `date_authentification` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK__fiche_medicale` (`id_fiche`),
  CONSTRAINT `FK__fiche_medicale` FOREIGN KEY (`id_fiche`) REFERENCES `fiche_medicale` (`id_fiche_medicale`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.authentification : ~0 rows (environ)
DELETE FROM `authentification`;
/*!40000 ALTER TABLE `authentification` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentification` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. avoir
CREATE TABLE IF NOT EXISTS `avoir` (
  `id_fiche` int(11) DEFAULT NULL,
  `id_patient` int(11) DEFAULT NULL,
  KEY `FK__patient_` (`id_patient`),
  KEY `FK_avoir_fiche_medicale` (`id_fiche`),
  CONSTRAINT `FK__patient_` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id_patient`),
  CONSTRAINT `FK_avoir_fiche_medicale` FOREIGN KEY (`id_fiche`) REFERENCES `fiche_medicale` (`id_fiche_medicale`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.avoir : ~0 rows (environ)
DELETE FROM `avoir`;
/*!40000 ALTER TABLE `avoir` DISABLE KEYS */;
/*!40000 ALTER TABLE `avoir` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. contenir
CREATE TABLE IF NOT EXISTS `contenir` (
  `id_service` int(100) NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK_contenir_service` (`id_service`),
  CONSTRAINT `FK_contenir_service` FOREIGN KEY (`id_service`) REFERENCES `service` (`id_service`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.contenir : ~0 rows (environ)
DELETE FROM `contenir`;
/*!40000 ALTER TABLE `contenir` DISABLE KEYS */;
/*!40000 ALTER TABLE `contenir` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. delivrer
CREATE TABLE IF NOT EXISTS `delivrer` (
  `id_hopital` int(11) DEFAULT NULL,
  `id_fiche` int(11) DEFAULT NULL,
  `date_delivrance` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK_delivrer_structure_hospitaliere` (`id_hopital`),
  KEY `FK_delivrer_fiche_medicale` (`id_fiche`),
  CONSTRAINT `FK_delivrer_fiche_medicale` FOREIGN KEY (`id_fiche`) REFERENCES `fiche_medicale` (`id_fiche_medicale`),
  CONSTRAINT `FK_delivrer_structure_hospitaliere` FOREIGN KEY (`id_hopital`) REFERENCES `structure_hospitaliere` (`id_hopital`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.delivrer : ~0 rows (environ)
DELETE FROM `delivrer`;
/*!40000 ALTER TABLE `delivrer` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivrer` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. fiche_medicale
CREATE TABLE IF NOT EXISTS `fiche_medicale` (
  `id_fiche_medicale` int(11) NOT NULL AUTO_INCREMENT,
  `nom_examen` char(50) DEFAULT NULL,
  `diagnostique` varchar(500) DEFAULT NULL,
  `traitement` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_fiche_medicale`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.fiche_medicale : ~0 rows (environ)
DELETE FROM `fiche_medicale`;
/*!40000 ALTER TABLE `fiche_medicale` DISABLE KEYS */;
/*!40000 ALTER TABLE `fiche_medicale` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. medecin
CREATE TABLE IF NOT EXISTS `medecin` (
  `id_medecin` int(11) NOT NULL AUTO_INCREMENT,
  `nom` char(50) DEFAULT '0',
  `pseudo` char(50) DEFAULT '0',
  `mot_de_passe` char(50) DEFAULT '0',
  `adresse_email` char(50) DEFAULT '0',
  PRIMARY KEY (`id_medecin`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.medecin : ~0 rows (environ)
DELETE FROM `medecin`;
/*!40000 ALTER TABLE `medecin` DISABLE KEYS */;
/*!40000 ALTER TABLE `medecin` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. modifier
CREATE TABLE IF NOT EXISTS `modifier` (
  `id_service` int(11) DEFAULT NULL,
  `date_modification` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK__service` (`id_service`),
  CONSTRAINT `FK__service` FOREIGN KEY (`id_service`) REFERENCES `service` (`id_service`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.modifier : ~0 rows (environ)
DELETE FROM `modifier`;
/*!40000 ALTER TABLE `modifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `modifier` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. patient
CREATE TABLE IF NOT EXISTS `patient` (
  `id_patient` int(100) NOT NULL AUTO_INCREMENT,
  `nom` char(50) DEFAULT NULL,
  `prenom` char(50) DEFAULT NULL,
  `mot_de_passe` char(50) DEFAULT NULL,
  `adresse_email` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_patient`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.patient : ~0 rows (environ)
DELETE FROM `patient`;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. poster
CREATE TABLE IF NOT EXISTS `poster` (
  `id_astuce` int(11) DEFAULT NULL,
  `date_publication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK__astuce` (`id_astuce`),
  CONSTRAINT `FK__astuce` FOREIGN KEY (`id_astuce`) REFERENCES `astuce` (`id_astuce`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.poster : ~0 rows (environ)
DELETE FROM `poster`;
/*!40000 ALTER TABLE `poster` DISABLE KEYS */;
/*!40000 ALTER TABLE `poster` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. service
CREATE TABLE IF NOT EXISTS `service` (
  `id_service` int(11) NOT NULL AUTO_INCREMENT,
  `nom` char(50) DEFAULT NULL,
  `prix` char(50) DEFAULT NULL,
  `fiche_technique` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.service : ~0 rows (environ)
DELETE FROM `service`;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;

-- Export de la structure de la table mydocta_db. structure_hospitaliere
CREATE TABLE IF NOT EXISTS `structure_hospitaliere` (
  `id_hopital` int(11) NOT NULL AUTO_INCREMENT,
  `nom` char(50) DEFAULT NULL,
  `pseudo` char(50) DEFAULT NULL,
  `mot_de_passe` char(50) DEFAULT NULL,
  `adresse_email` char(50) DEFAULT NULL,
  `nom_de_domaine_site` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_hopital`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- Export de données de la table mydocta_db.structure_hospitaliere : ~0 rows (environ)
DELETE FROM `structure_hospitaliere`;
/*!40000 ALTER TABLE `structure_hospitaliere` DISABLE KEYS */;
/*!40000 ALTER TABLE `structure_hospitaliere` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
