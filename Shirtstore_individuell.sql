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
  `userid` int(11) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '100',
  `discount` int(11) DEFAULT '0',
  `delivered` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1500 DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell Shirtstore.orders: ~9 rows (ungefär)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT IGNORE INTO `orders` (`orderid`, `userid`, `price`, `discount`, `delivered`) VALUES
	(1491, 1595, 100, 0, 1),
	(1492, 1596, 100, 10, 1),
	(1493, 1597, 100, 0, 1),
	(1494, 1598, 100, 0, 1),
	(1495, 1599, 100, 10, 0),
	(1496, 1600, 100, 10, 0),
	(1497, 1601, 100, 0, 0),
	(1498, 1602, 100, 10, 0),
	(1499, 1603, 100, 10, 0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumpar struktur för vy Shirtstore.otherstshirts
-- Skapar temporärtabell för att hantera VIEW-beroendefel
CREATE TABLE `otherstshirts` (
	`tshirtid` INT(11) NOT NULL,
	`text` CHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`textsize` INT(11) NOT NULL,
	`colour` CHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`material` CHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`size` CHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`model` CHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`textcolour` CHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`bold` TINYINT(4) NOT NULL,
	`cursive` TINYINT(4) NOT NULL,
	`font` CHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`img` CHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`imgsize` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Dumpar struktur för tabell Shirtstore.tshirts
CREATE TABLE IF NOT EXISTS `tshirts` (
  `tshirtid` int(11) NOT NULL AUTO_INCREMENT,
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
  `sharable` tinyint(4) NOT NULL,
  PRIMARY KEY (`tshirtid`)
) ENGINE=InnoDB AUTO_INCREMENT=650 DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell Shirtstore.tshirts: ~9 rows (ungefär)
/*!40000 ALTER TABLE `tshirts` DISABLE KEYS */;
INSERT IGNORE INTO `tshirts` (`tshirtid`, `userid`, `orderid`, `text`, `textsize`, `colour`, `material`, `size`, `model`, `textcolour`, `bold`, `cursive`, `font`, `img`, `imgsize`, `sharable`) VALUES
	(641, 1595, 1491, 'jaja', 13, 'white', 'cotton', 'M', '1', 'blue', 1, 1, 'calibri', '', 0, 0),
	(642, 1596, 1492, 'pewpew', 12, 'black', 'cotton', 'L', '0', 'green', 0, 0, 'helvetica', '', 0, 1),
	(643, 1597, 1493, 'boss', 18, 'blue', 'cotton', 'XXL', '5', 'blue', 0, 0, 'arial', '', 0, 0),
	(644, 1598, 1494, 'kung i baren', 72, 'white', 'cotton', 'S', '3', 'grey', 0, 0, 'verdana', '', 0, 1),
	(645, 1599, 1495, 'l.messi', 22, 'red', 'cotton', 'XL', '3', 'black', 0, 0, 'helvetica', '', 0, 0),
	(646, 1600, 1496, 'superzlatan', 32, 'yellow', 'cotton', 'M', '4', 'white', 1, 0, 'arial', '', 0, 0),
	(647, 1601, 1497, 'davve', 17, 'black', 'cotton', 'M', '1', 'blue', 1, 1, 'calibri', '', 0, 0),
	(648, 1602, 1498, 'pauw', 13, 'grey', 'cotton', 'XL', '2', 'white', 1, 0, 'verdana', '', 0, 0),
	(649, 1603, 1499, 'iffiff', 22, 'lightblue', 'cotton', 'XS', '0', 'white', 0, 1, 'cambria', '', 0, 1);
/*!40000 ALTER TABLE `tshirts` ENABLE KEYS */;

-- Dumpar struktur för tabell Shirtstore.users
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(50) NOT NULL DEFAULT '0',
  `password` char(50) NOT NULL DEFAULT '0',
  `firstname` char(50) NOT NULL DEFAULT '0',
  `lastname` char(50) NOT NULL DEFAULT '0',
  `address` char(50) NOT NULL DEFAULT '0',
  `postnr` int(11) NOT NULL DEFAULT '0',
  `city` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1604 DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell Shirtstore.users: ~9 rows (ungefär)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`userid`, `username`, `password`, `firstname`, `lastname`, `address`, `postnr`, `city`) VALUES
	(1595, 'Rambo', 'trughjjbvcbf', 'sylvester', 'stallone', 'roundhouse 2', 28133, 'monstercity'),
	(1596, 'mongo', 'xvcnxcvmn4567', 'jimmy', 'mccartney', 'byavaejen', 67567, 'glimmen'),
	(1597, 'bongo', '785485=)//', 'kalle', 'anka', 'västra hamngatan 23', 55852, 'ankeborg'),
	(1598, 'qwerty', 'djkhgsldkjfg', 'frans', 'jansson', 'vägen', 23435, 'by23'),
	(1599, 'kungen', 'ajsfdjkbb767.', 'daddy', 'DJ', 'partyvägen', 65748, 'lomma'),
	(1600, 'baghera', 'hakkahukka', 'leijon', 'mannen', 'torget', 34564, 'norje'),
	(1601, 'willys', '564263647', 'willy', 'wonka', 'jajjaveijen', 89899, 'eldorado'),
	(1602, 'hercules', 'hjsweyusdhj', 'donald', 'trumpis', 'kyrkvägen', 54857, 'gotham'),
	(1603, 'megaman', 'kjhsndhey&/&/', 'john', 'johnson', '1st street', 85458, 'hököpinge');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumpar struktur för vy Shirtstore.otherstshirts
-- Tar bort temporärtabell och skapar slutgiltlig VIEW-struktur
DROP TABLE IF EXISTS `otherstshirts`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `otherstshirts` AS select `tshirts`.`tshirtid` AS `tshirtid`,`tshirts`.`text` AS `text`,`tshirts`.`textsize` AS `textsize`,`tshirts`.`colour` AS `colour`,`tshirts`.`material` AS `material`,`tshirts`.`size` AS `size`,`tshirts`.`model` AS `model`,`tshirts`.`textcolour` AS `textcolour`,`tshirts`.`bold` AS `bold`,`tshirts`.`cursive` AS `cursive`,`tshirts`.`font` AS `font`,`tshirts`.`img` AS `img`,`tshirts`.`imgsize` AS `imgsize` from `tshirts` where (`tshirts`.`sharable` = 1);

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;