# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.43)
# Database: bot
# Generation Time: 2023-12-15 19:19:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table deals
# ------------------------------------------------------------

DROP TABLE IF EXISTS `deals`;

CREATE TABLE `deals` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_deal` int(20) NOT NULL,
  `id_buyer` int(30) NOT NULL,
  `buyer_username` varchar(30) DEFAULT NULL,
  `id_seller` int(30) NOT NULL,
  `seller_username` varchar(30) DEFAULT NULL,
  `amount` varchar(30) NOT NULL DEFAULT '',
  `currency` varchar(30) DEFAULT NULL,
  `crypto_wallet` varchar(60) DEFAULT NULL,
  `result_amount` varchar(30) DEFAULT NULL,
  `text` text NOT NULL,
  `is_finished` int(11) NOT NULL DEFAULT '0',
  `is_dispute` int(11) NOT NULL DEFAULT '0',
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `deals` WRITE;
/*!40000 ALTER TABLE `deals` DISABLE KEYS */;

INSERT INTO `deals` (`id`, `id_deal`, `id_buyer`, `buyer_username`, `id_seller`, `seller_username`, `amount`, `currency`, `crypto_wallet`, `result_amount`, `text`, `is_finished`, `is_dispute`, `dt`)
VALUES
	(1,11,1069151006,NULL,1618238236,NULL,'13 usdt',NULL,NULL,NULL,'!сделка норм',1,0,'2023-11-18 23:09:34'),
	(2,11,1069151006,NULL,1618238236,NULL,'13 usdt',NULL,NULL,NULL,'!сделка норм',0,0,'2023-11-19 00:59:05'),
	(3,34,1069151006,'Belarus_100proBTC',1618238236,'vomnedevil','99','btc',NULL,'106.92','!сделка о томе',0,0,'2023-12-10 21:10:46'),
	(4,35,1069151006,'Belarus_100proBTC',1618238236,'vomnedevil','23','usdt','TQCQ3ZoV5sDPBgDNxghRk628AKHYTW8RzJ','24.84','!сделка о бургере',0,0,'2023-12-12 23:09:17'),
	(6,36,1069151006,'Belarus_100proBTC',1618238236,'vomnedevil','100','eth','0x4956343ff81E661eF1582668AbB6aC2457676f36','108','!сделка на миллион',0,0,'2023-12-12 23:35:47');

/*!40000 ALTER TABLE `deals` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table search_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `search_history`;

CREATE TABLE `search_history` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_buyer` int(20) NOT NULL,
  `id_seller` int(20) DEFAULT NULL,
  `time_in` int(40) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `text` text,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `search_history` WRITE;
/*!40000 ALTER TABLE `search_history` DISABLE KEYS */;

INSERT INTO `search_history` (`id`, `id_buyer`, `id_seller`, `time_in`, `amount`, `currency`, `text`, `dt`)
VALUES
	(1,1069151006,1708504461,1700217974,'',NULL,'','2023-11-17 13:46:14'),
	(2,1069151006,1708504461,1700218485,'',NULL,'','2023-11-17 13:54:45'),
	(3,1069151006,1708504461,1700219225,'',NULL,'','2023-11-17 14:07:05'),
	(4,1069151006,1708504461,1700220809,'',NULL,'','2023-11-17 14:33:29'),
	(5,1069151006,1708504461,1700221477,'',NULL,'','2023-11-17 14:44:37'),
	(6,1069151006,1708504461,1700227918,'12btc',NULL,'!сделка о будке','2023-11-17 17:47:10'),
	(7,1069151006,1618238236,1700232514,'5btc',NULL,'!сделка о попе','2023-11-17 17:48:48'),
	(8,1069151006,1618238236,1700319250,'2btc',NULL,'!сделка о продаже','2023-11-18 17:59:05'),
	(9,1069151006,1618238236,1700319793,'12btc',NULL,'','2023-11-18 18:09:06'),
	(10,1069151006,1618238236,1700320206,'10btc',NULL,'!сделка о попе','2023-11-18 18:10:52'),
	(11,1069151006,1618238236,1700322471,'13 usdt',NULL,'!сделка норм','2023-11-18 18:48:27'),
	(12,1708504461,1618238236,1700324268,'',NULL,'','2023-11-18 19:17:48'),
	(13,1069151006,1618238236,1700342147,'4btc',NULL,'!сделка о попе','2023-11-19 00:16:27'),
	(14,1069151006,1618238236,1700345007,'6btc',NULL,'!сделка о маке','2023-11-19 01:04:47'),
	(15,1069151006,1618238236,1701682829,'3btc',NULL,'!сделка о маке','2023-12-04 12:42:14'),
	(16,1701945737,NULL,NULL,NULL,NULL,NULL,'2023-12-07 13:42:17'),
	(17,1069151006,1708504461,1701946755,NULL,NULL,NULL,'2023-12-07 13:59:15'),
	(18,1069151006,1618238236,1701951787,NULL,NULL,NULL,'2023-12-07 15:23:07'),
	(19,1069151006,1618238236,1701954684,'123btc',NULL,NULL,'2023-12-07 16:12:21'),
	(20,1069151006,1618238236,1702032690,'2usdt',NULL,NULL,'2023-12-08 13:53:53'),
	(21,1069151006,1618238236,1702033107,'5eth',NULL,NULL,'2023-12-08 13:58:37'),
	(22,1069151006,1618238236,1702034493,'20 btc',NULL,'!сделка о попе','2023-12-08 14:21:47'),
	(23,1069151006,1618238236,1702036746,NULL,NULL,NULL,'2023-12-08 14:59:06'),
	(24,1069151006,1618238236,1702037566,'11eth',NULL,'!Сделка о топе','2023-12-08 15:13:02'),
	(25,1069151006,1618238236,1702126758,'123 usdt',NULL,'!сделка о попе','2023-12-09 15:59:41'),
	(26,1069151006,1618238236,1702127589,NULL,NULL,NULL,'2023-12-09 16:13:09'),
	(27,1069151006,1618238236,1702128297,'123','',NULL,'2023-12-09 16:25:03'),
	(28,1069151006,1618238236,1702128399,'556','',NULL,'2023-12-09 16:26:46'),
	(29,1069151006,1618238236,1702128667,NULL,NULL,NULL,'2023-12-09 16:31:07'),
	(30,1069151006,1618238236,1702129000,'23','eth','!сделка о попке','2023-12-09 16:38:20'),
	(31,1069151006,1618238236,1702129351,'0.234','eth','!Сделка о njgt','2023-12-09 16:46:54'),
	(32,1069151006,1618238236,1702218452,'10','eth','!сделка о попе','2023-12-10 17:30:22'),
	(33,1069151006,1618238236,1702221412,'100','usdt','!сделка о коте','2023-12-10 18:17:38'),
	(34,1069151006,1618238236,1702223377,'99','btc','!сделка о томе','2023-12-10 18:49:52'),
	(35,1069151006,1618238236,1702411287,'23','usdt','!сделка о бургере','2023-12-12 23:02:00'),
	(36,1069151006,1618238236,1702413265,'100','eth','!сделка на миллион','2023-12-12 23:34:40'),
	(37,1618238236,1618238236,1702666125,'100','usdt','!сделка топ','2023-12-15 21:49:03'),
	(38,1069151006,1618238236,1702666305,'99','usdt','!сделка топ','2023-12-15 21:52:03');

/*!40000 ALTER TABLE `search_history` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_telegram` int(20) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `chat_id` int(20) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_moderate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `id_telegram`, `username`, `chat_id`, `dt`, `is_moderate`)
VALUES
	(10,1069151006,'Belarus_100proBTC',1069151006,'2023-12-15 21:46:11',NULL),
	(11,1618238236,'vomnedevil',1618238236,'2023-12-15 21:47:24',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;