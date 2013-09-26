-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 26, 2013 at 09:41 AM
-- Server version: 5.5.33
-- PHP Version: 5.3.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thongti3_dienlanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_je_info`
--

DROP TABLE IF EXISTS `jos_je_info`;
CREATE TABLE IF NOT EXISTS `jos_je_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `gmap_intergrate` tinyint(1) NOT NULL,
  `gmap_override_url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metatitle` varchar(255) NOT NULL,
  `metadesc` text NOT NULL,
  `params` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_je_products`
--

DROP TABLE IF EXISTS `jos_je_products`;
CREATE TABLE IF NOT EXISTS `jos_je_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sticky` tinyint(1) NOT NULL,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `product_state` tinyint(4) DEFAULT NULL,
  `product_promotion_state` varchar(10) DEFAULT NULL,
  `location` char(7) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `promotion_price` int(11) NOT NULL,
  `note` text NOT NULL,
  `description` text NOT NULL,
  `content` mediumtext,
  `thumb_images` varchar(255) DEFAULT NULL,
  `images` text,
  `info_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT 'path to files',
  `code_msg` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `params` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_je_product_info`
--

DROP TABLE IF EXISTS `jos_je_product_info`;
CREATE TABLE IF NOT EXISTS `jos_je_product_info` (
  `info_id` char(7) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
