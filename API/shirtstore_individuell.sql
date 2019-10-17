-- --------------------------------------------------------
-- Värd:                         127.0.0.1
-- Serverversion:                5.6.37 - MySQL Community Server (GPL)
-- Server-OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumpar databasstruktur för Shirtstore
CREATE DATABASE IF NOT EXISTS `Shirtstore` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci */;
USE `Shirtstore`;

-- Dumpar struktur för tabell Shirtstore.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` int(11) NOT NULL DEFAULT '100',
  `discount` char(50) DEFAULT '',
  `delivered` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orderid`),
  KEY `FK_orders_users` (`userid`),
  CONSTRAINT `FK_orders_users` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell Shirtstore.orders: ~4 rows (ungefär)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT IGNORE INTO `orders` (`orderid`, `userid`, `date`, `price`, `discount`, `delivered`) VALUES
	(1, 1, '2019-10-17 12:49:53', 100, '', 1),
	(2, 6, '2019-10-17 12:49:55', 100, '10', 1),
	(3, 5, '2019-10-17 12:49:44', 100, '10', 1),
	(4, 4, '2019-10-17 12:49:51', 100, '', 1),
	(5, 5, '2019-10-17 12:49:20', 100, '', 0),
	(6, 1, '2019-10-17 12:49:57', 100, '10', 0),
	(7, 4, '2019-10-17 12:49:58', 100, '10', 0),
	(8, 4, '2019-10-17 12:49:35', 100, '', 0),
	(9, 1, '2019-10-17 12:49:40', 100, '', 0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumpar struktur för tabell Shirtstore.tshirtids
CREATE TABLE IF NOT EXISTS `tshirtids` (
  `tshirtid` int(11) NOT NULL AUTO_INCREMENT,
  `text` char(50) DEFAULT NULL,
  `textsize` int(11) DEFAULT NULL,
  `colour` char(50) DEFAULT NULL,
  `material` char(50) DEFAULT NULL,
  `size` char(50) DEFAULT NULL,
  `model` char(50) DEFAULT NULL,
  `textcolour` char(50) DEFAULT NULL,
  `bold` tinyint(4) DEFAULT NULL,
  `cursive` tinyint(4) DEFAULT NULL,
  `font` char(50) DEFAULT NULL,
  `img` int(11) DEFAULT NULL,
  `imgsize` int(11) DEFAULT NULL,
  PRIMARY KEY (`tshirtid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell Shirtstore.tshirtids: ~0 rows (ungefär)
/*!40000 ALTER TABLE `tshirtids` DISABLE KEYS */;
INSERT IGNORE INTO `tshirtids` (`tshirtid`, `text`, `textsize`, `colour`, `material`, `size`, `model`, `textcolour`, `bold`, `cursive`, `font`, `img`, `imgsize`) VALUES
	(9, 'jaja', 13, 'white', 'cotton', 'M', '1', 'blue', 1, 1, 'calibri', 0, 0),
	(10, 'pewpew', 12, 'black', 'cotton', 'L', '0', 'green', 0, 0, 'helvetica', 0, 0),
	(11, 'boss', 18, 'blue', 'cotton', 'XXL', '5', 'blue', 0, 0, 'arial', 0, 0),
	(12, 'kung i baren', 72, 'white', 'cotton', 'S', '3', 'grey', 0, 0, 'verdana', 0, 0),
	(13, 'l.messi', 22, 'red', 'cotton', 'XL', '3', 'black', 0, 0, 'helvetica', 0, 0),
	(14, 'superzlatan', 32, 'yellow', 'cotton', 'M', '4', 'white', 1, 0, 'arial', 0, 0),
	(15, 'davve', 17, 'black', 'cotton', 'M', '1', 'blue', 1, 1, 'calibri', 0, 0),
	(16, 'pauw', 13, 'grey', 'cotton', 'XL', '2', 'white', 1, 0, 'verdana', 0, 0),
	(17, 'iffiff', 22, 'lightblue', 'cotton', 'XS', '0', 'white', 0, 1, 'cambria', 0, 0);
/*!40000 ALTER TABLE `tshirtids` ENABLE KEYS */;

-- Dumpar struktur för tabell Shirtstore.tshirts
CREATE TABLE IF NOT EXISTS `tshirts` (
  `userid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `text` char(50) NOT NULL,
  `textsize` int(11) NOT NULL,
  `colour` char(50) NOT NULL,
  `material` char(50) NOT NULL,
  `size` char(50) NOT NULL,
  `model` char(50) NOT NULL,
  `textcolour` char(50) NOT NULL,
  `bold` tinyint(4) NOT NULL DEFAULT '0',
  `cursive` tinyint(4) NOT NULL DEFAULT '0',
  `font` char(50) NOT NULL,
  `img` char(50) NOT NULL DEFAULT 'N',
  `imgsize` int(11) NOT NULL,
  `sharable` tinyint(4) NOT NULL DEFAULT '0',
  KEY `userid` (`userid`),
  KEY `orderid` (`orderid`),
  CONSTRAINT `FK_tshirts_orders` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`),
  CONSTRAINT `FK_tshirts_users` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell Shirtstore.tshirts: ~11 rows (ungefär)
/*!40000 ALTER TABLE `tshirts` DISABLE KEYS */;
INSERT IGNORE INTO `tshirts` (`userid`, `orderid`, `text`, `textsize`, `colour`, `material`, `size`, `model`, `textcolour`, `bold`, `cursive`, `font`, `img`, `imgsize`, `sharable`) VALUES
	(1, 1, 'jaja', 13, 'white', 'cotton', 'M', '1', 'blue', 1, 1, 'calibri', '', 0, 1),
	(6, 2, 'pewpew', 12, 'black', 'cotton', 'L', '0', 'green', 0, 0, 'helvetica', '', 0, 1),
	(4, 4, 'boss', 18, 'blue', 'cotton', 'XXL', '5', 'blue', 0, 0, 'arial', '', 0, 1),
	(1, 6, 'kung i baren', 72, 'white', 'cotton', 'S', '3', 'grey', 0, 0, 'verdana', '', 0, 1),
	(4, 8, 'l.messi', 22, 'red', 'cotton', 'XL', '3', 'black', 0, 0, 'helvetica', '', 0, 1),
	(1, 9, 'superzlatan', 32, 'yellow', 'cotton', 'M', '4', 'white', 1, 0, 'arial', '', 0, 1),
	(4, 7, 'davve', 17, 'black', 'cotton', 'M', '1', 'blue', 1, 1, 'calibri', '', 0, 1),
	(5, 3, 'pauw', 13, 'grey', 'cotton', 'XL', '2', 'white', 1, 0, 'verdana', '', 0, 1),
	(5, 5, 'iffiff', 22, 'lightblue', 'cotton', 'XS', '0', 'white', 0, 1, 'cambria', '', 0, 1);
/*!40000 ALTER TABLE `tshirts` ENABLE KEYS */;

-- Dumpar struktur för tabell Shirtstore.users
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username/e-mail` char(50) NOT NULL DEFAULT '0',
  `password` char(50) NOT NULL DEFAULT '0',
  `firstname` char(50) NOT NULL DEFAULT '0',
  `lastname` char(50) NOT NULL DEFAULT '0',
  `address` char(50) NOT NULL DEFAULT '0',
  `postnr` int(11) NOT NULL DEFAULT '0',
  `city` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell Shirtstore.users: ~4 rows (ungefär)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`userid`, `username/e-mail`, `password`, `firstname`, `lastname`, `address`, `postnr`, `city`) VALUES
	(1, 'Rambo', 'fantasatan', 'sylvester', 'stallone', 'roundhouse 2', 28133, 'monstercity'),
	(4, 'mongo', 'fantasatan', 'sylvester', 'stallone', 'roundhouse 2', 28133, 'monstercity'),
	(5, 'mongo', 'fantasatan', 'sylvester', 'stallone', 'roundhouse 2', 28133, 'monstercity'),
	(6, 'qwerty', 'djkhgsldkjfg', 'frans', 'jansson', 'vägen', 12345, 'by23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
