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
CREATE DATABASE IF NOT EXISTS `Shirtstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `Shirtstore`;

-- Dumpar struktur för tabell Shirtstore.Order
CREATE TABLE IF NOT EXISTS `Order` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price` int(11) NOT NULL,
  `discount` char(50) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FK_Order_User` (`userid`),
  CONSTRAINT `FK_Order_User` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell Shirtstore.Order: ~1 rows (ungefär)
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` (`orderid`, `userid`, `date`, `price`, `discount`) VALUES
	(1, 1, '0000-00-00 00:00:00', 100, NULL);
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;

-- Dumpar struktur för tabell Shirtstore.tshirt
CREATE TABLE IF NOT EXISTS `tshirt` (
  `userid` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `text` char(50) NOT NULL,
  `textsize` int(11) NOT NULL,
  `colour` char(50) NOT NULL,
  `material` char(50) NOT NULL,
  `size` char(50) NOT NULL,
  `model` char(50) DEFAULT NULL,
  `textcolour` char(50) NOT NULL,
  `bold` char(50) NOT NULL DEFAULT 'N',
  `cursive` char(50) NOT NULL DEFAULT 'N',
  `font` char(50) NOT NULL,
  `img` char(50) NOT NULL DEFAULT 'N',
  `imgsize` int(11) NOT NULL DEFAULT '100',
  KEY `FK_tshirt_User` (`userid`),
  KEY `FK_tshirt_Order` (`orderid`),
  CONSTRAINT `FK_tshirt_Order` FOREIGN KEY (`orderid`) REFERENCES `Order` (`orderid`),
  CONSTRAINT `FK_tshirt_User` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell Shirtstore.tshirt: ~1 rows (ungefär)
/*!40000 ALTER TABLE `tshirt` DISABLE KEYS */;
INSERT INTO `tshirt` (`userid`, `orderid`, `text`, `textsize`, `colour`, `material`, `size`, `model`, `textcolour`, `bold`, `cursive`, `font`, `img`, `imgsize`) VALUES
	(1, 1, 'pewpew', 12, 'black', 'cutton', 'L', '0', 'green', 'Y', 'Y', 'Wingding', '', 0);
/*!40000 ALTER TABLE `tshirt` ENABLE KEYS */;

-- Dumpar struktur för tabell Shirtstore.User
CREATE TABLE IF NOT EXISTS `User` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(50) NOT NULL DEFAULT '0',
  `password` char(50) NOT NULL DEFAULT '0',
  `firstname` char(50) NOT NULL DEFAULT '0',
  `lastname` char(50) NOT NULL DEFAULT '0',
  `address` char(50) NOT NULL DEFAULT '0',
  `postnr` int(11) NOT NULL DEFAULT '0',
  `city` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell Shirtstore.User: ~3 rows (ungefär)
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` (`userid`, `username`, `password`, `firstname`, `lastname`, `address`, `postnr`, `city`) VALUES
	(1, 'Rambo', 'fantasatan', 'sylvester', 'stallone', 'roundhouse 2', 28133, 'monstercity'),
	(4, 'mongo', 'fantasatan', 'sylvester', 'stallone', 'roundhouse 2', 28133, 'monstercity'),
	(5, 'mongo', 'fantasatan', 'sylvester', 'stallone', 'roundhouse 2', 28133, 'monstercity');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
