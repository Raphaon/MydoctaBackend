/*
SQLyog Trial v12.4.3 (32 bit)
MySQL - 5.6.17 : Database - mydocta_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mydocta_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mydocta_db`;

/*Table structure for table `administrateur` */

DROP TABLE IF EXISTS `administrateur`;

CREATE TABLE `administrateur` (
  `id_administrateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` int(11) DEFAULT '0',
  `prenom` int(11) DEFAULT '0',
  `pseudo` int(11) DEFAULT '0',
  `mot_de_passe` int(11) DEFAULT '0',
  `adresse_email` int(11) DEFAULT '0',
  PRIMARY KEY (`id_administrateur`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

/*Data for the table `administrateur` */

/*Table structure for table `api_user` */

DROP TABLE IF EXISTS `api_user`;

CREATE TABLE `api_user` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `apiUsername` varchar(80) NOT NULL,
  `email_adress` varchar(80) DEFAULT NULL,
  `appName` varchar(80) NOT NULL,
  `apiKey` varchar(200) NOT NULL,
  PRIMARY KEY (`api_id`),
  UNIQUE KEY `apiKey` (`apiKey`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `api_user` */

insert  into `api_user`(`api_id`,`apiUsername`,`email_adress`,`appName`,`apiKey`) values 
(1,'Mydocta',NULL,'MyDocta','fd66a52fdc7ed8509d12e734c108e9f294923b6d'),
(2,'my awesome app','tztq@dsfs.sdf','my awesome docta app test','88514ef95c0f7dbc29e68e06c1878faed168b4ee'),
(4,'rapha test','test@test','my doctat ttest','97cb5866e953bc98ac3526af8fd81dd51be65201'),
(5,'juste test app','justetst@sdhgj.cm','mon app test','b63f90b8073d794397ab3cc34b69959c64be54c1');

/*Table structure for table `astuce` */

DROP TABLE IF EXISTS `astuce`;

CREATE TABLE `astuce` (
  `id_astuce` int(11) NOT NULL AUTO_INCREMENT,
  `titre` char(50) DEFAULT NULL,
  `description` char(50) DEFAULT NULL,
  `media` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_astuce`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

/*Data for the table `astuce` */

/*Table structure for table `authentification` */

DROP TABLE IF EXISTS `authentification`;

CREATE TABLE `authentification` (
  `id_fiche` int(11) DEFAULT NULL,
  `date_authentification` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK__fiche_medicale` (`id_fiche`),
  CONSTRAINT `FK__fiche_medicale` FOREIGN KEY (`id_fiche`) REFERENCES `fiche_medicale` (`id_fiche_medicale`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

/*Data for the table `authentification` */

/*Table structure for table `avoir` */

DROP TABLE IF EXISTS `avoir`;

CREATE TABLE `avoir` (
  `id_fiche` int(11) DEFAULT NULL,
  `id_patient` int(11) DEFAULT NULL,
  KEY `FK__patient_` (`id_patient`),
  KEY `FK_avoir_fiche_medicale` (`id_fiche`),
  CONSTRAINT `FK__patient_` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id_patient`),
  CONSTRAINT `FK_avoir_fiche_medicale` FOREIGN KEY (`id_fiche`) REFERENCES `fiche_medicale` (`id_fiche_medicale`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

/*Data for the table `avoir` */

/*Table structure for table `categorieexamen` */

DROP TABLE IF EXISTS `categorieexamen`;

CREATE TABLE `categorieexamen` (
  `id_cat` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `categorieexamen` */

insert  into `categorieexamen`(`id_cat`,`libelle`) values 
(1,'BACTERIOLOGIE'),
(2,'HEMATOLOGIE'),
(3,'BIOCHIMIE'),
(4,'PARASITOLOGIE'),
(5,'AUTRES');

/*Table structure for table `delivrer` */

DROP TABLE IF EXISTS `delivrer`;

CREATE TABLE `delivrer` (
  `id_hopital` int(11) DEFAULT NULL,
  `id_fiche` int(11) DEFAULT NULL,
  `date_delivrance` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK_delivrer_structure_hospitaliere` (`id_hopital`),
  KEY `FK_delivrer_fiche_medicale` (`id_fiche`),
  CONSTRAINT `FK_delivrer_fiche_medicale` FOREIGN KEY (`id_fiche`) REFERENCES `fiche_medicale` (`id_fiche_medicale`),
  CONSTRAINT `FK_delivrer_structure_hospitaliere` FOREIGN KEY (`id_hopital`) REFERENCES `structure_hospitaliere` (`id_hopital`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

/*Data for the table `delivrer` */

/*Table structure for table `examen` */

DROP TABLE IF EXISTS `examen`;

CREATE TABLE `examen` (
  `id_examen` int(11) NOT NULL AUTO_INCREMENT,
  `intitule_examen` varchar(80) NOT NULL,
  `codeExamen` varchar(60) DEFAULT NULL,
  `abreviation` varchar(60) DEFAULT NULL,
  `conditionDePriseExamen` varchar(60) DEFAULT NULL,
  `codeCatExamen` int(11) NOT NULL,
  PRIMARY KEY (`id_examen`),
  KEY `fk_categorie_exam` (`codeCatExamen`),
  CONSTRAINT `fk_categorie_exam` FOREIGN KEY (`codeCatExamen`) REFERENCES `categorieexamen` (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

/*Data for the table `examen` */

insert  into `examen`(`id_examen`,`intitule_examen`,`codeExamen`,`abreviation`,`conditionDePriseExamen`,`codeCatExamen`) values 
(2,'COPROCULTURE',NULL,NULL,NULL,1),
(3,'CULOT URINAIRE   ',NULL,NULL,NULL,1),
(4,'ECBU',NULL,NULL,NULL,1),
(5,'ECBU+ATB',NULL,NULL,NULL,1),
(6,'HEMOCULTURE',NULL,NULL,NULL,1),
(7,'LCR+ATB',NULL,NULL,NULL,1),
(8,'LIQUIDE ARTICULAIRE',NULL,NULL,NULL,1),
(9,'LIQUIDE D’ASCITE',NULL,NULL,NULL,1),
(10,'MYCOPLASME UROGENITALE',NULL,NULL,NULL,1),
(11,'PCV',NULL,NULL,NULL,1),
(12,'PCV+ATB',NULL,NULL,NULL,1),
(13,'PRELVEMENT DE GORGE, NASAL, YEUX',NULL,NULL,NULL,1),
(14,'PRELEVEMENT URETHRAL(PU)',NULL,NULL,NULL,1),
(15,'PU+ATB',NULL,NULL,NULL,1),
(16,'PUS+ATB',NULL,NULL,NULL,1),
(17,'SERREUSE',NULL,NULL,NULL,1),
(18,'ELECTROPHORESE DE L’HB',NULL,NULL,NULL,2),
(19,'GROUP SANGUIN ABO+RH',NULL,NULL,NULL,2),
(20,'NFS',NULL,NULL,NULL,2),
(21,'RECHERCHE DE MICROFILAIRE',NULL,NULL,NULL,2),
(22,'FROTTIS SANGUIN',NULL,NULL,NULL,2),
(23,'TAUX DE RETICULOCYTE',NULL,NULL,NULL,2),
(24,'TP, TCK',NULL,NULL,NULL,2),
(25,'VS',NULL,NULL,NULL,2),
(26,' TEMPS DE SAIGNEMENT',NULL,NULL,NULL,2),
(27,'ALAT,',NULL,NULL,NULL,3),
(28,'ALB/SUCRE URINAIRE',NULL,NULL,NULL,3),
(29,'ALBUMINEMIE',NULL,NULL,NULL,3),
(30,'AMYLASEMIE',NULL,NULL,NULL,3),
(31,'ASAT',NULL,NULL,NULL,3),
(32,'ACIDE URIQUE',NULL,NULL,NULL,3),
(33,'BILIRUBIN TOTAL',NULL,NULL,NULL,3),
(34,'BILIRUBIN CONJUGE',NULL,NULL,NULL,3),
(35,'CALCEMIE',NULL,NULL,NULL,3),
(36,'COMBI 11',NULL,NULL,NULL,3),
(37,'PROFILE LIPIDIQUE',NULL,NULL,NULL,3),
(38,'CREATININE',NULL,NULL,NULL,3),
(39,'GAMMA GT',NULL,NULL,NULL,3),
(40,'GLYCEMIE',NULL,NULL,NULL,3),
(41,'IONOGRAMME SANGUIN SIMPLE',NULL,NULL,NULL,3),
(42,'MAGNESEMIE ',NULL,NULL,NULL,3),
(43,'PHOSPHATASE ALKALINE ',NULL,NULL,NULL,3),
(44,'UREE ',NULL,NULL,NULL,3),
(45,'HEMOGLOBIN GLYQUEE ',NULL,NULL,NULL,3),
(46,'PROTEINES TOTALES',NULL,NULL,NULL,3),
(47,'SANG OCCULT DANS LES SELLES',NULL,NULL,NULL,4),
(48,'SCOTCH TEST ',NULL,NULL,NULL,4),
(49,'COPROLOGIE ',NULL,NULL,NULL,4),
(50,'GE/TDR PALU ',NULL,NULL,NULL,4),
(51,'SKIN SNIP',NULL,NULL,NULL,4),
(52,'SEROLOGIE',NULL,NULL,NULL,4),
(53,'AcHBc',NULL,NULL,NULL,4),
(54,'AcHBe',NULL,NULL,NULL,4),
(55,'AcHBs',NULL,NULL,NULL,4),
(56,'AcHCV ',NULL,NULL,NULL,4),
(57,'AgHBs ',NULL,NULL,NULL,4),
(58,'ASLO ',NULL,NULL,NULL,4),
(59,'CHLAMYDIA (IgG,IgM) ',NULL,NULL,NULL,4),
(60,'CRP',NULL,NULL,NULL,4),
(61,'FACTEUR RHEUMATOIDE',NULL,NULL,NULL,4),
(62,'H.PYLORI (IgG,IgM)',NULL,NULL,NULL,4),
(63,'HERPES 1,2(IgG,IgM)',NULL,NULL,NULL,4),
(64,' PSA (T,L) ',NULL,NULL,NULL,4),
(65,'RUBEOLE (IgG,IgM) ',NULL,NULL,NULL,4),
(66,'TOXO (IgG,IgM) ',NULL,NULL,NULL,4),
(67,'TPHA/VDRL  ',NULL,NULL,NULL,4),
(68,'VIH  ',NULL,NULL,NULL,4),
(69,'Beta HCG ',NULL,NULL,NULL,4),
(70,'WIDAL',NULL,NULL,NULL,4);

/*Table structure for table `fiche_medicale` */

DROP TABLE IF EXISTS `fiche_medicale`;

CREATE TABLE `fiche_medicale` (
  `id_fiche_medicale` int(11) NOT NULL AUTO_INCREMENT,
  `nom_examen` char(50) DEFAULT NULL,
  `diagnostique` varchar(500) DEFAULT NULL,
  `traitement` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_fiche_medicale`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

/*Data for the table `fiche_medicale` */

/*Table structure for table `medecin` */

DROP TABLE IF EXISTS `medecin`;

CREATE TABLE `medecin` (
  `id_medecin` int(11) NOT NULL AUTO_INCREMENT,
  `nom` char(50) DEFAULT '0',
  `pseudo` char(50) DEFAULT '0',
  `mot_de_passe` char(50) DEFAULT '0',
  `adresse_email` char(50) DEFAULT '0',
  PRIMARY KEY (`id_medecin`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

/*Data for the table `medecin` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id_patient` int(100) NOT NULL AUTO_INCREMENT,
  `nom` char(50) DEFAULT NULL,
  `prenom` char(50) DEFAULT NULL,
  `mot_de_passe` char(50) DEFAULT NULL,
  `adresse_email` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_patient`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

/*Data for the table `patient` */

/*Table structure for table `poster` */

DROP TABLE IF EXISTS `poster`;

CREATE TABLE `poster` (
  `id_astuce` int(11) DEFAULT NULL,
  `date_publication` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `FK__astuce` (`id_astuce`),
  CONSTRAINT `FK__astuce` FOREIGN KEY (`id_astuce`) REFERENCES `astuce` (`id_astuce`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

/*Data for the table `poster` */

/*Table structure for table `programme` */

DROP TABLE IF EXISTS `programme`;

CREATE TABLE `programme` (
  `id_programme` int(11) NOT NULL AUTO_INCREMENT,
  `jour_service` varchar(60) NOT NULL,
  `heureDebut` varchar(60) DEFAULT NULL,
  `heureFin` varchar(60) DEFAULT NULL,
  `serviceReff` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_programme`),
  KEY `fk_servicereff` (`serviceReff`),
  CONSTRAINT `fk_servicereff` FOREIGN KEY (`serviceReff`) REFERENCES `service` (`code_Service`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `programme` */

insert  into `programme`(`id_programme`,`jour_service`,`heureDebut`,`heureFin`,`serviceReff`) values 
(1,'LUNDI','08:00','16:30','PHA01'),
(2,'MARDI','80:00','17:00','PHA01');

/*Table structure for table `service` */

DROP TABLE IF EXISTS `service`;

CREATE TABLE `service` (
  `code_Service` varchar(60) NOT NULL,
  `nom_service` varchar(60) NOT NULL,
  `descritionService` text,
  PRIMARY KEY (`code_Service`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `service` */

/*Table structure for table `sheet1$` */

DROP TABLE IF EXISTS `sheet1$`;

CREATE TABLE `sheet1$` (
  `id_examen` double DEFAULT NULL,
  `intitule_examen` varchar(255) DEFAULT NULL,
  `codeExamen` varchar(255) DEFAULT NULL,
  `abreviation` varchar(255) DEFAULT NULL,
  `conditionDePriseExamen` varchar(255) DEFAULT NULL,
  `codeCatExamen` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sheet1$` */

insert  into `sheet1$`(`id_examen`,`intitule_examen`,`codeExamen`,`abreviation`,`conditionDePriseExamen`,`codeCatExamen`) values 
(2,'COPROCULTURE',NULL,NULL,NULL,1),
(3,'CULOT URINAIRE   ',NULL,NULL,NULL,1),
(4,'ECBU',NULL,NULL,NULL,1),
(5,'ECBU+ATB',NULL,NULL,NULL,1),
(6,'HEMOCULTURE',NULL,NULL,NULL,1),
(7,'LCR+ATB',NULL,NULL,NULL,1),
(8,'LIQUIDE ARTICULAIRE',NULL,NULL,NULL,1),
(9,'LIQUIDE D’ASCITE',NULL,NULL,NULL,1),
(10,'MYCOPLASME UROGENITALE',NULL,NULL,NULL,1),
(11,'PCV',NULL,NULL,NULL,1),
(12,'PCV+ATB',NULL,NULL,NULL,1),
(13,'PRELVEMENT DE GORGE, NASAL, YEUX',NULL,NULL,NULL,1),
(14,'PRELEVEMENT URETHRAL(PU)',NULL,NULL,NULL,1),
(15,'PU+ATB',NULL,NULL,NULL,1),
(16,'PUS+ATB',NULL,NULL,NULL,1),
(17,'SERREUSE',NULL,NULL,NULL,1),
(18,'ELECTROPHORESE DE L’HB',NULL,NULL,NULL,2),
(19,'GROUP SANGUIN ABO+RH',NULL,NULL,NULL,2),
(20,'NFS',NULL,NULL,NULL,2),
(21,'RECHERCHE DE MICROFILAIRE',NULL,NULL,NULL,2),
(22,'FROTTIS SANGUIN',NULL,NULL,NULL,2),
(23,'TAUX DE RETICULOCYTE',NULL,NULL,NULL,2),
(24,'TP, TCK',NULL,NULL,NULL,2),
(25,'VS',NULL,NULL,NULL,2),
(26,' TEMPS DE SAIGNEMENT',NULL,NULL,NULL,2),
(27,'ALAT,',NULL,NULL,NULL,3),
(28,'ALB/SUCRE URINAIRE',NULL,NULL,NULL,3),
(29,'ALBUMINEMIE',NULL,NULL,NULL,3),
(30,'AMYLASEMIE',NULL,NULL,NULL,3),
(31,'ASAT',NULL,NULL,NULL,3),
(32,'ACIDE URIQUE',NULL,NULL,NULL,3),
(33,'BILIRUBIN TOTAL',NULL,NULL,NULL,3),
(34,'BILIRUBIN CONJUGE',NULL,NULL,NULL,3),
(35,'CALCEMIE',NULL,NULL,NULL,3),
(36,'COMBI 11',NULL,NULL,NULL,3),
(37,'PROFILE LIPIDIQUE',NULL,NULL,NULL,3),
(38,'CREATININE',NULL,NULL,NULL,3),
(39,'GAMMA GT',NULL,NULL,NULL,3),
(40,'GLYCEMIE',NULL,NULL,NULL,3),
(41,'IONOGRAMME SANGUIN SIMPLE',NULL,NULL,NULL,3),
(42,'MAGNESEMIE ',NULL,NULL,NULL,3),
(43,'PHOSPHATASE ALKALINE ',NULL,NULL,NULL,3),
(44,'UREE ',NULL,NULL,NULL,3),
(45,'HEMOGLOBIN GLYQUEE ',NULL,NULL,NULL,3),
(46,'PROTEINES TOTALES',NULL,NULL,NULL,3),
(46,'SANG OCCULT DANS LES SELLES',NULL,NULL,NULL,4),
(46,'SCOTCH TEST ',NULL,NULL,NULL,4),
(46,'COPROLOGIE ',NULL,NULL,NULL,4),
(46,'GE/TDR PALU ',NULL,NULL,NULL,4),
(46,'SKIN SNIP',NULL,NULL,NULL,4),
(46,'SEROLOGIE',NULL,NULL,NULL,4),
(46,'AcHBc',NULL,NULL,NULL,4),
(46,'AcHBe',NULL,NULL,NULL,4),
(46,'AcHBs',NULL,NULL,NULL,4),
(46,'AcHCV ',NULL,NULL,NULL,4),
(46,'AgHBs ',NULL,NULL,NULL,4),
(46,'ASLO ',NULL,NULL,NULL,4),
(46,'CHLAMYDIA (IgG,IgM) ',NULL,NULL,NULL,4),
(46,'CRP',NULL,NULL,NULL,4),
(46,'FACTEUR RHEUMATOIDE',NULL,NULL,NULL,4),
(46,'H.PYLORI (IgG,IgM)',NULL,NULL,NULL,4),
(46,'HERPES 1,2(IgG,IgM)',NULL,NULL,NULL,4),
(46,' PSA (T,L) ',NULL,NULL,NULL,4),
(46,'RUBEOLE (IgG,IgM) ',NULL,NULL,NULL,4),
(46,'TOXO (IgG,IgM) ',NULL,NULL,NULL,4),
(46,'TPHA/VDRL  ',NULL,NULL,NULL,4),
(46,'VIH  ',NULL,NULL,NULL,4),
(46,'Beta HCG ',NULL,NULL,NULL,4),
(46,'WIDAL',NULL,NULL,NULL,4),
(2,'COPROCULTURE',NULL,NULL,NULL,1),
(3,'CULOT URINAIRE   ',NULL,NULL,NULL,1),
(4,'ECBU',NULL,NULL,NULL,1),
(5,'ECBU+ATB',NULL,NULL,NULL,1),
(6,'HEMOCULTURE',NULL,NULL,NULL,1),
(7,'LCR+ATB',NULL,NULL,NULL,1),
(8,'LIQUIDE ARTICULAIRE',NULL,NULL,NULL,1),
(9,'LIQUIDE D’ASCITE',NULL,NULL,NULL,1),
(10,'MYCOPLASME UROGENITALE',NULL,NULL,NULL,1),
(11,'PCV',NULL,NULL,NULL,1),
(12,'PCV+ATB',NULL,NULL,NULL,1),
(13,'PRELVEMENT DE GORGE, NASAL, YEUX',NULL,NULL,NULL,1),
(14,'PRELEVEMENT URETHRAL(PU)',NULL,NULL,NULL,1),
(15,'PU+ATB',NULL,NULL,NULL,1),
(16,'PUS+ATB',NULL,NULL,NULL,1),
(17,'SERREUSE',NULL,NULL,NULL,1),
(18,'ELECTROPHORESE DE L’HB',NULL,NULL,NULL,2),
(19,'GROUP SANGUIN ABO+RH',NULL,NULL,NULL,2),
(20,'NFS',NULL,NULL,NULL,2),
(21,'RECHERCHE DE MICROFILAIRE',NULL,NULL,NULL,2),
(22,'FROTTIS SANGUIN',NULL,NULL,NULL,2),
(23,'TAUX DE RETICULOCYTE',NULL,NULL,NULL,2),
(24,'TP, TCK',NULL,NULL,NULL,2),
(25,'VS',NULL,NULL,NULL,2),
(26,' TEMPS DE SAIGNEMENT',NULL,NULL,NULL,2),
(27,'ALAT,',NULL,NULL,NULL,3),
(28,'ALB/SUCRE URINAIRE',NULL,NULL,NULL,3),
(29,'ALBUMINEMIE',NULL,NULL,NULL,3),
(30,'AMYLASEMIE',NULL,NULL,NULL,3),
(31,'ASAT',NULL,NULL,NULL,3),
(32,'ACIDE URIQUE',NULL,NULL,NULL,3),
(33,'BILIRUBIN TOTAL',NULL,NULL,NULL,3),
(34,'BILIRUBIN CONJUGE',NULL,NULL,NULL,3),
(35,'CALCEMIE',NULL,NULL,NULL,3),
(36,'COMBI 11',NULL,NULL,NULL,3),
(37,'PROFILE LIPIDIQUE',NULL,NULL,NULL,3),
(38,'CREATININE',NULL,NULL,NULL,3),
(39,'GAMMA GT',NULL,NULL,NULL,3),
(40,'GLYCEMIE',NULL,NULL,NULL,3),
(41,'IONOGRAMME SANGUIN SIMPLE',NULL,NULL,NULL,3),
(42,'MAGNESEMIE ',NULL,NULL,NULL,3),
(43,'PHOSPHATASE ALKALINE ',NULL,NULL,NULL,3),
(44,'UREE ',NULL,NULL,NULL,3),
(45,'HEMOGLOBIN GLYQUEE ',NULL,NULL,NULL,3),
(46,'PROTEINES TOTALES',NULL,NULL,NULL,3),
(46,'SANG OCCULT DANS LES SELLES',NULL,NULL,NULL,4),
(46,'SCOTCH TEST ',NULL,NULL,NULL,4),
(46,'COPROLOGIE ',NULL,NULL,NULL,4),
(46,'GE/TDR PALU ',NULL,NULL,NULL,4),
(46,'SKIN SNIP',NULL,NULL,NULL,4),
(46,'SEROLOGIE',NULL,NULL,NULL,4),
(46,'AcHBc',NULL,NULL,NULL,4),
(46,'AcHBe',NULL,NULL,NULL,4),
(46,'AcHBs',NULL,NULL,NULL,4),
(46,'AcHCV ',NULL,NULL,NULL,4),
(46,'AgHBs ',NULL,NULL,NULL,4),
(46,'ASLO ',NULL,NULL,NULL,4),
(46,'CHLAMYDIA (IgG,IgM) ',NULL,NULL,NULL,4),
(46,'CRP',NULL,NULL,NULL,4),
(46,'FACTEUR RHEUMATOIDE',NULL,NULL,NULL,4),
(46,'H.PYLORI (IgG,IgM)',NULL,NULL,NULL,4),
(46,'HERPES 1,2(IgG,IgM)',NULL,NULL,NULL,4),
(46,' PSA (T,L) ',NULL,NULL,NULL,4),
(46,'RUBEOLE (IgG,IgM) ',NULL,NULL,NULL,4),
(46,'TOXO (IgG,IgM) ',NULL,NULL,NULL,4),
(46,'TPHA/VDRL  ',NULL,NULL,NULL,4),
(46,'VIH  ',NULL,NULL,NULL,4),
(46,'Beta HCG ',NULL,NULL,NULL,4),
(46,'WIDAL',NULL,NULL,NULL,4);

/*Table structure for table `structure_hospitaliere` */

DROP TABLE IF EXISTS `structure_hospitaliere`;

CREATE TABLE `structure_hospitaliere` (
  `id_hopital` int(11) NOT NULL AUTO_INCREMENT,
  `nom` char(50) DEFAULT NULL,
  `pseudo` char(50) DEFAULT NULL,
  `mot_de_passe` char(50) DEFAULT NULL,
  `adresse_email` char(50) DEFAULT NULL,
  `nom_de_domaine_site` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_hopital`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

/*Data for the table `structure_hospitaliere` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phoneNumber` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActivate` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
