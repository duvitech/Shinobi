-- --------------------------------------------------------
-- Host:                         66.51.132.100
-- Server version:               5.7.16-0ubuntu0.16.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for ccio
CREATE DATABASE IF NOT EXISTS `ccio` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ccio`;


-- Dumping structure for table ccio.Logs
CREATE TABLE IF NOT EXISTS `Logs` (
  `ke` varchar(50) DEFAULT NULL,
  `mid` varchar(50) DEFAULT NULL,
  `info` text,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table ccio.Monitors
CREATE TABLE IF NOT EXISTS `Monitors` (
  `mid` varchar(50) DEFAULT NULL,
  `ke` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `shto` text,
  `shfr` text,
  `details` longtext,
  `type` enum('jpeg','mjpeg','h264') DEFAULT 'jpeg',
  `ext` enum('webm','mp4') DEFAULT 'webm',
  `protocol` enum('http','https','rtmp','rtsp','axrtsp','axrtpu','axrtsphttp','axrtpm') DEFAULT 'http',
  `host` varchar(100) DEFAULT '0.0.0.0',
  `path` varchar(100) DEFAULT '/',
  `port` int(8) DEFAULT '80',
  `fps` int(8) DEFAULT '1',
  `mode` enum('stop','start','record','mrecord') DEFAULT 'stop',
  `width` int(11) DEFAULT '640',
  `height` int(11) DEFAULT '360'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table ccio.Users
CREATE TABLE IF NOT EXISTS `Users` (
  `ke` varchar(50) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `auth` varchar(50) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `details` longtext,
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table ccio.Videos
CREATE TABLE IF NOT EXISTS `Videos` (
  `mid` varchar(50) DEFAULT NULL,
  `ke` varchar(50) DEFAULT NULL,
  `ext` enum('webm','mp4') DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `size` float DEFAULT NULL,
  `frames` int(11) DEFAULT NULL,
  `end` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT '0' COMMENT '0:Open,1:Complete,2:Error,3:Unknown'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;