/*
SQLyog Ultimate v9.50 
MySQL - 5.5.20-log : Database - jfeed_development
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `jobs` */

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ad_posting_on` date DEFAULT NULL,
  `ad_expires_on` date DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsibility` text COLLATE utf8_unicode_ci,
  `skill` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `jobs` */

insert  into `jobs`(`id`,`company_name`,`company_website`,`position`,`experience`,`location`,`ad_posting_on`,`ad_expires_on`,`qualification`,`contact_name`,`contact_email`,`contact_number`,`responsibility`,`skill`,`created_at`,`updated_at`) values (1,'BROADRIDGE FINANCIAL SOLUTIONS (INDIA) PVT LTD','www.broadridge.com','Technical Associate','Fresher','Hyderabad','2012-12-24','2012-12-24','BCA /B.Sc / M.Sc Computer Science only, 2011 or 2012 pass-out only','Naveen ','123@gmail.com','8123456789','Good knowledge of MS Office is essential.\r\n\r\nSound Technical Skills .\r\n\r\nWilling to work in Night Shifts\r\n\r\nA fast learner, team player and committed.\r\n\r\nGood interpersonal, communication and strong analytical skills are a must.\r\n\r\nAvailable to join immediately\r\n\r\nThis is Night shift job with limited cab facility,\r\n\r\nCarry one updated CV, Photograph, Id Proof.\r\n\r\nPlease meet us on 26th & 27th Dec 2012 for series of test and personal interview between 10:30 - 12:00 PM .','Broadridge Financial Solutions (India) Private Limited, with 1300+ associates is a fully owned subsidiary of Broadridge Financial Solutions, Inc. (\"Broadridge\", NYSE: BR) formerly ADP Brokerage Services Group. Broadridge is an industry leader with nearly $2.2 billion in revenue. We specialize in areas of services to the financial services industry: investor communications and securities processing. Building on its large clientele, and buoyed by a strong leadership at its helm, Broadridge is committed to aggressively pursue its ideals of maintaining product leadership and focus on bringing in more business, driving growth and creating even greater value for its shareholders and associates.','2012-12-24 18:13:05','2012-12-24 18:13:05'),(2,'BROADRIDGE FINANCIAL SOLUTIONS (INDIA) PVT LTD','www.broadridge.com','Technical Associate','Fresher','Hyderabad','2012-12-24','2012-12-24','','Naveen','123@gmail.com','8123456789','','','2012-12-24 18:51:26','2012-12-24 18:51:26');

/*Table structure for table `schema_migrations` */

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `schema_migrations` */

insert  into `schema_migrations`(`version`) values ('20121224180226'),('20121225062443'),('20121225062852');

/*Table structure for table `users` */

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hashed_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`hashed_password`,`salt`,`created_at`,`updated_at`) values (1,'admin','297e7f45ded842db9cb8416e7bfa6c0519e21df51bc63705289e9ed5bc692a16','360111960.6192743953130807','2012-12-25 07:35:40','2012-12-25 07:35:40');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
