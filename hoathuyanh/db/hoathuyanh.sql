/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : hoathuyanh

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2013-10-02 16:35:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jos_assets
-- ----------------------------
DROP TABLE IF EXISTS `jos_assets`;
CREATE TABLE `jos_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_assets
-- ----------------------------
INSERT INTO `jos_assets` VALUES ('1', '0', '1', '101', '0', 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `jos_assets` VALUES ('2', '1', '1', '2', '1', 'com_admin', 'com_admin', '{}');
INSERT INTO `jos_assets` VALUES ('3', '1', '3', '6', '1', 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES ('4', '1', '7', '8', '1', 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `jos_assets` VALUES ('5', '1', '9', '10', '1', 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `jos_assets` VALUES ('6', '1', '11', '12', '1', 'com_config', 'com_config', '{}');
INSERT INTO `jos_assets` VALUES ('7', '1', '13', '16', '1', 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES ('8', '1', '17', '22', '1', 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES ('9', '1', '23', '24', '1', 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `jos_assets` VALUES ('10', '1', '25', '26', '1', 'com_installer', 'com_installer', '{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `jos_assets` VALUES ('11', '1', '27', '28', '1', 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES ('12', '1', '29', '30', '1', 'com_login', 'com_login', '{}');
INSERT INTO `jos_assets` VALUES ('13', '1', '31', '32', '1', 'com_mailto', 'com_mailto', '{}');
INSERT INTO `jos_assets` VALUES ('14', '1', '33', '34', '1', 'com_massmail', 'com_massmail', '{}');
INSERT INTO `jos_assets` VALUES ('15', '1', '35', '36', '1', 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('16', '1', '37', '38', '1', 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES ('17', '1', '39', '40', '1', 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `jos_assets` VALUES ('18', '1', '41', '42', '1', 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES ('19', '1', '43', '46', '1', 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES ('20', '1', '47', '48', '1', 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES ('21', '1', '49', '50', '1', 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1},\"core.manage\":[]}');
INSERT INTO `jos_assets` VALUES ('22', '1', '51', '52', '1', 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `jos_assets` VALUES ('23', '1', '53', '54', '1', 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES ('24', '1', '55', '58', '1', 'com_users', 'com_users', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES ('25', '1', '59', '62', '1', 'com_weblinks', 'com_weblinks', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES ('26', '1', '63', '64', '1', 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `jos_assets` VALUES ('27', '8', '18', '21', '2', 'com_content.category.2', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES ('28', '3', '4', '5', '2', 'com_banners.category.3', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES ('29', '7', '14', '15', '2', 'com_contact.category.4', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES ('30', '19', '44', '45', '2', 'com_newsfeeds.category.5', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES ('31', '25', '60', '61', '2', 'com_weblinks.category.6', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES ('32', '24', '56', '57', '1', 'com_users.category.7', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES ('33', '1', '65', '66', '1', 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `jos_assets` VALUES ('34', '1', '67', '68', '1', 'com_joomlaupdate', 'com_joomlaupdate', '{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES ('35', '1', '69', '70', '1', 'com_je_product.category.8', 'Test Category', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('36', '1', '71', '100', '1', 'com_je_product.category.9', 'Bộ sưu tập', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('37', '36', '72', '83', '2', 'com_je_product.category.10', 'Hoa cưới', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('38', '36', '84', '97', '2', 'com_je_product.category.11', 'Hoa tặng', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('39', '36', '98', '99', '2', 'com_je_product.category.12', 'Lễ hỏi trọn gói', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('40', '37', '73', '74', '3', 'com_je_product.category.13', 'Hoa bàn tiệc', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('41', '37', '75', '76', '3', 'com_je_product.category.14', 'Hoa xe', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('42', '37', '79', '80', '3', 'com_je_product.category.15', 'Hoa tay cầm', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('43', '37', '81', '82', '3', 'com_je_product.category.16', 'Cổng hoa cưới', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('44', '37', '77', '78', '3', 'com_je_product.category.17', 'Hoa cài áo', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('45', '38', '85', '92', '3', 'com_je_product.category.18', 'Hoa sinh nhật', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('46', '38', '93', '94', '3', 'com_je_product.category.19', 'Hoa văn phòng', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('47', '38', '95', '96', '3', 'com_je_product.category.20', 'Hoa tang lễ', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('48', '45', '86', '87', '4', 'com_je_product.category.21', 'Bó dài', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('49', '45', '88', '89', '4', 'com_je_product.category.22', 'Bó tròn', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('50', '45', '90', '91', '4', 'com_je_product.category.23', 'Lẵng hoa', '{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES ('51', '27', '19', '20', '3', 'com_content.article.1', 'Test article', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');

-- ----------------------------
-- Table structure for jos_associations
-- ----------------------------
DROP TABLE IF EXISTS `jos_associations`;
CREATE TABLE `jos_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_associations
-- ----------------------------

-- ----------------------------
-- Table structure for jos_banners
-- ----------------------------
DROP TABLE IF EXISTS `jos_banners`;
CREATE TABLE `jos_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_banners
-- ----------------------------

-- ----------------------------
-- Table structure for jos_banner_clients
-- ----------------------------
DROP TABLE IF EXISTS `jos_banner_clients`;
CREATE TABLE `jos_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_banner_clients
-- ----------------------------

-- ----------------------------
-- Table structure for jos_banner_tracks
-- ----------------------------
DROP TABLE IF EXISTS `jos_banner_tracks`;
CREATE TABLE `jos_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_banner_tracks
-- ----------------------------

-- ----------------------------
-- Table structure for jos_categories
-- ----------------------------
DROP TABLE IF EXISTS `jos_categories`;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_categories
-- ----------------------------
INSERT INTO `jos_categories` VALUES ('1', '0', '0', '0', '45', '0', '', 'system', 'ROOT', 'root', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{}', '', '', '', '0', '2009-10-18 16:07:09', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('2', '27', '1', '1', '2', '1', 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:26:37', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('3', '28', '1', '3', '4', '1', 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:27:35', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('4', '29', '1', '5', '6', '1', 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:27:57', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('5', '30', '1', '7', '8', '1', 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:28:15', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('6', '31', '1', '9', '10', '1', 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:28:33', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('7', '32', '1', '11', '12', '1', 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:28:33', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('8', '35', '1', '13', '14', '1', 'test-category', 'com_je_product', 'Test Category', 'test-category', '', '', '-2', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 02:47:16', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('9', '36', '1', '15', '44', '1', 'bo-suu-tap', 'com_je_product', 'Bộ sưu tập', 'bo-suu-tap', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:20:41', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('10', '37', '9', '16', '27', '2', 'bo-suu-tap/hoa-cuoi', 'com_je_product', 'Hoa cưới', 'hoa-cuoi', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:21:06', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('11', '38', '9', '28', '41', '2', 'bo-suu-tap/hoa-tang', 'com_je_product', 'Hoa tặng', 'hoa-tang', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:21:22', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('12', '39', '9', '42', '43', '2', 'bo-suu-tap/le-hoi-tron-goi', 'com_je_product', 'Lễ hỏi trọn gói', 'le-hoi-tron-goi', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:21:45', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('13', '40', '10', '17', '18', '3', 'bo-suu-tap/hoa-cuoi/hoa-ban-tiec', 'com_je_product', 'Hoa bàn tiệc', 'hoa-ban-tiec', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:22:14', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('14', '41', '10', '19', '20', '3', 'bo-suu-tap/hoa-cuoi/hoa-xe', 'com_je_product', 'Hoa xe', 'hoa-xe', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:22:28', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('15', '42', '10', '23', '24', '3', 'bo-suu-tap/hoa-cuoi/hoa-tay-cam', 'com_je_product', 'Hoa tay cầm', 'hoa-tay-cam', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:22:41', '886', '2013-09-26 03:23:45', '0', '*');
INSERT INTO `jos_categories` VALUES ('16', '43', '10', '25', '26', '3', 'bo-suu-tap/hoa-cuoi/cong-hoa-cuoi', 'com_je_product', 'Cổng hoa cưới', 'cong-hoa-cuoi', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:23:04', '886', '2013-09-26 03:23:55', '0', '*');
INSERT INTO `jos_categories` VALUES ('17', '44', '10', '21', '22', '3', 'bo-suu-tap/hoa-cuoi/hoa-cai-ao', 'com_je_product', 'Hoa cài áo', 'hoa-cai-ao', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:23:29', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('18', '45', '11', '29', '36', '3', 'bo-suu-tap/hoa-tang/hoa-sinh-nhat', 'com_je_product', 'Hoa sinh nhật', 'hoa-sinh-nhat', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:24:30', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('19', '46', '11', '37', '38', '3', 'bo-suu-tap/hoa-tang/hoa-van-phong', 'com_je_product', 'Hoa văn phòng', 'hoa-van-phong', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:24:50', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('20', '47', '11', '39', '40', '3', 'bo-suu-tap/hoa-tang/hoa-tang-le', 'com_je_product', 'Hoa tang lễ', 'hoa-tang-le', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:25:07', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('21', '48', '18', '30', '31', '4', 'bo-suu-tap/hoa-tang/hoa-sinh-nhat/bo-dai', 'com_je_product', 'Bó dài', 'bo-dai', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:25:20', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('22', '49', '18', '32', '33', '4', 'bo-suu-tap/hoa-tang/hoa-sinh-nhat/bo-tron', 'com_je_product', 'Bó tròn', 'bo-tron', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:25:35', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `jos_categories` VALUES ('23', '50', '18', '34', '35', '4', 'bo-suu-tap/hoa-tang/hoa-sinh-nhat/lang-hoa', 'com_je_product', 'Lẵng hoa', 'lang-hoa', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '886', '2013-09-26 03:25:46', '0', '0000-00-00 00:00:00', '0', '*');

-- ----------------------------
-- Table structure for jos_contact_details
-- ----------------------------
DROP TABLE IF EXISTS `jos_contact_details`;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_contact_details
-- ----------------------------

-- ----------------------------
-- Table structure for jos_content
-- ----------------------------
DROP TABLE IF EXISTS `jos_content`;
CREATE TABLE `jos_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_content
-- ----------------------------
INSERT INTO `jos_content` VALUES ('1', '51', 'Test article', 'test-article', '', '<p>abc</p>', '', '1', '0', '0', '2', '2013-09-26 03:34:12', '886', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2013-09-26 03:34:12', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', '1', '0', '0', '', '', '1', '94', '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', '0', '*', '');

-- ----------------------------
-- Table structure for jos_content_frontpage
-- ----------------------------
DROP TABLE IF EXISTS `jos_content_frontpage`;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_content_frontpage
-- ----------------------------

-- ----------------------------
-- Table structure for jos_content_rating
-- ----------------------------
DROP TABLE IF EXISTS `jos_content_rating`;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_content_rating
-- ----------------------------

-- ----------------------------
-- Table structure for jos_core_log_searches
-- ----------------------------
DROP TABLE IF EXISTS `jos_core_log_searches`;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_core_log_searches
-- ----------------------------

-- ----------------------------
-- Table structure for jos_extensions
-- ----------------------------
DROP TABLE IF EXISTS `jos_extensions`;
CREATE TABLE `jos_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_extensions
-- ----------------------------
INSERT INTO `jos_extensions` VALUES ('1', 'com_mailto', 'component', 'com_mailto', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('2', 'com_wrapper', 'component', 'com_wrapper', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('3', 'com_admin', 'component', 'com_admin', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('4', 'com_banners', 'component', 'com_banners', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('5', 'com_cache', 'component', 'com_cache', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('6', 'com_categories', 'component', 'com_categories', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('7', 'com_checkin', 'component', 'com_checkin', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('8', 'com_contact', 'component', 'com_contact', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('9', 'com_cpanel', 'component', 'com_cpanel', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('10', 'com_installer', 'component', 'com_installer', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('11', 'com_languages', 'component', 'com_languages', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('12', 'com_login', 'component', 'com_login', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('13', 'com_media', 'component', 'com_media', '', '1', '1', '0', '1', '{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('14', 'com_menus', 'component', 'com_menus', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('15', 'com_messages', 'component', 'com_messages', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('16', 'com_modules', 'component', 'com_modules', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('17', 'com_newsfeeds', 'component', 'com_newsfeeds', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('18', 'com_plugins', 'component', 'com_plugins', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('19', 'com_search', 'component', 'com_search', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}', '{\"enabled\":\"0\",\"show_date\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('20', 'com_templates', 'component', 'com_templates', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('21', 'com_weblinks', 'component', 'com_weblinks', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('22', 'com_content', 'component', 'com_content', '', '1', '1', '0', '1', '{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('23', 'com_config', 'component', 'com_config', '', '1', '1', '0', '1', '{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('24', 'com_redirect', 'component', 'com_redirect', '', '1', '1', '0', '1', '{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('25', 'com_users', 'component', 'com_users', '', '1', '1', '0', '1', '{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('27', 'com_finder', 'component', 'com_finder', '', '1', '1', '0', '0', '{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('28', 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', '1', '1', '0', '1', '{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('100', 'PHPMailer', 'library', 'phpmailer', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('101', 'SimplePie', 'library', 'simplepie', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('102', 'phputf8', 'library', 'phputf8', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('103', 'Joomla! Platform', 'library', 'joomla', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('200', 'mod_articles_archive', 'module', 'mod_articles_archive', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('201', 'mod_articles_latest', 'module', 'mod_articles_latest', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('202', 'mod_articles_popular', 'module', 'mod_articles_popular', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('203', 'mod_banners', 'module', 'mod_banners', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('204', 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('205', 'mod_custom', 'module', 'mod_custom', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('206', 'mod_feed', 'module', 'mod_feed', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('207', 'mod_footer', 'module', 'mod_footer', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('208', 'mod_login', 'module', 'mod_login', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('209', 'mod_menu', 'module', 'mod_menu', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('210', 'mod_articles_news', 'module', 'mod_articles_news', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('211', 'mod_random_image', 'module', 'mod_random_image', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('212', 'mod_related_items', 'module', 'mod_related_items', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('213', 'mod_search', 'module', 'mod_search', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('214', 'mod_stats', 'module', 'mod_stats', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('215', 'mod_syndicate', 'module', 'mod_syndicate', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('216', 'mod_users_latest', 'module', 'mod_users_latest', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('217', 'mod_weblinks', 'module', 'mod_weblinks', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('218', 'mod_whosonline', 'module', 'mod_whosonline', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('219', 'mod_wrapper', 'module', 'mod_wrapper', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('220', 'mod_articles_category', 'module', 'mod_articles_category', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('221', 'mod_articles_categories', 'module', 'mod_articles_categories', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('222', 'mod_languages', 'module', 'mod_languages', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('223', 'mod_finder', 'module', 'mod_finder', '', '0', '1', '0', '0', '{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('300', 'mod_custom', 'module', 'mod_custom', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('301', 'mod_feed', 'module', 'mod_feed', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('302', 'mod_latest', 'module', 'mod_latest', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('303', 'mod_logged', 'module', 'mod_logged', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('304', 'mod_login', 'module', 'mod_login', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('305', 'mod_menu', 'module', 'mod_menu', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('307', 'mod_popular', 'module', 'mod_popular', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('308', 'mod_quickicon', 'module', 'mod_quickicon', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('309', 'mod_status', 'module', 'mod_status', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('310', 'mod_submenu', 'module', 'mod_submenu', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('311', 'mod_title', 'module', 'mod_title', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('312', 'mod_toolbar', 'module', 'mod_toolbar', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('313', 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"cache\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('314', 'mod_version', 'module', 'mod_version', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('400', 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', '0', '0', '1', '0', '{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `jos_extensions` VALUES ('401', 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('402', 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', '0', '0', '1', '0', '{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `jos_extensions` VALUES ('404', 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}', '{\"mode\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `jos_extensions` VALUES ('405', 'plg_content_geshi', 'plugin', 'geshi', 'content', '0', '0', '1', '0', '{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `jos_extensions` VALUES ('406', 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"style\":\"xhtml\"}', '', '', '0', '2011-09-18 15:22:50', '0', '0');
INSERT INTO `jos_extensions` VALUES ('407', 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `jos_extensions` VALUES ('408', 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}', '{\"position\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `jos_extensions` VALUES ('409', 'plg_content_vote', 'plugin', 'vote', 'content', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `jos_extensions` VALUES ('410', 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}', '{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `jos_extensions` VALUES ('411', 'plg_editors_none', 'plugin', 'none', 'editors', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `jos_extensions` VALUES ('412', 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}', '{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `jos_extensions` VALUES ('413', 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `jos_extensions` VALUES ('414', 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `jos_extensions` VALUES ('415', 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `jos_extensions` VALUES ('416', 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `jos_extensions` VALUES ('417', 'plg_search_categories', 'plugin', 'categories', 'search', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('418', 'plg_search_contacts', 'plugin', 'contacts', 'search', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('419', 'plg_search_content', 'plugin', 'content', 'search', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('420', 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('421', 'plg_search_weblinks', 'plugin', 'weblinks', 'search', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('422', 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', '0', '0', '1', '1', '{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `jos_extensions` VALUES ('423', 'plg_system_p3p', 'plugin', 'p3p', 'system', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `jos_extensions` VALUES ('424', 'plg_system_cache', 'plugin', 'cache', 'system', '0', '0', '1', '1', '{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', '0', '0000-00-00 00:00:00', '9', '0');
INSERT INTO `jos_extensions` VALUES ('425', 'plg_system_debug', 'plugin', 'debug', 'system', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `jos_extensions` VALUES ('426', 'plg_system_log', 'plugin', 'log', 'system', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `jos_extensions` VALUES ('427', 'plg_system_redirect', 'plugin', 'redirect', 'system', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `jos_extensions` VALUES ('428', 'plg_system_remember', 'plugin', 'remember', 'system', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `jos_extensions` VALUES ('429', 'plg_system_sef', 'plugin', 'sef', 'system', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '8', '0');
INSERT INTO `jos_extensions` VALUES ('430', 'plg_system_logout', 'plugin', 'logout', 'system', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `jos_extensions` VALUES ('431', 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', '0', '0', '1', '1', '{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `jos_extensions` VALUES ('432', 'plg_user_joomla', 'plugin', 'joomla', 'user', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{\"autoregister\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `jos_extensions` VALUES ('433', 'plg_user_profile', 'plugin', 'profile', 'user', '0', '0', '1', '1', '{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('434', 'plg_extension_joomla', 'plugin', 'joomla', 'extension', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `jos_extensions` VALUES ('435', 'plg_content_joomla', 'plugin', 'joomla', 'content', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('436', 'plg_system_languagecode', 'plugin', 'languagecode', 'system', '0', '0', '1', '0', '{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '10', '0');
INSERT INTO `jos_extensions` VALUES ('437', 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('438', 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('439', 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', '0', '0', '1', '0', '{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('440', 'plg_system_highlight', 'plugin', 'highlight', 'system', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `jos_extensions` VALUES ('441', 'plg_content_finder', 'plugin', 'finder', 'content', '0', '0', '1', '0', '{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('442', 'plg_finder_categories', 'plugin', 'categories', 'finder', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `jos_extensions` VALUES ('443', 'plg_finder_contacts', 'plugin', 'contacts', 'finder', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `jos_extensions` VALUES ('444', 'plg_finder_content', 'plugin', 'content', 'finder', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `jos_extensions` VALUES ('445', 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `jos_extensions` VALUES ('446', 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `jos_extensions` VALUES ('500', 'atomic', 'template', 'atomic', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('502', 'bluestork', 'template', 'bluestork', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}', '{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('503', 'beez_20', 'template', 'beez_20', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('504', 'hathor', 'template', 'hathor', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('505', 'beez5', 'template', 'beez5', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('600', 'English (United Kingdom)', 'language', 'en-GB', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('601', 'English (United Kingdom)', 'language', 'en-GB', '', '1', '1', '1', '1', '{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('700', 'files_joomla', 'file', 'joomla', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.14\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('800', 'PKG_JOOMLA', 'package', 'pkg_joomla', '', '0', '1', '1', '1', '{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('10000', 'JE Product', 'component', 'com_je_product', '', '1', '1', '1', '0', '{\"legacy\":false,\"name\":\"JE Product\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.6.0\",\"description\":\"Products Manager\\n\\t\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('10001', 'T3 Framework', 'plugin', 't3', 'system', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"T3 Framework\",\"type\":\"plugin\",\"creationDate\":\"05 August 2013\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"1.4.1\",\"description\":\"\\n\\t\\n\\t<div align=\\\"center\\\">\\n\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<a href=\\\"http:\\/\\/t3-framework.org\\/\\\"><img src=\\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\\" alt=\\\"some_text\\\" width=\\\"300\\\" height=\\\"99\\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/t3-framework.org\\/\\\" title=\\\"\\\">Home<\\/a> | <a href=\\\"http:\\/\\/demo.t3-framework.org\\/\\\" title=\\\"\\\">Demo<\\/a> | <a href=\\\"http:\\/\\/t3-framework.org\\/documentation\\\" title=\\\"\\\">Document<\\/a> | <a href=\\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\\" title=\\\"\\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2013 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('10002', 't3_blank', 'template', 't3_blank', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"t3_blank\",\"type\":\"template\",\"creationDate\":\"05 August 2013\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"1.4.1\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"center\\\">\\n\\t\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<a href=\\\"http:\\/\\/t3-framework.org\\/\\\"><img src=\\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\\" alt=\\\"some_text\\\" width=\\\"300\\\" height=\\\"99\\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/t3-framework.org\\/\\\" title=\\\"\\\">Home<\\/a> | <a href=\\\"http:\\/\\/demo.t3-framework.org\\/\\\" title=\\\"\\\">Demo<\\/a> | <a href=\\\"http:\\/\\/t3-framework.org\\/documentation\\\" title=\\\"\\\">Document<\\/a> | <a href=\\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\\" title=\\\"\\\">Changelog<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\\"color:#FF0000\\\">Note: T3 blank requires T3 plugin to be installed and enabled.<\\/span><p><\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2013 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jos_extensions` VALUES ('10003', 't3', 'package', 'pkg_t3', '', '0', '1', '1', '0', '{\"legacy\":false,\"name\":\"T3 Framework Package\",\"type\":\"package\",\"creationDate\":\"05 August 2013\",\"author\":\"t3-framework.org\",\"copyright\":\"(C) 2012 - 2013. All rights reserved.\",\"authorEmail\":\"support@t3-framework.org\",\"authorUrl\":\"www.t3-framework.org\",\"version\":\"1.4.1\",\"description\":\"\\t\\n\\t\\n\\t<div align=\\\"center\\\">\\n\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<a href=\\\"http:\\/\\/t3-framework.org\\/\\\"><img src=\\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\\" alt=\\\"some_text\\\" width=\\\"300\\\" height=\\\"99\\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/t3-framework.org\\/\\\" title=\\\"\\\">Home<\\/a> | <a href=\\\"http:\\/\\/demo.t3-framework.org\\/\\\" title=\\\"\\\">Demo<\\/a> | <a href=\\\"http:\\/\\/t3-framework.org\\/documentation\\\" title=\\\"\\\">Document<\\/a> | <a href=\\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\\" title=\\\"\\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2013 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');

-- ----------------------------
-- Table structure for jos_finder_filters
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_filters`;
CREATE TABLE `jos_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_filters
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links`;
CREATE TABLE `jos_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_terms0
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_terms0`;
CREATE TABLE `jos_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_terms0
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_terms1
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_terms1`;
CREATE TABLE `jos_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_terms1
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_terms2
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_terms2`;
CREATE TABLE `jos_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_terms2
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_terms3
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_terms3`;
CREATE TABLE `jos_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_terms3
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_terms4
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_terms4`;
CREATE TABLE `jos_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_terms4
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_terms5
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_terms5`;
CREATE TABLE `jos_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_terms5
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_terms6
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_terms6`;
CREATE TABLE `jos_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_terms6
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_terms7
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_terms7`;
CREATE TABLE `jos_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_terms7
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_terms8
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_terms8`;
CREATE TABLE `jos_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_terms8
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_terms9
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_terms9`;
CREATE TABLE `jos_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_terms9
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_termsa
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_termsa`;
CREATE TABLE `jos_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_termsa
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_termsb
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_termsb`;
CREATE TABLE `jos_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_termsb
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_termsc
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_termsc`;
CREATE TABLE `jos_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_termsc
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_termsd
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_termsd`;
CREATE TABLE `jos_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_termsd
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_termse
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_termse`;
CREATE TABLE `jos_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_termse
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_links_termsf
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_links_termsf`;
CREATE TABLE `jos_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_links_termsf
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_taxonomy`;
CREATE TABLE `jos_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_taxonomy
-- ----------------------------
INSERT INTO `jos_finder_taxonomy` VALUES ('1', '0', 'ROOT', '0', '0', '0');

-- ----------------------------
-- Table structure for jos_finder_taxonomy_map
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_taxonomy_map`;
CREATE TABLE `jos_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_taxonomy_map
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_terms
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_terms`;
CREATE TABLE `jos_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_terms
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_terms_common
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_terms_common`;
CREATE TABLE `jos_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_terms_common
-- ----------------------------
INSERT INTO `jos_finder_terms_common` VALUES ('a', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('about', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('after', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('ago', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('all', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('am', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('an', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('and', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('ani', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('any', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('are', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('aren\'t', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('as', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('at', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('be', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('but', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('by', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('for', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('from', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('get', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('go', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('how', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('if', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('in', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('into', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('is', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('isn\'t', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('it', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('its', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('me', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('more', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('most', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('must', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('my', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('new', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('no', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('none', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('not', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('noth', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('nothing', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('of', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('off', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('often', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('old', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('on', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('onc', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('once', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('onli', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('only', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('or', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('other', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('our', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('ours', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('out', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('over', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('page', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('she', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('should', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('small', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('so', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('some', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('than', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('thank', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('that', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('the', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('their', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('theirs', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('them', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('then', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('there', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('these', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('they', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('this', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('those', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('thus', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('time', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('times', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('to', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('too', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('true', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('under', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('until', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('up', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('upon', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('use', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('user', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('users', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('veri', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('version', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('very', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('via', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('want', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('was', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('way', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('were', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('what', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('when', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('where', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('whi', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('which', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('who', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('whom', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('whose', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('why', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('wide', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('will', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('with', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('within', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('without', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('would', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('yes', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('yet', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('you', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('your', 'en');
INSERT INTO `jos_finder_terms_common` VALUES ('yours', 'en');

-- ----------------------------
-- Table structure for jos_finder_tokens
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_tokens`;
CREATE TABLE `jos_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_tokens_aggregate
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_tokens_aggregate`;
CREATE TABLE `jos_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_tokens_aggregate
-- ----------------------------

-- ----------------------------
-- Table structure for jos_finder_types
-- ----------------------------
DROP TABLE IF EXISTS `jos_finder_types`;
CREATE TABLE `jos_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_finder_types
-- ----------------------------

-- ----------------------------
-- Table structure for jos_je_info
-- ----------------------------
DROP TABLE IF EXISTS `jos_je_info`;
CREATE TABLE `jos_je_info` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_je_info
-- ----------------------------
INSERT INTO `jos_je_info` VALUES ('1', 'Info 1', 'info-1', '1', '', '', '0', '', '', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 02:47:23', '');

-- ----------------------------
-- Table structure for jos_je_products
-- ----------------------------
DROP TABLE IF EXISTS `jos_je_products`;
CREATE TABLE `jos_je_products` (
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
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_je_products
-- ----------------------------
INSERT INTO `jos_je_products` VALUES ('1', null, 'Cổng hoa cưới 01', 'cong-hoa-cuoi-01', '1', '0', '16', '1', 'normal', null, '0', '0', '', '<p>Cổng hoa cưới 01</p>', '', null, 'a:1:{i:0;s:41:\"2013/09/26/1-cong-hoa-01-1-1380166441.jpg\";}', '0', null, null, null, null, '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:33:03', '');
INSERT INTO `jos_je_products` VALUES ('2', null, 'Cổng hoa cưới 02', 'cong-hoa-cuoi-02', '1', '0', '16', '1', 'normal', null, '0', '0', '', '<p>Cổng hoa cưới 02</p>', '', null, 'a:1:{i:0;s:46:\"2013/09/26/1-cong-hoa-cuoi-02-2-1380166482.jpg\";}', '0', null, null, null, null, '2', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:34:01', '');
INSERT INTO `jos_je_products` VALUES ('3', null, 'Cổng hoa cưới 03', 'cong-hoa-cuoi-03', '1', '0', '16', '1', 'normal', null, '0', '0', '', '', '', null, 'a:1:{i:0;s:46:\"2013/09/26/1-cong-hoa-cuoi-03-3-1380166514.jpg\";}', '0', null, null, null, null, '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:34:42', '');
INSERT INTO `jos_je_products` VALUES ('4', null, 'Cổng hoa cưới 04', 'cong-hoa-cuoi-04', '1', '0', '16', '1', 'normal', null, '0', '0', '', '<p>test</p>', '', null, 'a:1:{i:0;s:46:\"2013/09/26/1-cong-hoa-cuoi-04-4-1380166537.jpg\";}', '0', null, null, null, null, '4', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:35:14', '');
INSERT INTO `jos_je_products` VALUES ('5', null, 'Cổng hoa cưới 05', 'cong-hoa-cuoi-05', '1', '0', '16', '1', 'normal', null, '0', '0', '', '<p>test 2</p>', '', null, 'a:1:{i:0;s:46:\"2013/09/26/1-cong-hoa-cuoi-05-5-1380166564.jpg\";}', '0', null, null, null, null, '5', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:35:37', '');
INSERT INTO `jos_je_products` VALUES ('6', null, 'Cổng hoa cưới 06', 'cong-hoa-cuoi-06', '1', '0', '16', '1', 'normal', null, '0', '0', '', '', '', null, 'a:1:{i:0;s:46:\"2013/09/26/1-cong-hoa-cuoi-06-6-1380166586.jpg\";}', '0', null, null, null, null, '6', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:36:04', '');
INSERT INTO `jos_je_products` VALUES ('7', null, 'Cổng hoa cưới 07', 'cong-hoa-cuoi-07', '1', '0', '16', '1', 'normal', null, '0', '0', '', '', '', null, 'a:1:{i:0;s:46:\"2013/09/26/1-cong-hoa-cuoi-07-7-1380166624.jpg\";}', '0', null, null, null, null, '7', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:36:26', '');
INSERT INTO `jos_je_products` VALUES ('8', null, 'Cổng hoa cưới 08', 'cong-hoa-cuoi-08', '1', '0', '16', '1', 'normal', null, '2000000', '1500000', '', '<p>Test</p>', '', null, 'a:0:{}', '0', null, null, null, null, '8', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:39:51', '');
INSERT INTO `jos_je_products` VALUES ('9', null, 'Hoa tay cầm 01', 'hoa-tay-cam-01', '1', '0', '15', '1', 'normal', null, '900000', '800000', '', '', '', null, 'a:1:{i:0;s:44:\"2013/09/26/1-hoa-tay-cam-01-9-1380166997.jpg\";}', '0', null, null, null, null, '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:40:45', '');
INSERT INTO `jos_je_products` VALUES ('10', null, 'Hoa tay cầm 02', 'hoa-tay-cam-02', '1', '0', '15', '1', 'normal', null, '850000', '800000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-02-10-1380167039.jpg\";}', '0', null, null, null, null, '2', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:43:17', '');
INSERT INTO `jos_je_products` VALUES ('11', null, 'Hoa tay cầm 03', 'hoa-tay-cam-03', '1', '0', '15', '1', 'normal', null, '860000', '680000', '', '<p>test</p>', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-03-11-1380167383.jpg\";}', '0', null, null, null, null, '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:43:59', '');
INSERT INTO `jos_je_products` VALUES ('12', null, 'Hoa tay cầm 04', 'hoa-tay-cam-04', '1', '0', '15', '1', 'normal', null, '700000', '600000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-04-12-1380168043.jpg\";}', '0', null, null, null, null, '4', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 03:49:43', '');
INSERT INTO `jos_je_products` VALUES ('13', null, 'Hoa tay cầm 05', 'hoa-tay-cam-05', '1', '0', '15', '1', 'normal', null, '750000', '700000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-05-13-1380168076.jpg\";}', '0', null, null, null, null, '5', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:00:44', '');
INSERT INTO `jos_je_products` VALUES ('14', null, 'Hoa tay cầm 06', 'hoa-tay-cam-06', '1', '0', '15', '1', 'normal', null, '820000', '790000', '', '<p>Test</p>', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-06-14-1380168111.jpg\";}', '0', null, null, null, null, '6', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:01:16', '');
INSERT INTO `jos_je_products` VALUES ('15', null, 'Hoa tay cầm 07', 'hoa-tay-cam-07', '1', '0', '15', '1', 'normal', null, '860000', '790000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-07-15-1380168311.jpg\";}', '0', null, null, null, null, '7', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:01:51', '');
INSERT INTO `jos_je_products` VALUES ('16', null, 'Hoa tay cầm 08', 'hoa-tay-cam-08', '1', '0', '15', '1', 'normal', null, '990000', '880000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-08-16-1380168393.jpg\";}', '0', null, null, null, null, '8', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:05:11', '');
INSERT INTO `jos_je_products` VALUES ('17', null, 'Hoa tay cầm 09', 'hoa-tay-cam-09', '1', '0', '15', '1', 'normal', null, '880000', '770000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-09-17-1380168425.jpg\";}', '0', null, null, null, null, '9', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:06:34', '');
INSERT INTO `jos_je_products` VALUES ('18', null, 'Hoa tay cầm 10', 'hoa-tay-cam-10', '1', '0', '15', '1', 'normal', null, '770000', '660000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-10-18-1380168450.jpg\";}', '0', null, null, null, null, '10', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:07:06', '');
INSERT INTO `jos_je_products` VALUES ('19', null, 'Hoa tay cầm 11', 'hoa-tay-cam-11', '1', '0', '15', '1', 'normal', null, '660000', '600000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-11-19-1380168487.jpg\";}', '0', null, null, null, null, '11', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:07:30', '');
INSERT INTO `jos_je_products` VALUES ('20', null, 'Hoa tay cầm 12', 'hoa-tay-cam-12', '1', '0', '15', '1', 'normal', null, '680000', '660000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-12-20-1380168516.jpg\";}', '0', null, null, null, null, '12', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:08:08', '');
INSERT INTO `jos_je_products` VALUES ('21', null, 'Hoa tay cầm 13', 'hoa-tay-cam-13', '1', '0', '15', '1', 'normal', null, '999000', '888000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-13-21-1380168547.jpg\";}', '0', null, null, null, null, '13', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:08:37', '');
INSERT INTO `jos_je_products` VALUES ('22', null, 'Hoa tay cầm 14', 'hoa-tay-cam-14', '1', '0', '15', '1', 'normal', null, '789000', '678000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-14-22-1380168582.jpg\";}', '0', null, null, null, null, '14', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:09:07', '');
INSERT INTO `jos_je_products` VALUES ('23', null, 'Hoa tay cầm 15', 'hoa-tay-cam-15', '1', '0', '15', '1', 'normal', null, '868000', '686000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-15-23-1380168654.jpg\";}', '0', null, null, null, null, '15', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:09:42', '');
INSERT INTO `jos_je_products` VALUES ('24', null, 'Hoa tay cầm 16', 'hoa-tay-cam-16', '1', '0', '15', '1', 'normal', null, '654000', '456000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-16-24-1380168686.jpg\";}', '0', null, null, null, null, '16', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:10:54', '');
INSERT INTO `jos_je_products` VALUES ('25', null, 'Hoa tay cầm 17', 'hoa-tay-cam-17', '1', '0', '15', '1', 'normal', null, '898000', '676000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-17-25-1380168715.jpg\";}', '0', null, null, null, null, '17', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:11:26', '');
INSERT INTO `jos_je_products` VALUES ('26', null, 'Hoa tay cầm 18', 'hoa-tay-cam-18', '1', '0', '15', '1', 'normal', null, '866000', '822000', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-18-26-1380168757.jpg\";}', '0', null, null, null, null, '18', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:11:55', '');
INSERT INTO `jos_je_products` VALUES ('27', null, 'Hoa tay cầm 19', 'hoa-tay-cam-19', '1', '0', '15', '1', 'normal', null, '999900', '888899', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-19-27-1380168799.jpg\";}', '0', null, null, null, null, '19', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:12:37', '');
INSERT INTO `jos_je_products` VALUES ('28', null, 'Hoa tay cầm 20', 'hoa-tay-cam-20', '1', '0', '15', '1', 'normal', null, '998800', '889900', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-20-28-1380169360.jpg\";}', '0', null, null, null, null, '20', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:21:01', '');
INSERT INTO `jos_je_products` VALUES ('29', null, 'Hoa tay cầm 21', 'hoa-tay-cam-21', '1', '0', '15', '1', 'normal', null, '886600', '668800', '', '', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-21-29-1380169416.jpg\";}', '0', null, null, null, null, '21', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:22:40', '');
INSERT INTO `jos_je_products` VALUES ('30', null, 'Hoa tay cầm 22', 'hoa-tay-cam-22', '1', '0', '15', '1', 'normal', null, '866600', '688800', '', '<p>test</p>', '', null, 'a:1:{i:0;s:45:\"2013/09/26/1-hoa-tay-cam-22-30-1380169453.jpg\";}', '0', null, null, null, null, '22', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 04:23:36', '');
INSERT INTO `jos_je_products` VALUES ('31', null, 'Hoa bàn tiệc 01', 'hoa-ban-tiec-01', '1', '0', '13', '1', 'normal', null, '1500000', '1200000', '', '', '', null, 'a:1:{i:0;s:46:\"2013/09/26/1-hoa-ban-tiec-01-31-1380182118.jpg\";}', '0', null, null, null, null, '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 07:54:34', '');
INSERT INTO `jos_je_products` VALUES ('32', null, 'Hoa bàn tiệc 02', 'hoa-ban-tiec-02', '1', '0', '13', '1', 'normal', null, '1400000', '1300000', '', '', '', null, 'a:1:{i:0;s:46:\"2013/09/26/1-hoa-ban-tiec-02-32-1380182162.jpg\";}', '0', null, null, null, null, '2', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 07:55:18', '');
INSERT INTO `jos_je_products` VALUES ('33', null, 'Hoa bàn tiệc 03', 'hoa-ban-tiec-03', '1', '0', '13', '1', 'normal', null, '1200000', '1000000', '', '', '', null, 'a:1:{i:0;s:46:\"2013/09/26/1-hoa-ban-tiec-03-33-1380182192.jpg\";}', '0', null, null, null, null, '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 07:56:03', '');
INSERT INTO `jos_je_products` VALUES ('34', null, 'Hoa xe 01', 'hoa-xe-01', '1', '0', '14', '1', 'normal', null, '3000000', '2800000', '', '', '', null, 'a:1:{i:0;s:40:\"2013/09/26/1-hoa-xe-01-34-1380182248.jpg\";}', '0', null, null, null, null, '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 07:56:32', '');
INSERT INTO `jos_je_products` VALUES ('35', null, 'Hoa xe 02', 'hoa-xe-02', '1', '0', '14', '1', 'normal', null, '2800000', '2600000', '', '', '', null, 'a:1:{i:0;s:40:\"2013/09/26/1-hoa-xe-02-35-1380182301.jpg\";}', '0', null, null, null, null, '2', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 07:57:28', '');
INSERT INTO `jos_je_products` VALUES ('36', null, 'Hoa xe 03', 'hoa-xe-03', '1', '0', '14', '1', 'normal', null, '2900000', '2800000', '', '', '', null, 'a:1:{i:0;s:40:\"2013/09/26/1-hoa-xe-03-36-1380182333.jpg\";}', '0', null, null, null, null, '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 07:58:22', '');
INSERT INTO `jos_je_products` VALUES ('37', null, 'Hoa cài áo 01', 'hoa-cai-ao-01', '1', '0', '17', '1', 'normal', null, '600000', '500000', '', '', '', null, 'a:1:{i:0;s:44:\"2013/09/26/1-hoa-cai-ao-01-37-1380182370.jpg\";}', '0', null, null, null, null, '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 07:58:54', '');
INSERT INTO `jos_je_products` VALUES ('38', null, 'Hoa cài áo 02', 'hoa-cai-ao-02', '1', '0', '17', '1', 'normal', null, '700000', '600000', '', '', '', null, 'a:1:{i:0;s:44:\"2013/09/26/1-hoa-cai-ao-02-38-1380182415.jpg\";}', '0', null, null, null, null, '2', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 07:59:31', '');
INSERT INTO `jos_je_products` VALUES ('39', null, 'Hoa cài áo 03', 'hoa-cai-ao-03', '1', '0', '17', '1', 'normal', null, '600000', '400000', '', '', '', null, 'a:1:{i:0;s:44:\"2013/09/26/1-hoa-cai-ao-03-39-1380182447.jpg\";}', '0', null, null, null, null, '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:00:15', '');
INSERT INTO `jos_je_products` VALUES ('40', null, 'Bó dài 01', 'bo-dai-01', '1', '1', '21', '1', 'normal', null, '500000', '400000', '', '', '', null, 'a:1:{i:0;s:40:\"2013/09/26/1-bo-dai-01-40-1380182479.jpg\";}', '0', null, null, null, '2', '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:00:47', '');
INSERT INTO `jos_je_products` VALUES ('41', null, 'Bó dài 02', 'bo-dai-02', '1', '0', '21', '1', 'normal', null, '600000', '550000', '', '', '', null, 'a:1:{i:0;s:40:\"2013/09/26/1-bo-dai-02-41-1380182536.jpg\";}', '0', null, null, null, '3', '2', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:01:19', '');
INSERT INTO `jos_je_products` VALUES ('42', null, 'Bó dài 03', 'bo-dai-03', '1', '0', '21', '1', 'normal', null, '800000', '680000', '', '', '', null, 'a:1:{i:0;s:40:\"2013/09/26/1-bo-dai-03-42-1380182562.jpg\";}', '0', null, null, null, '1', '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:02:16', '');
INSERT INTO `jos_je_products` VALUES ('43', null, 'Bó tròn 01', 'bo-tron-01', '1', '0', '22', '1', 'normal', null, '800000', '600000', '', '', '', null, 'a:1:{i:0;s:41:\"2013/09/26/1-bo-tron-01-43-1380182596.jpg\";}', '0', null, null, null, null, '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:02:42', '');
INSERT INTO `jos_je_products` VALUES ('44', null, 'Bó tròn 02', 'bo-tron-02', '1', '0', '22', '1', 'normal', null, '860000', '800000', '', '', '', null, 'a:1:{i:0;s:41:\"2013/09/26/1-bo-tron-02-44-1380182715.jpg\";}', '0', null, null, null, '1', '2', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:03:16', '');
INSERT INTO `jos_je_products` VALUES ('45', null, 'Bó tròn 03', 'bo-tron-03', '1', '1', '22', '1', 'normal', null, '1000000', '900000', '', '', '', null, 'a:1:{i:0;s:41:\"2013/09/26/1-bo-tron-03-45-1380182749.jpg\";}', '0', null, null, null, '3', '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:05:15', '');
INSERT INTO `jos_je_products` VALUES ('46', null, 'Lẵng hoa 01', 'lang-hoa-01', '1', '0', '23', '1', 'normal', null, '1200000', '1100000', '', '', '', null, 'a:1:{i:0;s:42:\"2013/09/26/1-lang-hoa-01-46-1380182783.jpg\";}', '0', null, null, null, null, '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:05:49', '');
INSERT INTO `jos_je_products` VALUES ('47', null, 'Lẵng hoa 02', 'lang-hoa-02', '1', '0', '23', '1', 'normal', null, '1100000', '1000000', '', '', '', null, 'a:1:{i:0;s:42:\"2013/09/26/1-lang-hoa-02-47-1380182821.jpg\";}', '0', null, null, null, null, '2', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:06:23', '');
INSERT INTO `jos_je_products` VALUES ('48', null, 'Lẵng hoa 03', 'lang-hoa-03', '1', '0', '23', '1', 'normal', null, '900000', '800000', '', '', '', null, 'a:1:{i:0;s:42:\"2013/09/26/1-lang-hoa-03-48-1380182862.jpg\";}', '0', null, null, null, null, '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:07:01', '');
INSERT INTO `jos_je_products` VALUES ('49', null, 'Hoa chia buồn 01', 'hoa-chia-buon-01', '1', '0', '20', '1', 'normal', null, '1500000', '1200000', '', '', '', null, 'a:1:{i:0;s:47:\"2013/09/26/1-hoa-chia-buon-01-49-1380182969.jpg\";}', '0', null, null, null, null, '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:07:42', '');
INSERT INTO `jos_je_products` VALUES ('50', null, 'Hoa chia buồn 02', 'hoa-chia-buon-02', '1', '0', '20', '1', 'normal', null, '2000000', '1800000', '', '', '', null, 'a:1:{i:0;s:47:\"2013/09/26/1-hoa-chia-buon-02-50-1380183004.jpg\";}', '0', null, null, null, null, '2', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:09:29', '');
INSERT INTO `jos_je_products` VALUES ('51', null, 'Hoa chia buồn 03', 'hoa-chia-buon-03', '1', '0', '20', '1', 'normal', null, '1800000', '1600000', '', '', '', null, 'a:1:{i:0;s:47:\"2013/09/26/1-hoa-chia-buon-03-51-1380183031.jpg\";}', '0', null, null, null, null, '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:10:04', '');
INSERT INTO `jos_je_products` VALUES ('52', null, 'Hoa văn phòng 01', 'hoa-van-phong-01', '1', '0', '19', '1', 'promotion', null, '900000', '800000', '', '', '', null, 'a:1:{i:0;s:47:\"2013/09/26/1-hoa-van-phong-01-52-1380183067.jpg\";}', '0', null, null, null, null, '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:10:31', '');
INSERT INTO `jos_je_products` VALUES ('53', null, 'Hoa văn phòng 02', 'hoa-van-phong-02', '1', '0', '19', '1', 'normal', null, '1100000', '1000000', '', '', '', null, 'a:1:{i:0;s:47:\"2013/09/26/1-hoa-van-phong-02-53-1380183097.jpg\";}', '0', null, null, null, null, '2', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:11:07', '');
INSERT INTO `jos_je_products` VALUES ('54', null, 'Hoa văn phòng 03', 'hoa-van-phong-03', '1', '0', '19', '1', 'normal', null, '860000', '680000', '', '', '', null, 'a:1:{i:0;s:47:\"2013/09/26/1-hoa-van-phong-03-54-1380183130.jpg\";}', '0', null, null, null, null, '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:11:37', '');
INSERT INTO `jos_je_products` VALUES ('55', null, 'Lễ hỏi trọn gói 01', 'le-hoi-tron-goi-01', '1', '0', '12', '1', 'promotion', null, '5000000', '4800000', '', '', '', null, 'a:1:{i:0;s:49:\"2013/09/26/1-le-hoi-tron-goi-01-55-1380183163.jpg\";}', '0', null, null, null, '1', '1', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:12:11', '');
INSERT INTO `jos_je_products` VALUES ('56', null, 'Lễ hỏi trọn gói 02', 'le-hoi-tron-goi-02', '1', '1', '12', '1', 'promotion', null, '4000000', '3800000', '', '', '', null, 'a:1:{i:0;s:49:\"2013/09/26/1-le-hoi-tron-goi-02-56-1380183186.jpg\";}', '0', null, null, null, null, '2', '', '', '', '886', '2013-10-02 07:27:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:12:43', '');
INSERT INTO `jos_je_products` VALUES ('57', null, 'Lễ hỏi trọn gói 03', 'le-hoi-tron-goi-03', '1', '1', '12', '1', 'normal', null, '6000000', '5600000', '', '', '', null, 'a:1:{i:0;s:49:\"2013/09/26/1-le-hoi-tron-goi-03-57-1380183215.jpg\";}', '0', null, null, null, '1', '3', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-09-26 08:13:06', '');
INSERT INTO `jos_je_products` VALUES ('58', null, 'Hoa văn phòng 04', 'hoa-van-phong-04', '1', '0', '19', '1', 'normal', null, '600000', '500000', '', '', '', null, 'a:1:{i:0;s:47:\"2013/10/02/1-hoa-van-phong-04-58-1380705455.jpg\";}', '0', null, null, null, null, '4', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-10-02 09:12:33', '');
INSERT INTO `jos_je_products` VALUES ('59', null, 'Hoa văn phòng 05', 'hoa-van-phong-05', '1', '0', '19', '1', 'normal', null, '800000', '680000', '', '', '', null, 'a:1:{i:0;s:47:\"2013/10/02/1-hoa-van-phong-05-59-1380705480.jpg\";}', '0', null, null, null, null, '5', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-10-02 09:17:35', '');
INSERT INTO `jos_je_products` VALUES ('60', null, 'Hoa văn phòng 06', 'hoa-van-phong-06', '1', '0', '19', '1', 'normal', null, '900000', '800000', '', '', '', null, 'a:1:{i:0;s:47:\"2013/10/02/1-hoa-van-phong-06-60-1380705531.jpg\";}', '0', null, null, null, null, '6', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-10-02 09:18:24', '');
INSERT INTO `jos_je_products` VALUES ('61', null, 'Hoa văn phòng 07', 'hoa-van-phong-07', '1', '0', '19', '1', 'normal', null, '990000', '880000', '', '', '', null, 'a:1:{i:0;s:47:\"2013/10/02/1-hoa-van-phong-07-61-1380705567.jpg\";}', '0', null, null, null, null, '7', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-10-02 09:18:52', '');
INSERT INTO `jos_je_products` VALUES ('62', null, 'Hoa văn phòng (nhiều ảnh)', 'hoa-van-phong-nhieu-anh', '1', '0', '19', '1', 'normal', null, '1000000', '800000', '', '<p>test nhiều ảnh</p>', '', null, 'a:5:{i:0;s:54:\"2013/10/02/1-hoa-van-phong-nhieu-anh-62-1380705866.jpg\";i:1;s:54:\"2013/10/02/2-hoa-van-phong-nhieu-anh-62-1380705866.jpg\";i:2;s:54:\"2013/10/02/3-hoa-van-phong-nhieu-anh-62-1380705866.jpg\";i:3;s:54:\"2013/10/02/4-hoa-van-phong-nhieu-anh-62-1380705866.jpg\";i:4;s:54:\"2013/10/02/5-hoa-van-phong-nhieu-anh-62-1380705866.jpg\";}', '0', null, null, null, null, '8', '', '', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2013-10-02 09:22:55', '');

-- ----------------------------
-- Table structure for jos_je_product_info
-- ----------------------------
DROP TABLE IF EXISTS `jos_je_product_info`;
CREATE TABLE `jos_je_product_info` (
  `info_id` char(7) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jos_je_product_info
-- ----------------------------

-- ----------------------------
-- Table structure for jos_languages
-- ----------------------------
DROP TABLE IF EXISTS `jos_languages`;
CREATE TABLE `jos_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_languages
-- ----------------------------
INSERT INTO `jos_languages` VALUES ('1', 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', '1', '0', '1');

-- ----------------------------
-- Table structure for jos_menu
-- ----------------------------
DROP TABLE IF EXISTS `jos_menu`;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_menu
-- ----------------------------
INSERT INTO `jos_menu` VALUES ('1', '', 'Menu_Item_Root', 'root', '', '', '', '', '1', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '', '0', '55', '0', '*', '0');
INSERT INTO `jos_menu` VALUES ('2', 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', '0', '1', '1', '4', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '1', '10', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('3', 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', '0', '2', '2', '4', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '2', '3', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('4', 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', '0', '2', '2', '6', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-cat', '0', '', '4', '5', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('5', 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', '0', '2', '2', '4', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-clients', '0', '', '6', '7', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('6', 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', '0', '2', '2', '4', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-tracks', '0', '', '8', '9', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('7', 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', '0', '1', '1', '8', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '11', '16', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('8', 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', '0', '7', '2', '8', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '12', '13', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('9', 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', '0', '7', '2', '6', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact-cat', '0', '', '14', '15', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('10', 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', '0', '1', '1', '15', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages', '0', '', '17', '22', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('11', 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', '0', '10', '2', '15', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages-add', '0', '', '18', '19', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('12', 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', '0', '10', '2', '15', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages-read', '0', '', '20', '21', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('13', 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', '0', '1', '1', '17', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '23', '28', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('14', 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', '0', '13', '2', '17', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '24', '25', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('15', 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', '0', '13', '2', '6', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds-cat', '0', '', '26', '27', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('16', 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', '0', '1', '1', '24', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:redirect', '0', '', '41', '42', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('17', 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', '0', '1', '1', '19', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:search', '0', '', '33', '34', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('18', 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', '0', '1', '1', '21', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:weblinks', '0', '', '35', '40', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('19', 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', '0', '18', '2', '21', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:weblinks', '0', '', '36', '37', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('20', 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', '0', '18', '2', '6', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:weblinks-cat', '0', '', '38', '39', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('21', 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', '0', '1', '1', '27', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:finder', '0', '', '31', '32', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('22', 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', '0', '1', '1', '28', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:joomlaupdate', '0', '', '41', '42', '0', '*', '1');
INSERT INTO `jos_menu` VALUES ('101', 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_je_product&view=home', 'component', '1', '1', '1', '10000', '0', '0', '0000-00-00 00:00:00', '0', '1', '', '0', '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '29', '30', '1', '*', '0');
INSERT INTO `jos_menu` VALUES ('102', 'main', 'JE Product', 'Products Manager', '', 'je-product', 'index.php?option=com_je_product', 'component', '0', '1', '1', '10000', '0', '0', '0000-00-00 00:00:00', '0', '1', 'class:component', '0', '', '43', '44', '0', '', '1');
INSERT INTO `jos_menu` VALUES ('103', 'top-menu', 'Hoa cưới', 'hoa-cuoi', '', 'hoa-cuoi', 'index.php?option=com_je_product&view=category&id=10&info_id=0', 'component', '1', '1', '1', '10000', '0', '0', '0000-00-00 00:00:00', '0', '1', '', '0', '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '47', '50', '0', '*', '0');
INSERT INTO `jos_menu` VALUES ('104', 'top-menu', 'Hoa bàn tiệc', 'hoa-ban-tiec', '', 'hoa-cuoi/hoa-ban-tiec', 'index.php?option=com_je_product&view=category&id=13&info_id=0', 'component', '1', '103', '2', '10000', '0', '0', '0000-00-00 00:00:00', '0', '1', '', '0', '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '48', '49', '0', '*', '0');
INSERT INTO `jos_menu` VALUES ('105', 'top-menu', 'Sub Hoa cưới', 'sub-hoa-cuoi', '', 'sub-hoa-cuoi', 'index.php?option=com_content&view=article&id=1', 'component', '1', '1', '1', '22', '0', '0', '0000-00-00 00:00:00', '0', '1', '', '0', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '51', '52', '0', '*', '0');
INSERT INTO `jos_menu` VALUES ('106', 'top-menu', 'New Menu', 'new-menu', '', 'new-menu', 'index.php?option=com_content&view=article&id=1', 'component', '1', '1', '1', '22', '0', '0', '0000-00-00 00:00:00', '0', '1', '', '0', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '53', '54', '0', '*', '0');
INSERT INTO `jos_menu` VALUES ('107', 'top-menu', 'Trang chủ', '2013-10-02-08-45-07', '', '2013-10-02-08-45-07', 'index.php?Itemid=', 'alias', '1', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', '0', '1', '', '0', '{\"aliasoptions\":\"101\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}', '45', '46', '0', '*', '0');

-- ----------------------------
-- Table structure for jos_menu_types
-- ----------------------------
DROP TABLE IF EXISTS `jos_menu_types`;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_menu_types
-- ----------------------------
INSERT INTO `jos_menu_types` VALUES ('1', 'mainmenu', 'Main Menu', 'The main menu for the site');
INSERT INTO `jos_menu_types` VALUES ('2', 'top-menu', 'Top Menu', '');

-- ----------------------------
-- Table structure for jos_messages
-- ----------------------------
DROP TABLE IF EXISTS `jos_messages`;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_messages
-- ----------------------------

-- ----------------------------
-- Table structure for jos_messages_cfg
-- ----------------------------
DROP TABLE IF EXISTS `jos_messages_cfg`;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_messages_cfg
-- ----------------------------

-- ----------------------------
-- Table structure for jos_modules
-- ----------------------------
DROP TABLE IF EXISTS `jos_modules`;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_modules
-- ----------------------------
INSERT INTO `jos_modules` VALUES ('1', 'Main Menu', '', '', '1', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_menu', '1', '1', '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `jos_modules` VALUES ('2', 'Login', '', '', '1', 'login', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '', '1', '*');
INSERT INTO `jos_modules` VALUES ('3', 'Popular Articles', '', '', '3', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_popular', '3', '1', '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}', '1', '*');
INSERT INTO `jos_modules` VALUES ('4', 'Recently Added Articles', '', '', '4', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_latest', '3', '1', '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}', '1', '*');
INSERT INTO `jos_modules` VALUES ('8', 'Toolbar', '', '', '1', 'toolbar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_toolbar', '3', '1', '', '1', '*');
INSERT INTO `jos_modules` VALUES ('9', 'Quick Icons', '', '', '1', 'icon', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_quickicon', '3', '1', '', '1', '*');
INSERT INTO `jos_modules` VALUES ('10', 'Logged-in Users', '', '', '2', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_logged', '3', '1', '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}', '1', '*');
INSERT INTO `jos_modules` VALUES ('12', 'Admin Menu', '', '', '1', 'menu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '3', '1', '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `jos_modules` VALUES ('13', 'Admin Submenu', '', '', '1', 'submenu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_submenu', '3', '1', '', '1', '*');
INSERT INTO `jos_modules` VALUES ('14', 'User Status', '', '', '2', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_status', '3', '1', '', '1', '*');
INSERT INTO `jos_modules` VALUES ('15', 'Title', '', '', '1', 'title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_title', '3', '1', '', '1', '*');
INSERT INTO `jos_modules` VALUES ('16', 'Login Form', '', '', '7', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_login', '1', '1', '{\"greeting\":\"1\",\"name\":\"0\"}', '0', '*');
INSERT INTO `jos_modules` VALUES ('17', 'Breadcrumbs', '', '', '1', 'position-2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_breadcrumbs', '1', '1', '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `jos_modules` VALUES ('79', 'Multilanguage status', '', '', '1', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_multilangstatus', '3', '1', '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `jos_modules` VALUES ('86', 'Joomla Version', '', '', '1', 'footer', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_version', '3', '1', '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');

-- ----------------------------
-- Table structure for jos_modules_menu
-- ----------------------------
DROP TABLE IF EXISTS `jos_modules_menu`;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_modules_menu
-- ----------------------------
INSERT INTO `jos_modules_menu` VALUES ('1', '0');
INSERT INTO `jos_modules_menu` VALUES ('2', '0');
INSERT INTO `jos_modules_menu` VALUES ('3', '0');
INSERT INTO `jos_modules_menu` VALUES ('4', '0');
INSERT INTO `jos_modules_menu` VALUES ('6', '0');
INSERT INTO `jos_modules_menu` VALUES ('7', '0');
INSERT INTO `jos_modules_menu` VALUES ('8', '0');
INSERT INTO `jos_modules_menu` VALUES ('9', '0');
INSERT INTO `jos_modules_menu` VALUES ('10', '0');
INSERT INTO `jos_modules_menu` VALUES ('12', '0');
INSERT INTO `jos_modules_menu` VALUES ('13', '0');
INSERT INTO `jos_modules_menu` VALUES ('14', '0');
INSERT INTO `jos_modules_menu` VALUES ('15', '0');
INSERT INTO `jos_modules_menu` VALUES ('16', '0');
INSERT INTO `jos_modules_menu` VALUES ('17', '0');
INSERT INTO `jos_modules_menu` VALUES ('79', '0');
INSERT INTO `jos_modules_menu` VALUES ('86', '0');

-- ----------------------------
-- Table structure for jos_newsfeeds
-- ----------------------------
DROP TABLE IF EXISTS `jos_newsfeeds`;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_newsfeeds
-- ----------------------------

-- ----------------------------
-- Table structure for jos_overrider
-- ----------------------------
DROP TABLE IF EXISTS `jos_overrider`;
CREATE TABLE `jos_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_overrider
-- ----------------------------

-- ----------------------------
-- Table structure for jos_redirect_links
-- ----------------------------
DROP TABLE IF EXISTS `jos_redirect_links`;
CREATE TABLE `jos_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_redirect_links
-- ----------------------------

-- ----------------------------
-- Table structure for jos_schemas
-- ----------------------------
DROP TABLE IF EXISTS `jos_schemas`;
CREATE TABLE `jos_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_schemas
-- ----------------------------
INSERT INTO `jos_schemas` VALUES ('700', '2.5.14');

-- ----------------------------
-- Table structure for jos_session
-- ----------------------------
DROP TABLE IF EXISTS `jos_session`;
CREATE TABLE `jos_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_session
-- ----------------------------
INSERT INTO `jos_session` VALUES ('39jtp5gaq9it4218cajhbldn16', '1', '0', '1380706068', '__default|a:8:{s:15:\"session.counter\";i:33;s:19:\"session.timer.start\";i:1380704925;s:18:\"session.timer.last\";i:1380706068;s:17:\"session.timer.now\";i:1380706068;s:22:\"session.client.browser\";s:65:\"Mozilla/5.0 (Windows NT 5.1; rv:21.0) Gecko/20100101 Firefox/21.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":4:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":2:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";}s:14:\"com_categories\";O:8:\"stdClass\":1:{s:10:\"categories\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:9:\"extension\";s:11:\"com_content\";}}}s:14:\"com_je_product\";O:8:\"stdClass\":2:{s:8:\"products\";O:8:\"stdClass\":1:{s:8:\"ordercol\";s:2:\"id\";}s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"product\";O:8:\"stdClass\":2:{s:4:\"data\";N;s:2:\"id\";a:0:{}}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"886\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:23:\"nguyenxuanmui@gmail.com\";s:8:\"password\";s:65:\"2917b1baea460453e00c8bca38dbd02f:A0Lz5oXuW1c6Xteh1RDrWIZTLHP0PCKX\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-09-26 02:07:59\";s:13:\"lastvisitDate\";s:19:\"2013-10-02 03:41:33\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:0:\"\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"0ff72aefec1ab0b1ed794c89da08189d\";}', '886', 'admin', '');
INSERT INTO `jos_session` VALUES ('4vgpsn90fgrk34fimfkj881fp5', '0', '1', '1380174567', '__default|a:9:{s:15:\"session.counter\";i:24;s:19:\"session.timer.start\";i:1380166135;s:18:\"session.timer.last\";i:1380170965;s:17:\"session.timer.now\";i:1380174567;s:22:\"session.client.browser\";s:108:\"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":4:{s:10:\"vars_theme\";N;s:9:\"DIRECTION\";s:3:\"ltr\";s:18:\"vars_last_modified\";s:10:\"1380166073\";s:12:\"vars_content\";s:52770:\"//\n// Variables\n// --------------------------------------------------\n\n\n// Global values\n// --------------------------------------------------\n\n\n// Grays\n// -------------------------\n@black:                 #000;\n@grayDarker:            #222;\n@grayDark:              #333;\n@gray:                  #555;\n@grayLight:             #999;\n@grayLighter:           #eee;\n@white:                 #fff;\n\n\n// Accent colors\n// -------------------------\n@blue:                  #049cdb;\n@blueDark:              #0064cd;\n@green:                 #46a546;\n@red:                   #9d261d;\n@yellow:                #ffc40d;\n@orange:                #f89406;\n@pink:                  #c3325f;\n@purple:                #7a43b6;\n\n\n// Scaffolding\n// -------------------------\n@bodyBackground:        @white;\n@textColor:             @grayDark;\n\n\n// Links\n// -------------------------\n@linkColor:             #08c;\n@linkColorHover:        darken(@linkColor, 15%);\n\n\n// Typography\n// -------------------------\n@sansFontFamily:        \"Helvetica Neue\", Helvetica, Arial, sans-serif;\n@serifFontFamily:       Georgia, \"Times New Roman\", Times, serif;\n@monoFontFamily:        Monaco, Menlo, Consolas, \"Courier New\", monospace;\n\n@baseFontSize:          14px;\n@baseFontFamily:        @sansFontFamily;\n@baseLineHeight:        20px;\n@altFontFamily:         @serifFontFamily;\n\n@headingsFontFamily:    inherit; // empty to use BS default, @baseFontFamily\n@headingsFontWeight:    bold;    // instead of browser default, bold\n@headingsColor:         inherit; // empty to use BS default, @textColor\n\n\n// Component sizing\n// -------------------------\n// Based on 14px font-size and 20px line-height\n\n@fontSizeLarge:         @baseFontSize * 1.25; // ~18px\n@fontSizeSmall:         @baseFontSize * 0.85; // ~12px\n@fontSizeMini:          @baseFontSize * 0.75; // ~11px\n\n@paddingLarge:          11px 19px; // 44px\n@paddingSmall:          2px 10px;  // 26px\n@paddingMini:           0 6px;   // 22px\n\n@baseBorderRadius:      4px;\n@borderRadiusLarge:     6px;\n@borderRadiusSmall:     3px;\n\n\n// Tables\n// -------------------------\n@tableBackground:                   transparent; // overall background-color\n@tableBackgroundAccent:             #f9f9f9; // for striping\n@tableBackgroundHover:              #f5f5f5; // for hover\n@tableBorder:                       #ddd; // table and cell border\n\n// Buttons\n// -------------------------\n@btnBackground:                     @white;\n@btnBackgroundHighlight:            darken(@white, 10%);\n@btnBorder:                         #ccc;\n\n@btnPrimaryBackground:              @linkColor;\n@btnPrimaryBackgroundHighlight:     spin(@btnPrimaryBackground, 20%);\n\n@btnInfoBackground:                 #5bc0de;\n@btnInfoBackgroundHighlight:        #2f96b4;\n\n@btnSuccessBackground:              #62c462;\n@btnSuccessBackgroundHighlight:     #51a351;\n\n@btnWarningBackground:              lighten(@orange, 15%);\n@btnWarningBackgroundHighlight:     @orange;\n\n@btnDangerBackground:               #ee5f5b;\n@btnDangerBackgroundHighlight:      #bd362f;\n\n@btnInverseBackground:              #444;\n@btnInverseBackgroundHighlight:     @grayDarker;\n\n\n// Forms\n// -------------------------\n@inputBackground:               @white;\n@inputBorder:                   #ccc;\n@inputBorderRadius:             @baseBorderRadius;\n@inputDisabledBackground:       @grayLighter;\n@formActionsBackground:         #f5f5f5;\n@inputHeight:                   @baseLineHeight + 10px; // base line-height + 8px vertical padding + 2px top/bottom border\n\n\n// Dropdowns\n// -------------------------\n@dropdownBackground:            @white;\n@dropdownBorder:                rgba(0,0,0,.2);\n@dropdownDividerTop:            #e5e5e5;\n@dropdownDividerBottom:         @white;\n\n@dropdownLinkColor:             @grayDark;\n@dropdownLinkColorHover:        @white;\n@dropdownLinkColorActive:       @white;\n\n@dropdownLinkBackgroundActive:  @linkColor;\n@dropdownLinkBackgroundHover:   @dropdownLinkBackgroundActive;\n\n\n\n// COMPONENT VARIABLES\n// --------------------------------------------------\n\n\n// Z-index master list\n// -------------------------\n// Used for a bird\'s eye view of components dependent on the z-axis\n// Try to avoid customizing these :)\n@zindexDropdown:          1000;\n@zindexPopover:           1010;\n@zindexTooltip:           1030;\n@zindexFixedNavbar:       1030;\n@zindexModalBackdrop:     1040;\n@zindexModal:             1050;\n\n\n// Sprite icons path\n// -------------------------\n@iconSpritePath:          \"../img/glyphicons-halflings.png\";\n@iconWhiteSpritePath:     \"../img/glyphicons-halflings-white.png\";\n\n\n// Input placeholder text color\n// -------------------------\n@placeholderText:         @grayLight;\n\n\n// Hr border color\n// -------------------------\n@hrBorder:                @grayLighter;\n\n\n// Horizontal forms & lists\n// -------------------------\n@horizontalComponentOffset:       180px;\n\n\n// Wells\n// -------------------------\n@wellBackground:                  #f5f5f5;\n\n\n// Navbar\n// -------------------------\n@navbarCollapseWidth:             979px;\n@navbarCollapseDesktopWidth:      @navbarCollapseWidth + 1;\n\n@navbarHeight:                    40px;\n@navbarBackgroundHighlight:       #ffffff;\n@navbarBackground:                darken(@navbarBackgroundHighlight, 5%);\n@navbarBorder:                    darken(@navbarBackground, 12%);\n\n@navbarText:                      #777;\n@navbarLinkColor:                 #777;\n@navbarLinkColorHover:            @grayDark;\n@navbarLinkColorActive:           @gray;\n@navbarLinkBackgroundHover:       transparent;\n@navbarLinkBackgroundActive:      darken(@navbarBackground, 5%);\n\n@navbarBrandColor:                @navbarLinkColor;\n\n// Inverted navbar\n@navbarInverseBackground:                #111111;\n@navbarInverseBackgroundHighlight:       #222222;\n@navbarInverseBorder:                    #252525;\n\n@navbarInverseText:                      @grayLight;\n@navbarInverseLinkColor:                 @grayLight;\n@navbarInverseLinkColorHover:            @white;\n@navbarInverseLinkColorActive:           @navbarInverseLinkColorHover;\n@navbarInverseLinkBackgroundHover:       transparent;\n@navbarInverseLinkBackgroundActive:      @navbarInverseBackground;\n\n@navbarInverseSearchBackground:          lighten(@navbarInverseBackground, 25%);\n@navbarInverseSearchBackgroundFocus:     @white;\n@navbarInverseSearchBorder:              @navbarInverseBackground;\n@navbarInverseSearchPlaceholderColor:    #ccc;\n\n@navbarInverseBrandColor:                @navbarInverseLinkColor;\n\n\n// Pagination\n// -------------------------\n@paginationBackground:                #fff;\n@paginationBorder:                    #ddd;\n@paginationActiveBackground:          #f5f5f5;\n\n\n// Hero unit\n// -------------------------\n@heroUnitBackground:              @grayLighter;\n@heroUnitHeadingColor:            inherit;\n@heroUnitLeadColor:               inherit;\n\n\n// Form states and alerts\n// -------------------------\n@warningText:             #c09853;\n@warningBackground:       #fcf8e3;\n@warningBorder:           darken(spin(@warningBackground, -10), 3%);\n\n@errorText:               #b94a48;\n@errorBackground:         #f2dede;\n@errorBorder:             darken(spin(@errorBackground, -10), 3%);\n\n@successText:             #468847;\n@successBackground:       #dff0d8;\n@successBorder:           darken(spin(@successBackground, -10), 5%);\n\n@infoText:                #3a87ad;\n@infoBackground:          #d9edf7;\n@infoBorder:              darken(spin(@infoBackground, -10), 7%);\n\n\n// Tooltips and popovers\n// -------------------------\n@tooltipColor:            #fff;\n@tooltipBackground:       #000;\n@tooltipArrowWidth:       5px;\n@tooltipArrowColor:       @tooltipBackground;\n\n@popoverBackground:       #fff;\n@popoverArrowWidth:       10px;\n@popoverArrowColor:       #fff;\n@popoverTitleBackground:  darken(@popoverBackground, 3%);\n\n// Special enhancement for popovers\n@popoverArrowOuterWidth:  @popoverArrowWidth + 1;\n@popoverArrowOuterColor:  rgba(0,0,0,.25);\n\n\n\n// GRID\n// --------------------------------------------------\n\n\n// Default 940px grid\n// -------------------------\n@gridColumns:             12;\n@gridColumnWidth:         60px;\n@gridGutterWidth:         20px;\n@gridRowWidth:            (@gridColumns * @gridColumnWidth) + (@gridGutterWidth * (@gridColumns - 1));\n\n// 1200px min\n@gridColumnWidth1200:     70px;\n@gridGutterWidth1200:     30px;\n@gridRowWidth1200:        (@gridColumns * @gridColumnWidth1200) + (@gridGutterWidth1200 * (@gridColumns - 1));\n\n// 768px-979px\n@gridColumnWidth768:      42px;\n@gridGutterWidth768:      20px;\n@gridRowWidth768:         (@gridColumns * @gridColumnWidth768) + (@gridGutterWidth768 * (@gridColumns - 1));\n\n\n// Fluid grid\n// -------------------------\n@fluidGridColumnWidth:    percentage(@gridColumnWidth/@gridRowWidth);\n@fluidGridGutterWidth:    percentage(@gridGutterWidth/@gridRowWidth);\n\n// 1200px min\n@fluidGridColumnWidth1200:     percentage(@gridColumnWidth1200/@gridRowWidth1200);\n@fluidGridGutterWidth1200:     percentage(@gridGutterWidth1200/@gridRowWidth1200);\n\n// 768px-979px\n@fluidGridColumnWidth768:      percentage(@gridColumnWidth768/@gridRowWidth768);\n@fluidGridGutterWidth768:      percentage(@gridGutterWidth768/@gridRowWidth768);\n/** \n *------------------------------------------------------------------------------\n * @package       T3 Framework for Joomla!\n *------------------------------------------------------------------------------\n * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.\n * @license       GNU General Public License version 2 or later; see LICENSE.txt\n * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github \n *                & Google group to become co-author)\n * @Google group: https://groups.google.com/forum/#!forum/t3fw\n * @Link:         https://github.com/t3framework/ \n *------------------------------------------------------------------------------\n*/\n\n//\n// USE TO OVERRIDE BOOTSTRAP VARIABLES \n// AND DEFINE THOSE NEWS VARIABLE WHICH WILL BE USED IN T3 CORE\n// ---------------------------------------------------------\n\n\n\n// OVERRIDE BOOTSTRAP VARIABLES\n// --------------------------------------------------\n\n// Define Navbar Collapse Width\n@navbarCollapseWidth:   767px;\n@navbarCollapseDesktopWidth:  @navbarCollapseWidth + 1;\n\n\n// T3 GLOBAL STYLES\n// --------------------------------------------------\n\n// Module Styles\n// -------------------------\n// Module General\n@T3moduleBackground:            transparent;\n@T3moduleColor:                 inherit;\n@T3modulePadding:               0;\n@T3moduleBorder:                1px solid #ddd;\n\n// Module Title\n@T3moduleTitleBackground:       inherit; // inherit from @moduleBackground\n@T3moduleTitleColor:            @headingsColor; // inherit from @moduleColor\n@T3moduleTitlePadding:          0;\n\n// Module Content\n@T3moduleContentBackground:     inherit; // inherit from @moduleBackground\n@T3moduleContentColor:          inherit; // inherit from @moduleColor\n@T3moduleContentPadding:        0;\n\n\n// Global Margin& Padding\n// -------------------------\n@T3globalMargin:            @baseLineHeight;\n@T3globalPadding:           @baseLineHeight;\n\n\n// Typography\n// -------------------------\n@T3bigFontSize:         @baseFontSize + 1px;\n@T3biggerFontSize:      @baseFontSize + 2px;\n\n@T3smallFontSize:       @baseFontSize - 1px;\n@T3smallerFontSize:     @baseFontSize - 2px;\n\n\n// Off-Canvas menu width \n// -------------------------\n@T3OffCanvasWidth: 			250px;/** \r\n *------------------------------------------------------------------------------\r\n * @package       T3 Framework for Joomla!\r\n *------------------------------------------------------------------------------\r\n * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.\r\n * @license       GNU General Public License version 2 or later; see LICENSE.txt\r\n * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github \r\n *                & Google group to become co-author)\r\n * @Google group: https://groups.google.com/forum/#!forum/t3fw\r\n * @Link:         http://t3-framework.org \r\n *------------------------------------------------------------------------------\r\n */\r\n\r\n//\r\n// Variables\r\n// --------------------------------------------------\r\n\r\n\r\n// Global values\r\n// --------------------------------------------------\r\n@T3ImagePath:           \"../images\";\r\n\r\n// Grays\r\n// -------------------------\r\n@black:                 #000;\r\n@grayDarker:            #222;\r\n@grayDark:              #444;\r\n@gray:                  #666;\r\n@grayLight:             #999;\r\n@grayLighter:           #eee;\r\n@white:                 #fff;\r\n\r\n\r\n// Accent colors\r\n// -------------------------\r\n@blue:                  #07b;\r\n@blueDark:              darken(@blue, 15%);\r\n@green:                 #690;\r\n@cyan:                  #09c; // T3 added\r\n@red:                   #c00;\r\n@yellow:                #fc0;\r\n@orange:                #f80;\r\n@pink:                  #d60a6c;\r\n@purple:                #8b08ae;\r\n\r\n\r\n// T3 Main colors\r\n// -------------------------\r\n@T3primaryColor:        @blue;\r\n@T3secondaryColor:      @green;\r\n\r\n\r\n\r\n// Scaffolding\r\n// -------------------------\r\n@bodyBackground:        @white;\r\n@textColor:             @gray;\r\n\r\n\r\n// Links\r\n// -------------------------\r\n@linkColor:             @T3primaryColor;\r\n@linkColorHover:        darken(@linkColor, 15%);\r\n\r\n\r\n// Typography\r\n// -------------------------\r\n@sansFontFamily:        sans-serif;\r\n@serifFontFamily:       serif;\r\n@monoFontFamily:        monospace;\r\n\r\n@baseFontSize:          14px;\r\n@baseFontFamily:        @sansFontFamily;\r\n@baseLineHeight:        20px;\r\n@altFontFamily:         @serifFontFamily;\r\n\r\n@headingsFontFamily:    @sansFontFamily; // empty to use BS default, @baseFontFamily\r\n@headingsFontWeight:    bold;    // instead of browser default, bold\r\n@headingsColor:         @grayDark; // empty to use BS default, @textColor\r\n\r\n\r\n@T3bigFontSize:         @baseFontSize + 1px;\r\n@T3biggerFontSize:      @baseFontSize + 2px;\r\n\r\n@T3smallFontSize:       @baseFontSize - 1px;\r\n@T3smallerFontSize:     @baseFontSize - 2px;\r\n\r\n\r\n// Component sizing\r\n// -------------------------\r\n// Based on 14px font-size and 20px line-height\r\n\r\n@fontSizeLarge:         @baseFontSize * 1.25; // ~18px\r\n@fontSizeSmall:         @baseFontSize * 0.85; // ~12px\r\n@fontSizeMini:          @baseFontSize * 0.75; // ~11px\r\n\r\n@paddingLarge:          11px 19px; // 44px\r\n@paddingSmall:          2px 10px;  // 26px\r\n@paddingMini:           1px 6px;   // 24px\r\n\r\n@baseBorderRadius:      4px;\r\n@borderRadiusLarge:     6px;\r\n@borderRadiusSmall:     3px;\r\n@LargeBorderRadius:		  @borderRadiusLarge;\r\n\r\n// Tables\r\n// -------------------------\r\n@tableBackground:                   transparent; // overall background-color\r\n@tableBackgroundAccent:             #f9f9f9; // for striping\r\n@tableBackgroundHover:              #f5f5f5; // for hover\r\n@tableBorder:                       #ddd; // table and cell border\r\n\r\n\r\n// Buttons\r\n// -------------------------\r\n@btnBackground:                     @grayLighter;\r\n@btnBackgroundHighlight:            lighten(@grayLighter, 10%);\r\n@btnBorder:                         darken(@grayLighter, 10%);\r\n\r\n@btnPrimaryBackground:              @linkColor;\r\n@btnPrimaryBackgroundHighlight:     lighten(@linkColor, 10%);\r\n\r\n@btnInfoBackground:                 @cyan;\r\n@btnInfoBackgroundHighlight:        lighten(@cyan, 10%);\r\n\r\n@btnSuccessBackground:              @green;\r\n@btnSuccessBackgroundHighlight:     lighten(@green, 10%);\r\n\r\n@btnWarningBackground:              @orange;\r\n@btnWarningBackgroundHighlight:     lighten(@orange, 10%);\r\n\r\n@btnDangerBackground:               @red;\r\n@btnDangerBackgroundHighlight:      lighten(@red, 10%);\r\n\r\n@btnInverseBackground:              @grayDark;\r\n@btnInverseBackgroundHighlight:     lighten(@grayDark, 10%);\r\n\r\n\r\n// Forms\r\n// -------------------------\r\n@inputBackground:         @white;\r\n@inputBorder:             #ccc;\r\n@inputBorderRadius:       @baseBorderRadius;\r\n@inputDisabledBackground: @grayLighter;\r\n@formActionsBackground:   #f5f5f5;\r\n\r\n\r\n\r\n// COMPONENT VARIABLES\r\n// --------------------------------------------------\r\n\r\n// Z-index master list\r\n// -------------------------\r\n// Used for a bird\'s eye view of components dependent on the z-axis\r\n// Try to avoid customizing these :)\r\n@zindexDropdown:          1000;\r\n@zindexPopover:           1010;\r\n@zindexTooltip:           1030;\r\n@zindexFixedNavbar:       1030;\r\n@zindexModalBackdrop:     1040;\r\n@zindexModal:             1050;\r\n\r\n\r\n// Sprite icons path\r\n// -------------------------\r\n@iconSpritePath:          \"../images/glyphicons-halflings.png\";\r\n@iconWhiteSpritePath:     \"../images/glyphicons-halflings-white.png\";\r\n\r\n\r\n// Input placeholder text color\r\n// -------------------------\r\n@placeholderText:         @grayLight;\r\n\r\n\r\n// Hr border color\r\n// -------------------------\r\n@hrBorder:                @grayLighter;\r\n\r\n\r\n// Wells\r\n// -------------------------\r\n@wellBackground:          #f5f5f5;\r\n\r\n\r\n// Navbar\r\n// -------------------------\r\n@navbarCollapseWidth:             767px;\r\n\r\n@navbarHeight:                    40px;\r\n@navbarBackground:                darken(@navbarBackgroundHighlight, 10%);\r\n@navbarBackgroundHighlight:       #ffffff;\r\n@navbarBorder:                    darken(@navbarBackground, 12%);\r\n\r\n@navbarText:                      @gray;\r\n@navbarLinkColor:                 @gray;\r\n@navbarLinkColorHover:            @grayLighter;\r\n@navbarLinkColorActive:           @grayLighter;\r\n@navbarLinkBackgroundHover:       @gray;\r\n@navbarLinkBackgroundActive:      @linkColor;\r\n\r\n@navbarBrandColor:                @navbarLinkColor;\r\n\r\n// Inverted navbar\r\n@navbarInverseBackground:                #111111;\r\n@navbarInverseBackgroundHighlight:       #222222;\r\n@navbarInverseBorder:                    #252525;\r\n\r\n@navbarInverseText:                      @grayLight;\r\n@navbarInverseLinkColor:                 @grayLight;\r\n@navbarInverseLinkColorHover:            @white;\r\n@navbarInverseLinkColorActive:           @navbarInverseLinkColorHover;\r\n@navbarInverseLinkBackgroundHover:       transparent;\r\n@navbarInverseLinkBackgroundActive:      @navbarInverseBackground;\r\n\r\n@navbarInverseSearchBackground:          lighten(@navbarInverseBackground, 25%);\r\n@navbarInverseSearchBackgroundFocus:     @white;\r\n@navbarInverseSearchBorder:              @navbarInverseBackground;\r\n@navbarInverseSearchPlaceholderColor:    #ccc;\r\n\r\n@navbarInverseBrandColor:                @navbarInverseLinkColor;\r\n\r\n\r\n// Dropdowns\r\n// -------------------------\r\n// (T3 Note: Move \"dropdowns\" variables belows \"navbar\")\r\n@dropdownBackground:            @white;\r\n@dropdownBorder:                rgba(0,0,0,.2);\r\n@dropdownDividerTop:            #e5e5e5;\r\n@dropdownDividerBottom:         @white;\r\n\r\n@dropdownLinkColor:             @grayDark;\r\n\r\n@dropdownLinkColorHover:        @navbarLinkColorHover;\r\n@dropdownLinkBackgroundHover:   @navbarLinkBackgroundHover;\r\n\r\n@dropdownLinkColorActive:       @navbarLinkColorActive;\r\n@dropdownLinkBackgroundActive:  @navbarLinkBackgroundActive;\r\n\r\n\r\n// Pagination\r\n// -------------------------\r\n@paginationBackground:          #fff;\r\n@paginationBorder:              #ddd;\r\n@paginationActiveBackground:    #f5f5f5;\r\n\r\n\r\n// Hero unit\r\n// -------------------------\r\n@heroUnitBackground:            @grayLighter;\r\n@heroUnitHeadingColor:          inherit;\r\n@heroUnitLeadColor:             inherit;\r\n\r\n\r\n// Form states and alerts\r\n// -------------------------\r\n@warningText:             @orange;\r\n@warningBackground:       #fcf8e3;\r\n@warningBorder:           darken(spin(@warningBackground, -10), 3%);\r\n\r\n@errorText:               @red;\r\n@errorBackground:         #f2dede;\r\n@errorBorder:             darken(spin(@errorBackground, -10), 3%);\r\n\r\n@successText:             @green;\r\n@successBackground:       #dff0d8;\r\n@successBorder:           darken(spin(@successBackground, -10), 5%);\r\n\r\n@infoText:                @blue;\r\n@infoBackground:          #d9edf7;\r\n@infoBorder:              darken(spin(@infoBackground, -10), 7%);\r\n\r\n\r\n// Tooltips and popovers\r\n// -------------------------\r\n@tooltipColor:            #fff;\r\n@tooltipBackground:       #000;\r\n@tooltipArrowWidth:       5px;\r\n@tooltipArrowColor:       @tooltipBackground;\r\n\r\n@popoverBackground:       #fff;\r\n@popoverArrowWidth:       10px;\r\n@popoverArrowColor:       #fff;\r\n@popoverTitleBackground:  darken(@popoverBackground, 3%);\r\n\r\n// Special enhancement for popovers\r\n@popoverArrowOuterWidth:  @popoverArrowWidth + 1;\r\n@popoverArrowOuterColor:  rgba(0,0,0,.25);\r\n\r\n\r\n\r\n// GRID\r\n// --------------------------------------------------\r\n\r\n// Default 940px grid\r\n// -------------------------\r\n@T3gridWidth:             940px;  // T3 add. For non-responsive layout.\r\n@gridColumns:             12;\r\n@gridGutterWidth:         40px;\r\n@gridColumnWidth:     	  floor((@T3gridWidth - @gridGutterWidth * (@gridColumns - 1)) / @gridColumns);\r\n@gridRowWidth:            (@gridColumns * @gridColumnWidth) + (@gridGutterWidth * (@gridColumns - 1));\r\n\r\n// 1200px min\r\n@T3gridWidth1200:         1200px;  // T3 add\r\n@gridGutterWidth1200:     40px;\r\n@gridColumnWidth1200:     floor((@T3gridWidth1200 - @gridGutterWidth1200 * (@gridColumns - 1)) / @gridColumns);\r\n@gridRowWidth1200:        (@gridColumns * @gridColumnWidth1200) + (@gridGutterWidth1200 * (@gridColumns - 1));\r\n\r\n// 980px-1199px\r\n@T3gridWidth980:          940px;  // T3 add\r\n@gridGutterWidth980:      40px;\r\n@gridColumnWidth980:      floor((@T3gridWidth980 - @gridGutterWidth980 * (@gridColumns - 1)) / @gridColumns);\r\n@gridRowWidth980:         (@gridColumns * @gridColumnWidth980) + (@gridGutterWidth980 * (@gridColumns - 1));\r\n\r\n// T3 Add: 768px-979px\r\n@T3gridWidth768:          740px;  // T3 add\r\n@gridGutterWidth768:      20px;\r\n@gridColumnWidth768:      floor((@T3gridWidth768 - @gridGutterWidth768 * (@gridColumns - 1)) / @gridColumns);\r\n@gridRowWidth768:         (@gridColumns * @gridColumnWidth768) + (@gridGutterWidth768 * (@gridColumns - 1));\r\n\r\n\r\n// Fluid grid\r\n// -------------------------\r\n@fluidGridColumnWidth:      percentage(@gridColumnWidth/@gridRowWidth);\r\n@fluidGridGutterWidth:      percentage(@gridGutterWidth/@gridRowWidth);\r\n\r\n// 1200px min\r\n@fluidGridColumnWidth1200:  percentage(@gridColumnWidth1200/@gridRowWidth1200);\r\n@fluidGridGutterWidth1200:  percentage(@gridGutterWidth1200/@gridRowWidth1200);\r\n\r\n// 980px-1199px\r\n@fluidGridColumnWidth980:   percentage(@gridColumnWidth980/@gridRowWidth980);\r\n@fluidGridGutterWidth980:   percentage(@gridGutterWidth980/@gridRowWidth980);\r\n\r\n// T3 Extensed: 768px-979px\r\n@fluidGridColumnWidth768:   percentage(@gridColumnWidth768/@gridRowWidth768);\r\n@fluidGridGutterWidth768:   percentage(@gridGutterWidth768/@gridRowWidth768);\r\n\r\n\r\n\r\n//\r\n// T3 TEMPLATE STYLES\r\n// --------------------------------------------------\r\n@T3borderColor:             #ddd;\r\n@T3bodyBackgroundImage:     none;\r\n\r\n// Global Margin & Padding\r\n@T3globalMargin:            @baseLineHeight;\r\n@T3globalPadding:           @baseLineHeight;\r\n\r\n\r\n// ThemeMagic\r\n// -------------------------\r\n@T3NavbarInverted:          0;\r\n@T3SpotlightsInverted:      0;\r\n\r\n\r\n\r\n//\r\n// T3 LOGO\r\n// --------------------------------------------------\r\n@T3logoWidth:               204px;\r\n@T3logoHeight:              65px;\r\n\r\n@T3LogoImage:               \"@{T3ImagePath}/logo.png\";\r\n\r\n\r\n\r\n//\r\n// T3 GLOBAL STYLES\r\n// --------------------------------------------------\r\n\r\n// Module Styles\r\n// -------------------------\r\n// Module General\r\n@T3moduleBackground:            transparent;\r\n@T3moduleColor:                 inherit;\r\n@T3modulePadding:               0;\r\n@T3moduleBorder:                1px solid @T3borderColor;\r\n\r\n// Module Title\r\n@T3moduleTitleBackground:       inherit; // inherit from @moduleBackground\r\n@T3moduleTitleColor:            @headingsColor; // inherit from @moduleColor\r\n@T3moduleTitlePadding:          0;\r\n\r\n// Module Content\r\n@T3moduleContentBackground:     inherit; // inherit from @moduleBackground\r\n@T3moduleContentColor:          inherit; // inherit from @moduleColor\r\n@T3moduleContentPadding:        0;\r\n\r\n\r\n// Footer Modules Styles\r\n// -------------------------\r\n@T3FooterModuleTitleColor:      @grayLight;\r\n@T3FooterModuleColor:           @grayLight;\r\n\r\n\r\n\r\n//\n// Mixins\n// --------------------------------------------------\n\n\n// UTILITY MIXINS\n// --------------------------------------------------\n\n// Clearfix\n// --------\n// For clearing floats like a boss h5bp.com/q\n.clearfix {\n  *zoom: 1;\n  &:before,\n  &:after {\n    display: table;\n    content: \"\";\n    // Fixes Opera/contenteditable bug:\n    // http://nicolasgallagher.com/micro-clearfix-hack/#comment-36952\n    line-height: 0;\n  }\n  &:after {\n    clear: both;\n  }\n}\n\n// Webkit-style focus\n// ------------------\n.tab-focus() {\n  // Default\n  outline: thin dotted #333;\n  // Webkit\n  outline: 5px auto -webkit-focus-ring-color;\n  outline-offset: -2px;\n}\n\n// Center-align a block level element\n// ----------------------------------\n.center-block() {\n  display: block;\n  margin-left: auto;\n  margin-right: auto;\n}\n\n// IE7 inline-block\n// ----------------\n.ie7-inline-block() {\n  *display: inline; /* IE7 inline-block hack */\n  *zoom: 1;\n}\n\n// IE7 likes to collapse whitespace on either side of the inline-block elements.\n// Ems because we\'re attempting to match the width of a space character. Left\n// version is for form buttons, which typically come after other elements, and\n// right version is for icons, which come before. Applying both is ok, but it will\n// mean that space between those elements will be .6em (~2 space characters) in IE7,\n// instead of the 1 space in other browsers.\n.ie7-restore-left-whitespace() {\n  *margin-left: .3em;\n\n  &:first-child {\n    *margin-left: 0;\n  }\n}\n\n.ie7-restore-right-whitespace() {\n  *margin-right: .3em;\n}\n\n// Sizing shortcuts\n// -------------------------\n.size(@height, @width) {\n  width: @width;\n  height: @height;\n}\n.square(@size) {\n  .size(@size, @size);\n}\n\n// Placeholder text\n// -------------------------\n.placeholder(@color: @placeholderText) {\n  &:-moz-placeholder {\n    color: @color;\n  }\n  &:-ms-input-placeholder {\n    color: @color;\n  }\n  &::-webkit-input-placeholder {\n    color: @color;\n  }\n}\n\n// Text overflow\n// -------------------------\n// Requires inline-block or block for proper styling\n.text-overflow() {\n  overflow: hidden;\n  text-overflow: ellipsis;\n  white-space: nowrap;\n}\n\n// CSS image replacement\n// -------------------------\n// Source: https://github.com/h5bp/html5-boilerplate/commit/aa0396eae757\n.hide-text {\n  font: 0/0 a;\n  color: transparent;\n  text-shadow: none;\n  background-color: transparent;\n  border: 0;\n}\n\n\n// FONTS\n// --------------------------------------------------\n\n#font {\n  #family {\n    .serif() {\n      font-family: @serifFontFamily;\n    }\n    .sans-serif() {\n      font-family: @sansFontFamily;\n    }\n    .monospace() {\n      font-family: @monoFontFamily;\n    }\n  }\n  .shorthand(@size: @baseFontSize, @weight: normal, @lineHeight: @baseLineHeight) {\n    font-size: @size;\n    font-weight: @weight;\n    line-height: @lineHeight;\n  }\n  .serif(@size: @baseFontSize, @weight: normal, @lineHeight: @baseLineHeight) {\n    #font > #family > .serif;\n    #font > .shorthand(@size, @weight, @lineHeight);\n  }\n  .sans-serif(@size: @baseFontSize, @weight: normal, @lineHeight: @baseLineHeight) {\n    #font > #family > .sans-serif;\n    #font > .shorthand(@size, @weight, @lineHeight);\n  }\n  .monospace(@size: @baseFontSize, @weight: normal, @lineHeight: @baseLineHeight) {\n    #font > #family > .monospace;\n    #font > .shorthand(@size, @weight, @lineHeight);\n  }\n}\n\n\n// FORMS\n// --------------------------------------------------\n\n// Block level inputs\n.input-block-level {\n  display: block;\n  width: 100%;\n  min-height: @inputHeight; // Make inputs at least the height of their button counterpart (base line-height + padding + border)\n  .box-sizing(border-box); // Makes inputs behave like true block-level elements\n}\n\n\n\n// Mixin for form field states\n.formFieldState(@textColor: #555, @borderColor: #ccc, @backgroundColor: #f5f5f5) {\n  // Set the text color\n  .control-label,\n  .help-block,\n  .help-inline {\n    color: @textColor;\n  }\n  // Style inputs accordingly\n  .checkbox,\n  .radio,\n  input,\n  select,\n  textarea {\n    color: @textColor;\n  }\n  input,\n  select,\n  textarea {\n    border-color: @borderColor;\n    .box-shadow(inset 0 1px 1px rgba(0,0,0,.075)); // Redeclare so transitions work\n    &:focus {\n      border-color: darken(@borderColor, 10%);\n      @shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 6px lighten(@borderColor, 20%);\n      .box-shadow(@shadow);\n    }\n  }\n  // Give a small background color for input-prepend/-append\n  .input-prepend .add-on,\n  .input-append .add-on {\n    color: @textColor;\n    background-color: @backgroundColor;\n    border-color: @textColor;\n  }\n}\n\n\n\n// CSS3 PROPERTIES\n// --------------------------------------------------\n\n// Border Radius\n.border-radius(@radius) {\n  -webkit-border-radius: @radius;\n     -moz-border-radius: @radius;\n          border-radius: @radius;\n}\n\n// Single Corner Border Radius\n.border-top-left-radius(@radius) {\n  -webkit-border-top-left-radius: @radius;\n      -moz-border-radius-topleft: @radius;\n          border-top-left-radius: @radius;\n}\n.border-top-right-radius(@radius) {\n  -webkit-border-top-right-radius: @radius;\n      -moz-border-radius-topright: @radius;\n          border-top-right-radius: @radius;\n}\n.border-bottom-right-radius(@radius) {\n  -webkit-border-bottom-right-radius: @radius;\n      -moz-border-radius-bottomright: @radius;\n          border-bottom-right-radius: @radius;\n}\n.border-bottom-left-radius(@radius) {\n  -webkit-border-bottom-left-radius: @radius;\n      -moz-border-radius-bottomleft: @radius;\n          border-bottom-left-radius: @radius;\n}\n\n// Single Side Border Radius\n.border-top-radius(@radius) {\n  .border-top-right-radius(@radius);\n  .border-top-left-radius(@radius);\n}\n.border-right-radius(@radius) {\n  .border-top-right-radius(@radius);\n  .border-bottom-right-radius(@radius);\n}\n.border-bottom-radius(@radius) {\n  .border-bottom-right-radius(@radius);\n  .border-bottom-left-radius(@radius);\n}\n.border-left-radius(@radius) {\n  .border-top-left-radius(@radius);\n  .border-bottom-left-radius(@radius);\n}\n\n// Drop shadows\n.box-shadow(@shadow) {\n  -webkit-box-shadow: @shadow;\n     -moz-box-shadow: @shadow;\n          box-shadow: @shadow;\n}\n\n// Transitions\n.transition(@transition) {\n  -webkit-transition: @transition;\n     -moz-transition: @transition;\n       -o-transition: @transition;\n          transition: @transition;\n}\n.transition-delay(@transition-delay) {\n  -webkit-transition-delay: @transition-delay;\n     -moz-transition-delay: @transition-delay;\n       -o-transition-delay: @transition-delay;\n          transition-delay: @transition-delay;\n}\n.transition-duration(@transition-duration) {\n  -webkit-transition-duration: @transition-duration;\n     -moz-transition-duration: @transition-duration;\n       -o-transition-duration: @transition-duration;\n          transition-duration: @transition-duration;\n}\n\n// Transformations\n.rotate(@degrees) {\n  -webkit-transform: rotate(@degrees);\n     -moz-transform: rotate(@degrees);\n      -ms-transform: rotate(@degrees);\n       -o-transform: rotate(@degrees);\n          transform: rotate(@degrees);\n}\n.scale(@ratio) {\n  -webkit-transform: scale(@ratio);\n     -moz-transform: scale(@ratio);\n      -ms-transform: scale(@ratio);\n       -o-transform: scale(@ratio);\n          transform: scale(@ratio);\n}\n.translate(@x, @y) {\n  -webkit-transform: translate(@x, @y);\n     -moz-transform: translate(@x, @y);\n      -ms-transform: translate(@x, @y);\n       -o-transform: translate(@x, @y);\n          transform: translate(@x, @y);\n}\n.skew(@x, @y) {\n  -webkit-transform: skew(@x, @y);\n     -moz-transform: skew(@x, @y);\n      -ms-transform: skewX(@x) skewY(@y); // See https://github.com/twitter/bootstrap/issues/4885\n       -o-transform: skew(@x, @y);\n          transform: skew(@x, @y);\n  -webkit-backface-visibility: hidden; // See https://github.com/twitter/bootstrap/issues/5319\n}\n.translate3d(@x, @y, @z) {\n  -webkit-transform: translate3d(@x, @y, @z);\n     -moz-transform: translate3d(@x, @y, @z);\n       -o-transform: translate3d(@x, @y, @z);\n          transform: translate3d(@x, @y, @z);\n}\n\n// Backface visibility\n// Prevent browsers from flickering when using CSS 3D transforms.\n// Default value is `visible`, but can be changed to `hidden\n// See git pull https://github.com/dannykeane/bootstrap.git backface-visibility for examples\n.backface-visibility(@visibility){\n	-webkit-backface-visibility: @visibility;\n	   -moz-backface-visibility: @visibility;\n	        backface-visibility: @visibility;\n}\n\n// Background clipping\n// Heads up: FF 3.6 and under need \"padding\" instead of \"padding-box\"\n.background-clip(@clip) {\n  -webkit-background-clip: @clip;\n     -moz-background-clip: @clip;\n          background-clip: @clip;\n}\n\n// Background sizing\n.background-size(@size) {\n  -webkit-background-size: @size;\n     -moz-background-size: @size;\n       -o-background-size: @size;\n          background-size: @size;\n}\n\n\n// Box sizing\n.box-sizing(@boxmodel) {\n  -webkit-box-sizing: @boxmodel;\n     -moz-box-sizing: @boxmodel;\n          box-sizing: @boxmodel;\n}\n\n// User select\n// For selecting text on the page\n.user-select(@select) {\n  -webkit-user-select: @select;\n     -moz-user-select: @select;\n      -ms-user-select: @select;\n       -o-user-select: @select;\n          user-select: @select;\n}\n\n// Resize anything\n.resizable(@direction) {\n  resize: @direction; // Options: horizontal, vertical, both\n  overflow: auto; // Safari fix\n}\n\n// CSS3 Content Columns\n.content-columns(@columnCount, @columnGap: @gridGutterWidth) {\n  -webkit-column-count: @columnCount;\n     -moz-column-count: @columnCount;\n          column-count: @columnCount;\n  -webkit-column-gap: @columnGap;\n     -moz-column-gap: @columnGap;\n          column-gap: @columnGap;\n}\n\n// Optional hyphenation\n.hyphens(@mode: auto) {\n  word-wrap: break-word;\n  -webkit-hyphens: @mode;\n     -moz-hyphens: @mode;\n      -ms-hyphens: @mode;\n       -o-hyphens: @mode;\n          hyphens: @mode;\n}\n\n// Opacity\n.opacity(@opacity) {\n  opacity: @opacity / 100;\n  filter: ~\"alpha(opacity=@{opacity})\";\n}\n\n\n\n// BACKGROUNDS\n// --------------------------------------------------\n\n// Add an alphatransparency value to any background or border color (via Elyse Holladay)\n#translucent {\n  .background(@color: @white, @alpha: 1) {\n    background-color: hsla(hue(@color), saturation(@color), lightness(@color), @alpha);\n  }\n  .border(@color: @white, @alpha: 1) {\n    border-color: hsla(hue(@color), saturation(@color), lightness(@color), @alpha);\n    .background-clip(padding-box);\n  }\n}\n\n// Gradient Bar Colors for buttons and alerts\n.gradientBar(@primaryColor, @secondaryColor, @textColor: #fff, @textShadow: 0 -1px 0 rgba(0,0,0,.25)) {\n  color: @textColor;\n  text-shadow: @textShadow;\n  #gradient > .vertical(@primaryColor, @secondaryColor);\n  border-color: @secondaryColor @secondaryColor darken(@secondaryColor, 15%);\n  border-color: rgba(0,0,0,.1) rgba(0,0,0,.1) fadein(rgba(0,0,0,.1), 15%);\n}\n\n// Gradients\n#gradient {\n  .horizontal(@startColor: #555, @endColor: #333) {\n    background-color: @endColor;\n    background-image: -moz-linear-gradient(left, @startColor, @endColor); // FF 3.6+\n    background-image: -webkit-gradient(linear, 0 0, 100% 0, from(@startColor), to(@endColor)); // Safari 4+, Chrome 2+\n    background-image: -webkit-linear-gradient(left, @startColor, @endColor); // Safari 5.1+, Chrome 10+\n    background-image: -o-linear-gradient(left, @startColor, @endColor); // Opera 11.10\n    background-image: linear-gradient(to right, @startColor, @endColor); // Standard, IE10\n    background-repeat: repeat-x;\n    filter: e(%(\"progid:DXImageTransform.Microsoft.gradient(startColorstr=\'%d\', endColorstr=\'%d\', GradientType=1)\",argb(@startColor),argb(@endColor))); // IE9 and down\n  }\n  .vertical(@startColor: #555, @endColor: #333) {\n    background-color: mix(@startColor, @endColor, 60%);\n    background-image: -moz-linear-gradient(top, @startColor, @endColor); // FF 3.6+\n    background-image: -webkit-gradient(linear, 0 0, 0 100%, from(@startColor), to(@endColor)); // Safari 4+, Chrome 2+\n    background-image: -webkit-linear-gradient(top, @startColor, @endColor); // Safari 5.1+, Chrome 10+\n    background-image: -o-linear-gradient(top, @startColor, @endColor); // Opera 11.10\n    background-image: linear-gradient(to bottom, @startColor, @endColor); // Standard, IE10\n    background-repeat: repeat-x;\n    filter: e(%(\"progid:DXImageTransform.Microsoft.gradient(startColorstr=\'%d\', endColorstr=\'%d\', GradientType=0)\",argb(@startColor),argb(@endColor))); // IE9 and down\n  }\n  .directional(@startColor: #555, @endColor: #333, @deg: 45deg) {\n    background-color: @endColor;\n    background-repeat: repeat-x;\n    background-image: -moz-linear-gradient(@deg, @startColor, @endColor); // FF 3.6+\n    background-image: -webkit-linear-gradient(@deg, @startColor, @endColor); // Safari 5.1+, Chrome 10+\n    background-image: -o-linear-gradient(@deg, @startColor, @endColor); // Opera 11.10\n    background-image: linear-gradient(@deg, @startColor, @endColor); // Standard, IE10\n  }\n  .horizontal-three-colors(@startColor: #00b3ee, @midColor: #7a43b6, @colorStop: 50%, @endColor: #c3325f) {\n    background-color: mix(@midColor, @endColor, 80%);\n    background-image: -webkit-gradient(left, linear, 0 0, 0 100%, from(@startColor), color-stop(@colorStop, @midColor), to(@endColor));\n    background-image: -webkit-linear-gradient(left, @startColor, @midColor @colorStop, @endColor);\n    background-image: -moz-linear-gradient(left, @startColor, @midColor @colorStop, @endColor);\n    background-image: -o-linear-gradient(left, @startColor, @midColor @colorStop, @endColor);\n    background-image: linear-gradient(to right, @startColor, @midColor @colorStop, @endColor);\n    background-repeat: no-repeat;\n    filter: e(%(\"progid:DXImageTransform.Microsoft.gradient(startColorstr=\'%d\', endColorstr=\'%d\', GradientType=0)\",argb(@startColor),argb(@endColor))); // IE9 and down, gets no color-stop at all for proper fallback\n  }\n\n  .vertical-three-colors(@startColor: #00b3ee, @midColor: #7a43b6, @colorStop: 50%, @endColor: #c3325f) {\n    background-color: mix(@midColor, @endColor, 80%);\n    background-image: -webkit-gradient(linear, 0 0, 0 100%, from(@startColor), color-stop(@colorStop, @midColor), to(@endColor));\n    background-image: -webkit-linear-gradient(@startColor, @midColor @colorStop, @endColor);\n    background-image: -moz-linear-gradient(top, @startColor, @midColor @colorStop, @endColor);\n    background-image: -o-linear-gradient(@startColor, @midColor @colorStop, @endColor);\n    background-image: linear-gradient(@startColor, @midColor @colorStop, @endColor);\n    background-repeat: no-repeat;\n    filter: e(%(\"progid:DXImageTransform.Microsoft.gradient(startColorstr=\'%d\', endColorstr=\'%d\', GradientType=0)\",argb(@startColor),argb(@endColor))); // IE9 and down, gets no color-stop at all for proper fallback\n  }\n  .radial(@innerColor: #555, @outerColor: #333) {\n    background-color: @outerColor;\n    background-image: -webkit-gradient(radial, center center, 0, center center, 460, from(@innerColor), to(@outerColor));\n    background-image: -webkit-radial-gradient(circle, @innerColor, @outerColor);\n    background-image: -moz-radial-gradient(circle, @innerColor, @outerColor);\n    background-image: -o-radial-gradient(circle, @innerColor, @outerColor);\n    background-repeat: no-repeat;\n  }\n  .striped(@color: #555, @angle: 45deg) {\n    background-color: @color;\n    background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(.25, rgba(255,255,255,.15)), color-stop(.25, transparent), color-stop(.5, transparent), color-stop(.5, rgba(255,255,255,.15)), color-stop(.75, rgba(255,255,255,.15)), color-stop(.75, transparent), to(transparent));\n    background-image: -webkit-linear-gradient(@angle, rgba(255,255,255,.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,.15) 50%, rgba(255,255,255,.15) 75%, transparent 75%, transparent);\n    background-image: -moz-linear-gradient(@angle, rgba(255,255,255,.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,.15) 50%, rgba(255,255,255,.15) 75%, transparent 75%, transparent);\n    background-image: -o-linear-gradient(@angle, rgba(255,255,255,.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,.15) 50%, rgba(255,255,255,.15) 75%, transparent 75%, transparent);\n    background-image: linear-gradient(@angle, rgba(255,255,255,.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,.15) 50%, rgba(255,255,255,.15) 75%, transparent 75%, transparent);\n  }\n}\n// Reset filters for IE\n.reset-filter() {\n  filter: e(%(\"progid:DXImageTransform.Microsoft.gradient(enabled = false)\"));\n}\n\n\n\n// COMPONENT MIXINS\n// --------------------------------------------------\n\n// Horizontal dividers\n// -------------------------\n// Dividers (basically an hr) within dropdowns and nav lists\n.nav-divider(@top: #e5e5e5, @bottom: @white) {\n  // IE7 needs a set width since we gave a height. Restricting just\n  // to IE7 to keep the 1px left/right space in other browsers.\n  // It is unclear where IE is getting the extra space that we need\n  // to negative-margin away, but so it goes.\n  *width: 100%;\n  height: 1px;\n  margin: ((@baseLineHeight / 2) - 1) 1px; // 8px 1px\n  *margin: -5px 0 5px;\n  overflow: hidden;\n  background-color: @top;\n  border-bottom: 1px solid @bottom;\n}\n\n// Button backgrounds\n// ------------------\n.buttonBackground(@startColor, @endColor, @textColor: #fff, @textShadow: 0 -1px 0 rgba(0,0,0,.25)) {\n  // gradientBar will set the background to a pleasing blend of these, to support IE<=9\n  .gradientBar(@startColor, @endColor, @textColor, @textShadow);\n  *background-color: @endColor; /* Darken IE7 buttons by default so they stand out more given they won\'t have borders */\n  .reset-filter();\n\n  // in these cases the gradient won\'t cover the background, so we override\n  &:hover, &:focus, &:active, &.active, &.disabled, &[disabled] {\n    color: @textColor;\n    background-color: @endColor;\n    *background-color: darken(@endColor, 5%);\n  }\n\n  // IE 7 + 8 can\'t handle box-shadow to show active, so we darken a bit ourselves\n  &:active,\n  &.active {\n    background-color: darken(@endColor, 10%) e(\"\\9\");\n  }\n}\n\n// Navbar vertical align\n// -------------------------\n// Vertically center elements in the navbar.\n// Example: an element has a height of 30px, so write out `.navbarVerticalAlign(30px);` to calculate the appropriate top margin.\n.navbarVerticalAlign(@elementHeight) {\n  margin-top: (@navbarHeight - @elementHeight) / 2;\n}\n\n\n\n// Grid System\n// -----------\n\n// Centered container element\n.container-fixed() {\n  margin-right: auto;\n  margin-left: auto;\n  .clearfix();\n}\n\n// Table columns\n.tableColumns(@columnSpan: 1) {\n  float: none; // undo default grid column styles\n  width: ((@gridColumnWidth) * @columnSpan) + (@gridGutterWidth * (@columnSpan - 1)) - 16; // 16 is total padding on left and right of table cells\n  margin-left: 0; // undo default grid column styles\n}\n\n// Make a Grid\n// Use .makeRow and .makeColumn to assign semantic layouts grid system behavior\n.makeRow() {\n  margin-left: @gridGutterWidth * -1;\n  .clearfix();\n}\n.makeColumn(@columns: 1, @offset: 0) {\n  float: left;\n  margin-left: (@gridColumnWidth * @offset) + (@gridGutterWidth * (@offset - 1)) + (@gridGutterWidth * 2);\n  width: (@gridColumnWidth * @columns) + (@gridGutterWidth * (@columns - 1));\n}\n\n// The Grid\n#grid {\n\n  .core (@gridColumnWidth, @gridGutterWidth) {\n\n    .spanX (@index) when (@index > 0) {\n      (~\".span@{index}\") { .span(@index); }\n      .spanX(@index - 1);\n    }\n    .spanX (0) {}\n\n    .offsetX (@index) when (@index > 0) {\n      (~\".offset@{index}\") { .offset(@index); }\n      .offsetX(@index - 1);\n    }\n    .offsetX (0) {}\n\n    .offset (@columns) {\n      margin-left: (@gridColumnWidth * @columns) + (@gridGutterWidth * (@columns + 1));\n    }\n\n    .span (@columns) {\n      width: (@gridColumnWidth * @columns) + (@gridGutterWidth * (@columns - 1));\n    }\n\n    .row {\n      margin-left: @gridGutterWidth * -1;\n      .clearfix();\n    }\n\n    [class*=\"span\"] {\n      float: left;\n      min-height: 1px; // prevent collapsing columns\n      margin-left: @gridGutterWidth;\n    }\n\n    // Set the container width, and override it for fixed navbars in media queries\n    .container,\n    .navbar-static-top .container,\n    .navbar-fixed-top .container,\n    .navbar-fixed-bottom .container { .span(@gridColumns); }\n\n    // generate .spanX and .offsetX\n    .spanX (@gridColumns);\n    .offsetX (@gridColumns);\n\n  }\n\n  .fluid (@fluidGridColumnWidth, @fluidGridGutterWidth) {\n\n    .spanX (@index, @fluidGridColumnWidth, @fluidGridGutterWidth) when (@index > 0) {\n      (~\".span@{index}\") { .span(@index); }\n      .spanX(@index - 1, @fluidGridColumnWidth, @fluidGridGutterWidth);\n    }\n    .spanX (0, @fluidGridColumnWidth, @fluidGridGutterWidth) {}\n\n    .offsetX (@index, @fluidGridColumnWidth, @fluidGridGutterWidth) when (@index > 0) {\n      (~\'.offset@{index}\') { .offset(@index); }\n      (~\'.offset@{index}:first-child\') { .offsetFirstChild(@index); }\n      .offsetX(@index - 1, @fluidGridColumnWidth, @fluidGridGutterWidth);\n    }\n    .offsetX (0, @fluidGridColumnWidth, @fluidGridGutterWidth) {}\n\n    .offset (@columns) {\n      margin-left: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1)) + (@fluidGridGutterWidth*2);\n  	  *margin-left: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1)) - (.5 / @gridRowWidth * 100 * 1%) + (@fluidGridGutterWidth*2) - (.5 / @gridRowWidth * 100 * 1%);\n    }\n\n    .offsetFirstChild (@columns) {\n      margin-left: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1)) + (@fluidGridGutterWidth);\n      *margin-left: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1)) - (.5 / @gridRowWidth * 100 * 1%) + @fluidGridGutterWidth - (.5 / @gridRowWidth * 100 * 1%);\n    }\n\n    .span (@columns) {\n      width: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1));\n      *width: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1)) - (.5 / @gridRowWidth * 100 * 1%);\n    }\n\n    .row-fluid {\n      width: 100%;\n      .clearfix();\n      [class*=\"span\"] {\n        .input-block-level();\n        float: left;\n        margin-left: @fluidGridGutterWidth;\n        *margin-left: @fluidGridGutterWidth - (.5 / @gridRowWidth * 100 * 1%);\n      }\n      [class*=\"span\"]:first-child {\n        margin-left: 0;\n      }\n\n      // Space grid-sized controls properly if multiple per line\n      .controls-row [class*=\"span\"] + [class*=\"span\"] {\n        margin-left: @fluidGridGutterWidth;\n      }\n\n      // generate .spanX and .offsetX\n      .spanX (@gridColumns, @fluidGridColumnWidth, @fluidGridGutterWidth);\n      .offsetX (@gridColumns, @fluidGridColumnWidth, @fluidGridGutterWidth);\n    }\n\n  }\n\n  .input(@gridColumnWidth, @gridGutterWidth) {\n\n    .spanX (@index) when (@index > 0) {\n      (~\"input.span@{index}, textarea.span@{index}, .uneditable-input.span@{index}\") { .span(@index); }\n      .spanX(@index - 1);\n    }\n    .spanX (0) {}\n\n    .span(@columns) {\n      width: ((@gridColumnWidth) * @columns) + (@gridGutterWidth * (@columns - 1)) - 14;\n    }\n\n    input,\n    textarea,\n    .uneditable-input {\n      margin-left: 0; // override margin-left from core grid system\n    }\n\n    // Space grid-sized controls properly if multiple per line\n    .controls-row [class*=\"span\"] + [class*=\"span\"] {\n      margin-left: @gridGutterWidth;\n    }\n\n    // generate .spanX\n    .spanX (@gridColumns);\n\n  }\n}\n/** \n *------------------------------------------------------------------------------\n * @package       T3 Framework for Joomla!\n *------------------------------------------------------------------------------\n * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.\n * @license       GNU General Public License version 2 or later; see LICENSE.txt\n * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github \n *                & Google group to become co-author)\n * @Google group: https://groups.google.com/forum/#!forum/t3fw\n * @Link:         http://t3-framework.org \n *------------------------------------------------------------------------------\n */\n\n\n// The Grid extend\n// MIXINS\n#grid-extend {\n  \n  // extend left offset\n  .offset (@gridColumnWidth, @gridGutterWidth) {\n    .offset-X (@index) when (@index > 0) {\n      (~\".offset-@{index}\") { .offset-(@index); }\n      .offset-X(@index - 1);\n    }\n    .offset-X (0) {}\n\n    .offset- (@columns) {\n      margin-left: -(@gridColumnWidth * @columns) - (@gridGutterWidth * (@columns - 1));\n    }\n    \n    .offset-X (@gridColumns);\n  }\n\n  // fix the offset, used in t3-admin-layout-preview.less for layout configuration in template admin\n  .fixOffsetX (@fluidGridColumnWidth, @fluidGridGutterWidth) {\n\n    .offsetX (@index) when (@index > 0) {\n      (~\'.offset@{index}\') { .offset(@index); }\n      (~\'.offset@{index}:first-child\') { .offsetFirstChild(@index); }\n      .offsetX(@index - 1);\n    }\n    .offsetX (0) {}\n    .offset (@columns) {\n      margin-left: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1)) + (@fluidGridGutterWidth*2) !important;\n      *margin-left: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1)) - (.5 / @gridRowWidth * 100 * 1%) + (@fluidGridGutterWidth*2) - (.5 / @gridRowWidth * 100 * 1%) !important;\n    }\n    .offsetFirstChild (@columns) {\n      margin-left: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1)) + (@fluidGridGutterWidth) !important;\n      *margin-left: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1)) - (.5 / @gridRowWidth * 100 * 1%) + @fluidGridGutterWidth - (.5 / @gridRowWidth * 100 * 1%) !important;\n    }\n\n    .offset-X (@index) when (@index > 0) {\n      (~\'.offset-@{index}\') { .offset-(@index); }\n      .offset-X(@index - 1);\n    }\n    .offset-X (0) {}\n    .offset- (@columns) {\n      margin-left: -(@fluidGridColumnWidth * @columns) - (@fluidGridGutterWidth * (@columns - 1)) !important;\n      *margin-left: -(@fluidGridColumnWidth * @columns) - (@fluidGridGutterWidth * (@columns - 1)) + (.5 / @gridRowWidth * 100 * 1%) + (.5 / @gridRowWidth * 100 * 1%) !important;\n    }\n    \n    .offsetX (@gridColumns);\n    .offset-X (@gridColumns);\n  }\n\n  // fluid for all type of row - apply for small screen as mobile, portrait tablet\n  .fluid (@fluidGridColumnWidth, @fluidGridGutterWidth) {\n\n    .spanX (@index) when (@index > 0) {\n      (~\".span@{index}\") { .span(@index); }\n      .spanX(@index - 1);\n    }\n    .spanX (0) {}\n\n    .span (@columns) {\n      width: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1));\n      *width: (@fluidGridColumnWidth * @columns) + (@fluidGridGutterWidth * (@columns - 1)) - (.5 / @gridRowWidth * 100 * 1%);\n    }\n\n    .row, .row-fluid {\n      width: 100%;\n      margin-left: 0;\n      .clearfix();\n      [class*=\"span\"] {\n        .input-block-level();\n        float: left;\n        margin-left: @fluidGridGutterWidth;\n        *margin-left: @fluidGridGutterWidth - (.5 / @gridRowWidth * 100 * 1%);\n      }\n      [class*=\"span\"]:first-child:not(.pull-right) {\n        margin-left: 0;\n      }\n\n      [class*=\"span\"].pull-right:first-child + [class*=\"span\"]:not(.pull-right) {\n        margin-left: 0;\n      }\n      \n      // generate .spanX\n      .spanX (@gridColumns);\n    }\n\n\n    .spanxy_(@pcols, @cols) {\n      width: percentage(((@fluidGridColumnWidth * @cols) + (@fluidGridGutterWidth * (@cols - 1)))/((@fluidGridColumnWidth * @pcols) + (@fluidGridGutterWidth * (@pcols - 1))));\n      *width: percentage(((@fluidGridColumnWidth * @cols) + (@fluidGridGutterWidth * (@cols - 1)))/((@fluidGridColumnWidth * @pcols) + (@fluidGridGutterWidth * (@pcols - 1)))) - (.5 / @gridRowWidth * 100 * 1%);\n    }\n    .spanXY (@indexx) when(@indexx > 0) {\n      (~\".span@{indexx}\") { \n        .row {\n          // span for spany in spanx\n          [class*=\"span\"] {\n            margin-left: percentage(@fluidGridGutterWidth / ((@fluidGridColumnWidth * @indexx) + (@fluidGridGutterWidth * (@indexx - 1))));\n            *margin-left: percentage(@fluidGridGutterWidth / ((@fluidGridColumnWidth * @indexx) + (@fluidGridGutterWidth * (@indexx - 1)))) - (.5 / @gridRowWidth * 100 * 1%);\n          }\n          [class*=\"span\"]:first-child {\n            margin-left: 0;\n          }\n\n          .spanY (@indexy) when (@indexy > 0) {\n            (~\".span@{indexy}\") {\n              .spanxy_(@indexx, @indexy);\n            }\n            .spanY (@indexy - 1); \n          }\n\n          .spanY (0) {}\n\n          .spanY (@indexx);\n        }\n      }\n      .spanXY(@indexx - 1);\n    }\n    .spanXY (0) {}\n\n    // generate .spanXY\n    .spanXY (@gridColumns);\n  }\n}\n\";}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"175573aaa10c5d1d88778b85c06634d0\";s:16:\"com_mailto.links\";a:1:{s:40:\"615a64c1919ab3a011ed3f23e0da833bfd8442d0\";O:8:\"stdClass\":2:{s:4:\"link\";s:81:\"http://localhost/projects/hoathuyanh/index.php/hoa-cuoi/hoa-ban-tiec/sub-hoa-cuoi\";s:6:\"expiry\";i:1380174567;}}}', '0', '', '');
INSERT INTO `jos_session` VALUES ('7078c3i7n5i89mdcemi0uklv03', '0', '1', '1380689113', '__default|a:8:{s:15:\"session.counter\";i:6;s:19:\"session.timer.start\";i:1380688973;s:18:\"session.timer.last\";i:1380689040;s:17:\"session.timer.now\";i:1380689112;s:22:\"session.client.browser\";s:101:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:16:\"com_mailto.links\";a:1:{s:40:\"45444183383af08d40396a29a6a4ae87877ad8be\";O:8:\"stdClass\":2:{s:4:\"link\";s:60:\"http://192.168.23.133/projects/hoathuyanh/index.php/new-menu\";s:6:\"expiry\";i:1380689113;}}}', '0', '', '');
INSERT INTO `jos_session` VALUES ('8ip49f3di6sve5vasj8nj24ga5', '0', '1', '1380706438', '__default|a:9:{s:15:\"session.counter\";i:201;s:19:\"session.timer.start\";i:1380680029;s:18:\"session.timer.last\";i:1380706426;s:17:\"session.timer.now\";i:1380706438;s:22:\"session.client.browser\";s:108:\"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"50839371ee4b6c8c72bf93d3ad826337\";s:16:\"com_mailto.links\";a:1:{s:40:\"3cf1743c0001228fc8b065b0f15c95345d213ae5\";O:8:\"stdClass\":2:{s:4:\"link\";s:55:\"http://localhost/projects/hoathuyanh/index.php/new-menu\";s:6:\"expiry\";i:1380703845;}}}', '0', '', '');
INSERT INTO `jos_session` VALUES ('dhu5r39au3a074elid5ef0ru20', '1', '1', '1380704918', '__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1380704918;s:18:\"session.timer.last\";i:1380704918;s:17:\"session.timer.now\";i:1380704918;s:22:\"session.client.browser\";s:101:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";N;s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"2b26298b8b0f9a1e73066fb670559984\";}', '0', '', '');
INSERT INTO `jos_session` VALUES ('l8819fbr9su87kqae091794q35', '1', '0', '1380704394', '__default|a:8:{s:15:\"session.counter\";i:114;s:19:\"session.timer.start\";i:1380685289;s:18:\"session.timer.last\";i:1380703862;s:17:\"session.timer.now\";i:1380704393;s:22:\"session.client.browser\";s:108:\"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":10:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":2:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";}s:9:\"com_menus\";O:8:\"stdClass\":2:{s:5:\"items\";O:8:\"stdClass\":6:{s:6:\"search\";s:0:\"\";s:9:\"published\";s:0:\"\";s:6:\"filter\";O:8:\"stdClass\":4:{s:6:\"access\";i:0;s:5:\"level\";i:0;s:8:\"menutype\";s:8:\"top-menu\";s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";i:0;s:8:\"ordercol\";s:5:\"a.lft\";s:9:\"orderdirn\";s:3:\"asc\";}s:4:\"edit\";O:8:\"stdClass\":1:{s:4:\"item\";O:8:\"stdClass\":4:{s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;s:2:\"id\";a:1:{i:0;i:104;}}}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}s:13:\"com_templates\";O:8:\"stdClass\":2:{s:6:\"styles\";O:8:\"stdClass\":1:{s:10:\"limitstart\";i:0;}s:4:\"edit\";O:8:\"stdClass\":1:{s:5:\"style\";O:8:\"stdClass\":2:{s:2:\"id\";a:1:{i:0;i:7;}s:4:\"data\";N;}}}s:7:\"oparams\";a:17:{i:0;a:2:{s:4:\"name\";s:7:\"devmode\";s:5:\"value\";s:1:\"0\";}i:1;a:2:{s:4:\"name\";s:10:\"themermode\";s:5:\"value\";s:1:\"1\";}i:2;a:2:{s:4:\"name\";s:10:\"responsive\";s:5:\"value\";s:1:\"1\";}i:3;a:2:{s:4:\"name\";s:9:\"build_rtl\";s:5:\"value\";s:1:\"0\";}i:4;a:2:{s:4:\"name\";s:6:\"minify\";s:5:\"value\";s:1:\"0\";}i:5;a:2:{s:4:\"name\";s:9:\"t3-assets\";s:5:\"value\";s:9:\"t3-assets\";}i:6;a:2:{s:4:\"name\";s:10:\"t3-rmvlogo\";s:5:\"value\";s:1:\"1\";}i:7;a:2:{s:4:\"name\";s:18:\"navigation_trigger\";s:5:\"value\";s:5:\"hover\";}i:8;a:2:{s:4:\"name\";s:29:\"navigation_collapse_offcanvas\";s:5:\"value\";s:1:\"1\";}i:9;a:2:{s:4:\"name\";s:27:\"navigation_collapse_showsub\";s:5:\"value\";s:1:\"1\";}i:10;a:2:{s:4:\"name\";s:20:\"navigation_animation\";s:5:\"value\";s:6:\"fading\";}i:11;a:2:{s:4:\"name\";s:29:\"navigation_animation_duration\";s:5:\"value\";s:3:\"400\";}i:12;a:2:{s:4:\"name\";s:9:\"mm_config\";s:5:\"value\";N;}i:13;a:2:{s:4:\"name\";s:17:\"snippet_open_head\";s:5:\"value\";N;}i:14;a:2:{s:4:\"name\";s:18:\"snippet_close_head\";s:5:\"value\";N;}i:15;a:2:{s:4:\"name\";s:17:\"snippet_open_body\";s:5:\"value\";N;}i:16;a:2:{s:4:\"name\";s:18:\"snippet_close_body\";s:5:\"value\";N;}}s:4:\"item\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"top-menu\";}}s:11:\"com_modules\";O:8:\"stdClass\":1:{s:7:\"modules\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:18:\"client_id_previous\";i:0;}}}s:14:\"com_je_product\";O:8:\"stdClass\":2:{s:8:\"products\";O:8:\"stdClass\":1:{s:8:\"ordercol\";s:2:\"id\";}s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"product\";O:8:\"stdClass\":2:{s:2:\"id\";a:1:{i:0;i:56;}s:4:\"data\";N;}}}s:14:\"com_categories\";O:8:\"stdClass\":1:{s:10:\"categories\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:9:\"extension\";s:14:\"com_je_product\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"886\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:23:\"nguyenxuanmui@gmail.com\";s:8:\"password\";s:65:\"2917b1baea460453e00c8bca38dbd02f:A0Lz5oXuW1c6Xteh1RDrWIZTLHP0PCKX\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-09-26 02:07:59\";s:13:\"lastvisitDate\";s:19:\"2013-09-26 08:13:43\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:0:\"\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"2baca14fd735be48114664ff98843b27\";}', '886', 'admin', '');
INSERT INTO `jos_session` VALUES ('m83cffejng9bcajrf12re8c145', '0', '1', '1380698643', '__default|a:8:{s:15:\"session.counter\";i:6;s:19:\"session.timer.start\";i:1380698560;s:18:\"session.timer.last\";i:1380698639;s:17:\"session.timer.now\";i:1380698643;s:22:\"session.client.browser\";s:65:\"Mozilla/5.0 (Windows NT 5.1; rv:23.0) Gecko/20100101 Firefox/23.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:16:\"com_mailto.links\";a:1:{s:40:\"45444183383af08d40396a29a6a4ae87877ad8be\";O:8:\"stdClass\":2:{s:4:\"link\";s:60:\"http://192.168.23.133/projects/hoathuyanh/index.php/new-menu\";s:6:\"expiry\";i:1380698639;}}}', '0', '', '');
INSERT INTO `jos_session` VALUES ('p8pt5vch2u94qtojh16ls0ctv0', '1', '1', '1380183224', '__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1380183223;s:18:\"session.timer.last\";i:1380183223;s:17:\"session.timer.now\";i:1380183223;s:22:\"session.client.browser\";s:101:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";N;s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"a16e657a8c0977644858b81b67b78bfd\";}', '0', '', '');
INSERT INTO `jos_session` VALUES ('pee9nle77tb95er6ns1jc6a4g2', '0', '1', '1380181818', '__default|a:9:{s:15:\"session.counter\";i:6;s:19:\"session.timer.start\";i:1380171010;s:18:\"session.timer.last\";i:1380178218;s:17:\"session.timer.now\";i:1380181818;s:22:\"session.client.browser\";s:101:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"3dfcdd56cf8c1d132853337c8655fc92\";s:16:\"com_mailto.links\";a:1:{s:40:\"bcc828814aaef5866fa062996fe333b5095bbf96\";O:8:\"stdClass\":2:{s:4:\"link\";s:86:\"http://192.168.23.133/projects/hoathuyanh/index.php/hoa-cuoi/hoa-ban-tiec/sub-hoa-cuoi\";s:6:\"expiry\";i:1380181818;}}}', '0', '', '');
INSERT INTO `jos_session` VALUES ('rh1s8uq21oti7jusipq6no7nv3', '0', '1', '1380698858', '__default|a:8:{s:15:\"session.counter\";i:23;s:19:\"session.timer.start\";i:1380689250;s:18:\"session.timer.last\";i:1380698853;s:17:\"session.timer.now\";i:1380698857;s:22:\"session.client.browser\";s:101:\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:16:\"com_mailto.links\";a:1:{s:40:\"45444183383af08d40396a29a6a4ae87877ad8be\";O:8:\"stdClass\":2:{s:4:\"link\";s:60:\"http://192.168.23.133/projects/hoathuyanh/index.php/new-menu\";s:6:\"expiry\";i:1380698749;}}}', '0', '', '');

-- ----------------------------
-- Table structure for jos_template_styles
-- ----------------------------
DROP TABLE IF EXISTS `jos_template_styles`;
CREATE TABLE `jos_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_template_styles
-- ----------------------------
INSERT INTO `jos_template_styles` VALUES ('2', 'bluestork', '1', '1', 'Bluestork - Default', '{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}');
INSERT INTO `jos_template_styles` VALUES ('3', 'atomic', '0', '0', 'Atomic - Default', '{}');
INSERT INTO `jos_template_styles` VALUES ('4', 'beez_20', '0', '0', 'Beez2 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `jos_template_styles` VALUES ('5', 'hathor', '1', '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `jos_template_styles` VALUES ('6', 'beez5', '0', '0', 'Beez5 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}');
INSERT INTO `jos_template_styles` VALUES ('7', 't3_blank', '0', '1', 't3_blank - Default', '{\"t3_template\":\"1\",\"devmode\":\"0\",\"themermode\":\"1\",\"responsive\":\"1\",\"build_rtl\":\"0\",\"minify\":\"0\",\"t3-assets\":\"t3-assets\",\"t3-rmvlogo\":\"1\",\"theme\":\"\",\"logotype\":\"image\",\"sitename\":\"\",\"slogan\":\"\",\"logoimage\":\"\",\"mainlayout\":\"default-joomla-2.5\",\"navigation_trigger\":\"hover\",\"navigation_collapse_offcanvas\":\"1\",\"navigation_collapse_showsub\":\"1\",\"navigation_type\":\"megamenu\",\"navigation_animation\":\"fading\",\"navigation_animation_duration\":\"400\",\"mm_type\":\"top-menu\",\"mm_config\":\"\",\"snippet_open_head\":\"\",\"snippet_close_head\":\"\",\"snippet_open_body\":\"\",\"snippet_close_body\":\"\"}');

-- ----------------------------
-- Table structure for jos_updates
-- ----------------------------
DROP TABLE IF EXISTS `jos_updates`;
CREATE TABLE `jos_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

-- ----------------------------
-- Records of jos_updates
-- ----------------------------
INSERT INTO `jos_updates` VALUES ('1', '3', '0', '0', 'Armenian', '', 'pkg_hy-AM', 'package', '', '0', '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', '');
INSERT INTO `jos_updates` VALUES ('2', '3', '0', '0', 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', '');
INSERT INTO `jos_updates` VALUES ('3', '3', '0', '0', 'Danish', '', 'pkg_da-DK', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', '');
INSERT INTO `jos_updates` VALUES ('4', '3', '0', '0', 'Khmer', '', 'pkg_km-KH', 'package', '', '0', '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', '');
INSERT INTO `jos_updates` VALUES ('5', '3', '0', '0', 'Swedish', '', 'pkg_sv-SE', 'package', '', '0', '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', '');
INSERT INTO `jos_updates` VALUES ('6', '3', '0', '0', 'Hungarian', '', 'pkg_hu-HU', 'package', '', '0', '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', '');
INSERT INTO `jos_updates` VALUES ('7', '3', '0', '0', 'Bulgarian', '', 'pkg_bg-BG', 'package', '', '0', '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', '');
INSERT INTO `jos_updates` VALUES ('8', '3', '0', '0', 'French', '', 'pkg_fr-FR', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', '');
INSERT INTO `jos_updates` VALUES ('9', '3', '0', '0', 'Italian', '', 'pkg_it-IT', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', '');
INSERT INTO `jos_updates` VALUES ('10', '3', '0', '0', 'Spanish', '', 'pkg_es-ES', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', '');
INSERT INTO `jos_updates` VALUES ('11', '3', '0', '0', 'Dutch', '', 'pkg_nl-NL', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', '');
INSERT INTO `jos_updates` VALUES ('12', '3', '0', '0', 'Turkish', '', 'pkg_tr-TR', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', '');
INSERT INTO `jos_updates` VALUES ('13', '3', '0', '0', 'Ukrainian', '', 'pkg_uk-UA', 'package', '', '0', '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', '');
INSERT INTO `jos_updates` VALUES ('14', '3', '0', '0', 'Slovak', '', 'pkg_sk-SK', 'package', '', '0', '2.5.14.2', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', '');
INSERT INTO `jos_updates` VALUES ('15', '3', '0', '0', 'Belarusian', '', 'pkg_be-BY', 'package', '', '0', '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', '');
INSERT INTO `jos_updates` VALUES ('16', '3', '0', '0', 'Latvian', '', 'pkg_lv-LV', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', '');
INSERT INTO `jos_updates` VALUES ('17', '3', '0', '0', 'Estonian', '', 'pkg_et-EE', 'package', '', '0', '2.5.7.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', '');
INSERT INTO `jos_updates` VALUES ('18', '3', '0', '0', 'Romanian', '', 'pkg_ro-RO', 'package', '', '0', '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', '');
INSERT INTO `jos_updates` VALUES ('19', '3', '0', '0', 'Flemish', '', 'pkg_nl-BE', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', '');
INSERT INTO `jos_updates` VALUES ('20', '3', '0', '0', 'Macedonian', '', 'pkg_mk-MK', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', '');
INSERT INTO `jos_updates` VALUES ('21', '3', '0', '0', 'Japanese', '', 'pkg_ja-JP', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', '');
INSERT INTO `jos_updates` VALUES ('22', '3', '0', '0', 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', '');
INSERT INTO `jos_updates` VALUES ('23', '3', '0', '0', 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', '');
INSERT INTO `jos_updates` VALUES ('24', '3', '0', '0', 'German', '', 'pkg_de-DE', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', '');
INSERT INTO `jos_updates` VALUES ('25', '3', '0', '0', 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', '0', '2.5.11.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', '');
INSERT INTO `jos_updates` VALUES ('26', '3', '0', '0', 'English AU', '', 'pkg_en-AU', 'package', '', '0', '2.5.10.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', '');
INSERT INTO `jos_updates` VALUES ('27', '3', '0', '0', 'English US', '', 'pkg_en-US', 'package', '', '0', '2.5.10.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', '');
INSERT INTO `jos_updates` VALUES ('28', '3', '0', '0', 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', '');
INSERT INTO `jos_updates` VALUES ('29', '3', '0', '0', 'Lithuanian', '', 'pkg_lt-LT', 'package', '', '0', '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', '');
INSERT INTO `jos_updates` VALUES ('30', '3', '0', '0', 'Albanian', '', 'pkg_sq-AL', 'package', '', '0', '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', '');
INSERT INTO `jos_updates` VALUES ('31', '3', '0', '0', 'Czech', '', 'pkg_cs-CZ', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', '');
INSERT INTO `jos_updates` VALUES ('32', '3', '0', '0', 'Persian', '', 'pkg_fa-IR', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', '');
INSERT INTO `jos_updates` VALUES ('33', '3', '0', '0', 'Galician', '', 'pkg_gl-ES', 'package', '', '0', '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', '');
INSERT INTO `jos_updates` VALUES ('34', '3', '0', '0', 'Polish', '', 'pkg_pl-PL', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', '');
INSERT INTO `jos_updates` VALUES ('35', '3', '0', '0', 'Syriac', '', 'pkg_sy-IQ', 'package', '', '0', '2.5.10.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', '');
INSERT INTO `jos_updates` VALUES ('36', '3', '0', '0', 'Portuguese', '', 'pkg_pt-PT', 'package', '', '0', '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', '');
INSERT INTO `jos_updates` VALUES ('37', '3', '0', '0', 'Russian', '', 'pkg_ru-RU', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', '');
INSERT INTO `jos_updates` VALUES ('38', '3', '0', '0', 'Hebrew', '', 'pkg_he-IL', 'package', '', '0', '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', '');
INSERT INTO `jos_updates` VALUES ('39', '3', '0', '0', 'Catalan', '', 'pkg_ca-ES', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', '');
INSERT INTO `jos_updates` VALUES ('40', '3', '0', '0', 'Laotian', '', 'pkg_lo-LA', 'package', '', '0', '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', '');
INSERT INTO `jos_updates` VALUES ('41', '3', '0', '0', 'Afrikaans', '', 'pkg_af-ZA', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', '');
INSERT INTO `jos_updates` VALUES ('42', '3', '0', '0', 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', '');
INSERT INTO `jos_updates` VALUES ('43', '3', '0', '0', 'Greek', '', 'pkg_el-GR', 'package', '', '0', '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', '');
INSERT INTO `jos_updates` VALUES ('44', '3', '0', '0', 'Esperanto', '', 'pkg_eo-XX', 'package', '', '0', '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', '');
INSERT INTO `jos_updates` VALUES ('45', '3', '0', '0', 'Finnish', '', 'pkg_fi-FI', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', '');
INSERT INTO `jos_updates` VALUES ('46', '3', '0', '0', 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', '0', '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', '');
INSERT INTO `jos_updates` VALUES ('47', '3', '0', '0', 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', '');
INSERT INTO `jos_updates` VALUES ('48', '3', '0', '0', 'Vietnamese', '', 'pkg_vi-VN', 'package', '', '0', '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', '');
INSERT INTO `jos_updates` VALUES ('49', '3', '0', '0', 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', '0', '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', '');
INSERT INTO `jos_updates` VALUES ('50', '3', '0', '0', 'Bosnian', '', 'pkg_bs-BA', 'package', '', '0', '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', '');
INSERT INTO `jos_updates` VALUES ('51', '3', '0', '0', 'Croatian', '', 'pkg_hr-HR', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', '');
INSERT INTO `jos_updates` VALUES ('52', '3', '0', '0', 'Azeri', '', 'pkg_az-AZ', 'package', '', '0', '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', '');
INSERT INTO `jos_updates` VALUES ('53', '3', '0', '0', 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', '0', '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', '');
INSERT INTO `jos_updates` VALUES ('54', '3', '0', '0', 'Tamil India', '', 'pkg_ta-IN', 'package', '', '0', '2.5.14.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', '');
INSERT INTO `jos_updates` VALUES ('55', '3', '0', '0', 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', '0', '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', '');
INSERT INTO `jos_updates` VALUES ('56', '3', '0', '0', 'Thai', '', 'pkg_th-TH', 'package', '', '0', '2.5.13.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', '');
INSERT INTO `jos_updates` VALUES ('57', '3', '0', '0', 'Basque', '', 'pkg_eu-ES', 'package', '', '0', '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', '');
INSERT INTO `jos_updates` VALUES ('58', '3', '0', '0', 'Uyghur', '', 'pkg_ug-CN', 'package', '', '0', '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', '');
INSERT INTO `jos_updates` VALUES ('59', '3', '0', '0', 'Korean', '', 'pkg_ko-KR', 'package', '', '0', '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', '');
INSERT INTO `jos_updates` VALUES ('60', '3', '0', '0', 'Hindi', '', 'pkg_hi-IN', 'package', '', '0', '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', '');
INSERT INTO `jos_updates` VALUES ('61', '3', '0', '0', 'Welsh', '', 'pkg_cy-GB', 'package', '', '0', '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', '');
INSERT INTO `jos_updates` VALUES ('62', '3', '0', '0', 'Swahili', '', 'pkg_sw-KE', 'package', '', '0', '2.5.14.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');
INSERT INTO `jos_updates` VALUES ('63', '4', '0', '0', '', '', '', 'component', '', '0', '', '', 'http://update.joomlart.com/service/tracking/j16/.xml', '');
INSERT INTO `jos_updates` VALUES ('64', '4', '0', '0', 'JA Amazon S3 for joomla 16', '', 'com_com_jaamazons3', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml', '');
INSERT INTO `jos_updates` VALUES ('65', '4', '0', '0', 'JA Extenstion Manager Component j16', '', 'com_com_jaextmanager', 'file', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', '');
INSERT INTO `jos_updates` VALUES ('66', '4', '0', '0', 'JA Amazon S3 for joomla 2.5 & 3.1', '', 'com_jaamazons3', 'component', '', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', '');
INSERT INTO `jos_updates` VALUES ('67', '4', '0', '0', 'JA Comment Package for Joomla 2.5 & 3.0', '', 'com_jacomment', 'component', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/com_jacomment.xml', '');
INSERT INTO `jos_updates` VALUES ('68', '4', '0', '0', 'JA Extenstion Manager Component for J25 & J31', '', 'com_jaextmanager', 'component', '', '0', '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/com_jaextmanager.xml', '');
INSERT INTO `jos_updates` VALUES ('69', '4', '0', '0', 'JA Google Storage Package for J2.5 & J3.0', '', 'com_jagooglestorage', 'component', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml', '');
INSERT INTO `jos_updates` VALUES ('70', '4', '0', '0', 'JA Job Board Package For J25', '', 'com_jajobboard', 'component', '', '0', '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml', '');
INSERT INTO `jos_updates` VALUES ('71', '4', '0', '0', 'JA K2 Filter Package for J25 & J31', '', 'com_jak2filter', 'component', '', '0', '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', '');
INSERT INTO `jos_updates` VALUES ('72', '4', '0', '0', 'JA K2 Filter Package for J25 & J30', '', 'com_jak2fiter', 'component', '', '0', '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml', '');
INSERT INTO `jos_updates` VALUES ('73', '4', '0', '0', 'JA Showcase component for Joomla 1.7', '', 'com_jashowcase', 'component', '', '0', '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml', '');
INSERT INTO `jos_updates` VALUES ('74', '4', '0', '0', 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', '0', '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', '');
INSERT INTO `jos_updates` VALUES ('75', '4', '0', '0', 'Theme Fixel for Easyblog J25 & J30', '', 'easyblog_theme_fixel', 'custom', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_fixel.xml', '');
INSERT INTO `jos_updates` VALUES ('76', '4', '0', '0', 'JA Muzic Theme for EasyBlog', '', 'easyblog_theme_muzic', 'custom', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml', '');
INSERT INTO `jos_updates` VALUES ('77', '4', '0', '0', 'JA Anion template for Joomla 2.5', '', 'ja_anion', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_anion.xml', '');
INSERT INTO `jos_updates` VALUES ('78', '4', '0', '0', 'JA Argo Template', '', 'ja_argo', 'template', '', '0', '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_argo.xml', '');
INSERT INTO `jos_updates` VALUES ('79', '4', '0', '0', 'JA Beranis Template', '', 'ja_beranis', 'template', '', '0', '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_beranis.xml', '');
INSERT INTO `jos_updates` VALUES ('80', '4', '0', '0', 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', '');
INSERT INTO `jos_updates` VALUES ('81', '4', '0', '0', 'JA Blazes Template for J25 & J31', '', 'ja_blazes', 'template', '', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_blazes.xml', '');
INSERT INTO `jos_updates` VALUES ('82', '4', '0', '0', 'JA Brisk Template', '', 'ja_brisk', 'template', '', '0', '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_brisk.xml', '');
INSERT INTO `jos_updates` VALUES ('83', '4', '0', '0', 'JA Business Template for Joomla 2.5', '', 'ja_business', 'template', '', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_business.xml', '');
INSERT INTO `jos_updates` VALUES ('84', '4', '0', '0', 'JA Cloris Template for Joomla 2.5.x', '', 'ja_cloris', 'template', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_cloris.xml', '');
INSERT INTO `jos_updates` VALUES ('85', '4', '0', '0', 'JA Community PLus Template for Joomla 2.5', '', 'ja_community_plus', 'template', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml', '');
INSERT INTO `jos_updates` VALUES ('86', '4', '0', '0', 'JA Droid Template for Joomla 2.5', '', 'ja_droid', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_droid.xml', '');
INSERT INTO `jos_updates` VALUES ('87', '4', '0', '0', 'JA Edenite Template for J25 & J30', '', 'ja_edenite', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_edenite.xml', '');
INSERT INTO `jos_updates` VALUES ('88', '4', '0', '0', 'JA Elastica Template for Joomla 2.5', '', 'ja_elastica', 'template', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_elastica.xml', '');
INSERT INTO `jos_updates` VALUES ('89', '4', '0', '0', 'JA Erio Template for Joomla 2.5 & 3.1', '', 'ja_erio', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_erio.xml', '');
INSERT INTO `jos_updates` VALUES ('90', '4', '0', '0', 'Ja Events Template for Joomla 2.5', '', 'ja_events', 'template', '', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_events.xml', '');
INSERT INTO `jos_updates` VALUES ('91', '4', '0', '0', 'JA Fubix Template for J25 & J30', '', 'ja_fubix', 'template', '', '0', '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_fubix.xml', '');
INSERT INTO `jos_updates` VALUES ('92', '4', '0', '0', 'JA Graphite Template for Joomla 2.5', '', 'ja_graphite', 'template', '', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_graphite.xml', '');
INSERT INTO `jos_updates` VALUES ('93', '4', '0', '0', 'JA Hawkstore Template', '', 'ja_hawkstore', 'template', '', '0', '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml', '');
INSERT INTO `jos_updates` VALUES ('94', '4', '0', '0', 'JA Ironis Template for Joomla 2.5 & 3.1', '', 'ja_ironis', 'template', '', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_ironis.xml', '');
INSERT INTO `jos_updates` VALUES ('95', '4', '0', '0', 'JA Kranos Template for J25 & J30', '', 'ja_kranos', 'template', '', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_kranos.xml', '');
INSERT INTO `jos_updates` VALUES ('96', '4', '0', '0', 'JA Lens Template for Joomla 2.5 & 3.1', '', 'ja_lens', 'template', '', '0', '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_lens.xml', '');
INSERT INTO `jos_updates` VALUES ('97', '4', '0', '0', 'Ja Lime Template for Joomla 2.5 & J31', '', 'ja_lime', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_lime.xml', '');
INSERT INTO `jos_updates` VALUES ('98', '4', '0', '0', 'JA Mendozite Template for J25 & J30', '', 'ja_mendozite', 'template', '', '0', '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml', '');
INSERT INTO `jos_updates` VALUES ('99', '4', '0', '0', 'JA Mero Template', '', 'ja_mero', 'template', '', '0', '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_mero.xml', '');
INSERT INTO `jos_updates` VALUES ('100', '4', '0', '0', 'JA Mers Template for J25 & J30', '', 'ja_mers', 'template', '', '0', '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_mers.xml', '');
INSERT INTO `jos_updates` VALUES ('101', '4', '0', '0', 'JA Methys Template for Joomla 2.5', '', 'ja_methys', 'template', '', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_methys.xml', '');
INSERT INTO `jos_updates` VALUES ('102', '4', '0', '0', 'Ja Minisite Template for Joomla 2.5', '', 'ja_minisite', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_minisite.xml', '');
INSERT INTO `jos_updates` VALUES ('103', '4', '0', '0', 'JA Mitius Template', '', 'ja_mitius', 'template', '', '0', '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_mitius.xml', '');
INSERT INTO `jos_updates` VALUES ('104', '4', '0', '0', 'JA Mixmaz Template', '', 'ja_mixmaz', 'template', '', '0', '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml', '');
INSERT INTO `jos_updates` VALUES ('105', '4', '0', '0', 'JA Nex Template for J25 & J30', '', 'ja_nex', 'template', '', '0', '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex.xml', '');
INSERT INTO `jos_updates` VALUES ('106', '4', '0', '0', 'JA Nex T3 Template', '', 'ja_nex_t3', 'template', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml', '');
INSERT INTO `jos_updates` VALUES ('107', '4', '0', '0', 'JA Norite Template for J2.5 & J31', '', 'ja_norite', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_norite.xml', '');
INSERT INTO `jos_updates` VALUES ('108', '4', '0', '0', 'JA Onepage Template', '', 'ja_onepage', 'template', '', '0', '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_onepage.xml', '');
INSERT INTO `jos_updates` VALUES ('109', '4', '0', '0', 'JA ores template for Joomla 2.5 & 3.1', '', 'ja_ores', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_ores.xml', '');
INSERT INTO `jos_updates` VALUES ('110', '4', '0', '0', 'JA Orisite Template  for J25 & J30', '', 'ja_orisite', 'template', '', '0', '1.1.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_orisite.xml', '');
INSERT INTO `jos_updates` VALUES ('111', '4', '0', '0', 'JA Portfolio Real Estate template for Joomla 1.6.x', '', 'ja_portfolio', 'file', '', '0', '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml', '');
INSERT INTO `jos_updates` VALUES ('112', '4', '0', '0', 'JA Portfolio Template for Joomla 2.5', '', 'ja_portfolio_real_estate', 'template', '', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', '');
INSERT INTO `jos_updates` VALUES ('113', '4', '0', '0', 'JA Portfolio Template for Joomla 2.5', '', 'ja_portfolio_real_estate', 'template', '', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', '');
INSERT INTO `jos_updates` VALUES ('114', '4', '0', '0', 'JA Puresite Template for J25 & J31', '', 'ja_puresite', 'template', '', '0', '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', '');
INSERT INTO `jos_updates` VALUES ('115', '4', '0', '0', 'JA Purity II template for Joomla 2.5', '', 'ja_purity_ii', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml', '');
INSERT INTO `jos_updates` VALUES ('116', '4', '0', '0', 'JA Pyro Template for Joomla 2.5', '', 'ja_pyro', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_pyro.xml', '');
INSERT INTO `jos_updates` VALUES ('117', '4', '0', '0', 'JA Rasite Template for J2.5 & J31', '', 'ja_rasite', 'template', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_rasite.xml', '');
INSERT INTO `jos_updates` VALUES ('118', '4', '0', '0', 'JA Rave Template for Joomla 2.5', '', 'ja_rave', 'template', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_rave.xml', '');
INSERT INTO `jos_updates` VALUES ('119', '4', '0', '0', 'JA Smashboard Template', '', 'ja_smashboard', 'template', '', '0', '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml', '');
INSERT INTO `jos_updates` VALUES ('120', '4', '0', '0', 'JA Social Template for Joomla 2.5', '', 'ja_social', 'template', '', '0', '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_social.xml', '');
INSERT INTO `jos_updates` VALUES ('121', '4', '0', '0', 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', '0', '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', '');
INSERT INTO `jos_updates` VALUES ('122', '4', '0', '0', 'JA T3V2 Blank Template', '', 'ja_t3_blank', 'template', '', '0', '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml', '');
INSERT INTO `jos_updates` VALUES ('123', '4', '0', '0', 'JA T3 Blank template for joomla 1.6', '', 'ja_t3_blank_j16', 'template', '', '0', '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml', '');
INSERT INTO `jos_updates` VALUES ('124', '4', '0', '0', 'JA Blank Template for T3v3', '', 'ja_t3v3_blank', 'template', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml', '');
INSERT INTO `jos_updates` VALUES ('125', '4', '0', '0', 'JA Teline III  Template for Joomla 1.6', '', 'ja_teline_iii', 'file', '', '0', '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml', '');
INSERT INTO `jos_updates` VALUES ('126', '4', '0', '0', 'JA Teline IV Template for Joomla 2.5', '', 'ja_teline_iv', 'template', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', '');
INSERT INTO `jos_updates` VALUES ('127', '4', '0', '0', 'JA Tiris Template for J25 & J30', '', 'ja_tiris', 'template', '', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_tiris.xml', '');
INSERT INTO `jos_updates` VALUES ('128', '4', '0', '0', 'JA Travel Template for Joomla 2.5 & 3.0', '', 'ja_travel', 'template', '', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_travel.xml', '');
INSERT INTO `jos_updates` VALUES ('129', '4', '0', '0', 'JA University Template for J25 & J31', '', 'ja_university', 'template', '', '0', '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_university.xml', '');
INSERT INTO `jos_updates` VALUES ('130', '4', '0', '0', 'JA Vintas Template for J25 & J31', '', 'ja_vintas', 'template', '', '0', '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_vintas.xml', '');
INSERT INTO `jos_updates` VALUES ('131', '4', '0', '0', 'JA Wall Template for J25 & J30', '', 'ja_wall', 'template', '', '0', '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', '');
INSERT INTO `jos_updates` VALUES ('132', '4', '0', '0', 'JA ZiteTemplate', '', 'ja_zite', 'template', '', '0', '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', '');
INSERT INTO `jos_updates` VALUES ('133', '4', '0', '0', 'JA Bookmark plugin for Joomla 1.6.x', '', 'jabookmark', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jabookmark.xml', '');
INSERT INTO `jos_updates` VALUES ('134', '4', '0', '0', 'JA Comment plugin for Joomla 1.6.x', '', 'jacomment', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacomment.xml', '');
INSERT INTO `jos_updates` VALUES ('135', '4', '0', '0', 'JA Comment Off Plugin for Joomla 1.6', '', 'jacommentoff', 'file', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommentoff.xml', '');
INSERT INTO `jos_updates` VALUES ('136', '4', '0', '0', 'JA Comment On Plugin for Joomla 1.6', '', 'jacommenton', 'file', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommenton.xml', '');
INSERT INTO `jos_updates` VALUES ('137', '4', '0', '0', 'JA Content Extra Fields for Joomla 1.6', '', 'jacontentextrafields', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml', '');
INSERT INTO `jos_updates` VALUES ('138', '4', '0', '0', 'JA Disqus Debate Echo plugin for Joomla 1.6.x', '', 'jadisqus_debate_echo', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml', '');
INSERT INTO `jos_updates` VALUES ('139', '4', '0', '0', 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', '');
INSERT INTO `jos_updates` VALUES ('140', '4', '0', '0', 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', '');
INSERT INTO `jos_updates` VALUES ('141', '4', '0', '0', 'JA Google Translate plugin for Joomla 1.6.x', '', 'jagoogletranslate', 'plugin', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml', '');
INSERT INTO `jos_updates` VALUES ('142', '4', '0', '0', 'JA Highslide plugin for Joomla 1.6.x', '', 'jahighslide', 'plugin', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jahighslide.xml', '');
INSERT INTO `jos_updates` VALUES ('143', '4', '0', '0', 'JA K2 Search Plugin for Joomla 2.5', '', 'jak2_filter', 'plugin', '', '0', '1.0.0 Alph', '', 'http://update.joomlart.com/service/tracking/j16/jak2_filter.xml', '');
INSERT INTO `jos_updates` VALUES ('144', '4', '0', '0', 'JA K2 Extra Fields Plugin for Joomla 2.5', '', 'jak2_indexing', 'plugin', '', '0', '1.0.0 Alph', '', 'http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml', '');
INSERT INTO `jos_updates` VALUES ('145', '4', '0', '0', 'JA Load module Plugin for Joomla 2.5', '', 'jaloadmodule', 'plugin', 'jaloadmodule', '0', '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml', '');
INSERT INTO `jos_updates` VALUES ('146', '4', '0', '0', 'JA System Nrain plugin for Joomla 1.6.x', '', 'janrain', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/janrain.xml', '');
INSERT INTO `jos_updates` VALUES ('147', '4', '0', '0', 'JA Popup plugin for Joomla 1.6', '', 'japopup', 'file', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/japopup.xml', '');
INSERT INTO `jos_updates` VALUES ('148', '4', '0', '0', 'JA System Social plugin for Joomla 1.7', '', 'jasocial', 'file', '', '0', '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/jasocial.xml', '');
INSERT INTO `jos_updates` VALUES ('149', '4', '0', '0', 'JA T3 System plugin for Joomla 1.6', '', 'jat3', 'plugin', '', '0', '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/jat3.xml', '');
INSERT INTO `jos_updates` VALUES ('150', '4', '0', '0', 'JA Tabs Plugin for Joomla 2.5', '', 'jatabs', 'plugin', 'jatabs', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/jatabs.xml', '');
INSERT INTO `jos_updates` VALUES ('151', '4', '0', '0', 'JA Typo plugin For Joomla 1.6', '', 'jatypo', 'plugin', 'jatypo', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jatypo.xml', '');
INSERT INTO `jos_updates` VALUES ('152', '4', '0', '0', 'Jomsocial Theme 3.x for JA Social', '', 'jomsocial_theme_social', 'custom', '', '0', '3.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml', '');
INSERT INTO `jos_updates` VALUES ('153', '4', '0', '0', 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16', 'file', '', '0', '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml', '');
INSERT INTO `jos_updates` VALUES ('154', '4', '0', '0', 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16_26', 'custom', '', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml', '');
INSERT INTO `jos_updates` VALUES ('155', '4', '0', '0', 'JShopping Template for Ja Orisite', '', 'jshopping_theme_orisite', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml', '');
INSERT INTO `jos_updates` VALUES ('156', '4', '0', '0', 'JA Tiris Jshopping theme for J25 & J30', '', 'jshopping_theme_tiris', 'custom', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml', '');
INSERT INTO `jos_updates` VALUES ('157', '4', '0', '0', 'Theme for Jshopping j17', '', 'jshopping_theme_tiris_j17', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml', '');
INSERT INTO `jos_updates` VALUES ('158', '4', '0', '0', 'JA Kranos kunena theme for Joomla 2.5', '', 'kunena_theme_kranos_j17', 'custom', '', '0', '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml', '');
INSERT INTO `jos_updates` VALUES ('159', '4', '0', '0', 'Kunena Template for JA Mendozite', '', 'kunena_theme_mendozite', 'custom', '', '0', '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml', '');
INSERT INTO `jos_updates` VALUES ('160', '4', '0', '0', 'JA Mitius Kunena Theme for Joomla 25 ', '', 'kunena_theme_mitius', 'custom', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml', '');
INSERT INTO `jos_updates` VALUES ('161', '4', '0', '0', 'Kunena theme for JA Nex J2.5', '', 'kunena_theme_nex_j17', 'custom', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml', '');
INSERT INTO `jos_updates` VALUES ('162', '4', '0', '0', 'Kunena theme for JA Nex T3', '', 'kunena_theme_nex_t3', 'custom', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml', '');
INSERT INTO `jos_updates` VALUES ('163', '4', '0', '0', 'Kunena Template for Ja Orisite', '', 'kunena_theme_orisite', 'custom', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml', '');
INSERT INTO `jos_updates` VALUES ('164', '4', '0', '0', 'Kunena theme for Joomla 2.5', '', 'kunena_theme_social_j16', 'custom', '', '0', '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml', '');
INSERT INTO `jos_updates` VALUES ('165', '4', '0', '0', 'JA Tiris kunena theme for Joomla 2.5', '', 'kunena_theme_tiris_j16', 'custom', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml', '');
INSERT INTO `jos_updates` VALUES ('166', '4', '0', '0', 'JA Jobs Tags module for Joomla 2.5', '', 'mod_ja_jobs_tags', 'module', '', '0', '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml', '');
INSERT INTO `jos_updates` VALUES ('167', '4', '0', '0', 'JA Accordion Module for J25 & J31', '', 'mod_jaaccordion', 'module', '', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml', '');
INSERT INTO `jos_updates` VALUES ('168', '4', '0', '0', 'JA Animation module for Joomla 2.5 & 3.0', '', 'mod_jaanimation', 'module', '', '0', '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml', '');
INSERT INTO `jos_updates` VALUES ('169', '4', '0', '0', 'JA Bulletin Module for J25 & J31', '', 'mod_jabulletin', 'module', '', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml', '');
INSERT INTO `jos_updates` VALUES ('170', '4', '0', '0', 'JA Latest Comment Module for Joomla 2.5 & 3.0', '', 'mod_jaclatest_comments', 'module', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml', '');
INSERT INTO `jos_updates` VALUES ('171', '4', '0', '0', 'JA Content Popup Module for J25 & J31', '', 'mod_jacontentpopup', 'module', '', '0', '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml', '');
INSERT INTO `jos_updates` VALUES ('172', '4', '0', '0', 'JA Content Scroll module for Joomla 1.6', '', 'mod_jacontentscroll', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml', '');
INSERT INTO `jos_updates` VALUES ('173', '4', '0', '0', 'JA Contenslider module for Joomla 1.6', '', 'mod_jacontentslide', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml', '');
INSERT INTO `jos_updates` VALUES ('174', '4', '0', '0', 'JA Content Slider Module for J25 & J31', '', 'mod_jacontentslider', 'module', '', '0', '2.6.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml', '');
INSERT INTO `jos_updates` VALUES ('175', '4', '0', '0', 'JA CountDown Module for J25 & J31', '', 'mod_jacountdown', 'module', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml', '');
INSERT INTO `jos_updates` VALUES ('176', '4', '0', '0', 'JA Facebook Activity Module for J25 & J30', '', 'mod_jafacebookactivity', 'module', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml', '');
INSERT INTO `jos_updates` VALUES ('177', '4', '0', '0', 'JA Facebook Like Box Module for J25 & J30', '', 'mod_jafacebooklikebox', 'module', '', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml', '');
INSERT INTO `jos_updates` VALUES ('178', '4', '0', '0', 'JA Featured Employer module for Joomla 2.5', '', 'mod_jafeatured_employer', 'module', '', '0', '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml', '');
INSERT INTO `jos_updates` VALUES ('179', '4', '0', '0', 'JA Filter Jobs module for Joomla 2.5', '', 'mod_jafilter_jobs', 'module', '', '0', '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml', '');
INSERT INTO `jos_updates` VALUES ('180', '4', '0', '0', 'JA flowlist module for Joomla 2.5 & 3.0', '', 'mod_jaflowlist', 'module', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml', '');
INSERT INTO `jos_updates` VALUES ('181', '4', '0', '0', 'JAEC Halloween Module for Joomla 2.5 & 3.0', '', 'mod_jahalloween', 'module', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml', '');
INSERT INTO `jos_updates` VALUES ('182', '4', '0', '0', 'JA Image Hotspot Module for Joomla 2.5 & 3.1', '', 'mod_jaimagehotspot', 'module', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml', '');
INSERT INTO `jos_updates` VALUES ('183', '4', '0', '0', 'JA static module for Joomla 2.5', '', 'mod_jajb_statistic', 'module', '', '0', '1.0.0 stab', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml', '');
INSERT INTO `jos_updates` VALUES ('184', '4', '0', '0', 'JA Jobboard Menu module for Joomla 2.5', '', 'mod_jajobboard_menu', 'module', '', '0', '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml', '');
INSERT INTO `jos_updates` VALUES ('185', '4', '0', '0', 'JA Jobs Counter module for Joomla 2.5', '', 'mod_jajobs_counter', 'module', '', '0', '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml', '');
INSERT INTO `jos_updates` VALUES ('186', '4', '0', '0', 'JA Jobs Map module for Joomla 2.5', '', 'mod_jajobs_map', 'module', '', '0', '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml', '');
INSERT INTO `jos_updates` VALUES ('187', '4', '0', '0', 'JA K2 Fillter Module for Joomla 2.5', '', 'mod_jak2_filter', 'module', '', '0', '1.0.0 Alph', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml', '');
INSERT INTO `jos_updates` VALUES ('188', '4', '0', '0', 'JA K2 Filter Module for J25 & J31', '', 'mod_jak2filter', 'module', '', '0', '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', '');
INSERT INTO `jos_updates` VALUES ('189', '4', '0', '0', 'JA K2 Timeline', '', 'mod_jak2timeline', 'module', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml', '');
INSERT INTO `jos_updates` VALUES ('190', '4', '0', '0', 'JA Latest Resumes module for Joomla 2.5', '', 'mod_jalatest_resumes', 'module', '', '0', '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml', '');
INSERT INTO `jos_updates` VALUES ('191', '4', '0', '0', 'JA List Employer module for Joomla 2.5', '', 'mod_jalist_employers', 'module', '', '0', '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml', '');
INSERT INTO `jos_updates` VALUES ('192', '4', '0', '0', 'JA List Jobs module for Joomla 2.5', '', 'mod_jalist_jobs', 'module', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml', '');
INSERT INTO `jos_updates` VALUES ('193', '4', '0', '0', 'JA List Resumes module for Joomla 2.5', '', 'mod_jalist_resumes', 'module', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml', '');
INSERT INTO `jos_updates` VALUES ('194', '4', '0', '0', 'JA Login module for J25 & J31', '', 'mod_jalogin', 'module', '', '0', '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml', '');
INSERT INTO `jos_updates` VALUES ('195', '4', '0', '0', 'JA Masshead Module for J25 & J31', '', 'mod_jamasshead', 'module', '', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml', '');
INSERT INTO `jos_updates` VALUES ('196', '4', '0', '0', 'JA News Featured Module for J25 & J31', '', 'mod_janews_featured', 'module', '', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml', '');
INSERT INTO `jos_updates` VALUES ('197', '4', '0', '0', 'JA Newsflash module for Joomla 1.6.x', '', 'mod_janewsflash', 'module', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml', '');
INSERT INTO `jos_updates` VALUES ('198', '4', '0', '0', 'JA Newsmoo module for Joomla 1.6.x', '', 'mod_janewsmoo', 'module', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml', '');
INSERT INTO `jos_updates` VALUES ('199', '4', '0', '0', 'JA News Pro Module for J25 & J31', '', 'mod_janewspro', 'module', '', '0', '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', '');
INSERT INTO `jos_updates` VALUES ('200', '4', '0', '0', 'JA Newsticker Module for J25 & J31', '', 'mod_janewsticker', 'module', '', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml', '');
INSERT INTO `jos_updates` VALUES ('201', '4', '0', '0', 'JA Quick Contact Module for J25 & J31', '', 'mod_jaquickcontact', 'module', '', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml', '');
INSERT INTO `jos_updates` VALUES ('202', '4', '0', '0', 'JA Recent Viewed Jobs module for Joomla 2.5', '', 'mod_jarecent_viewed_jobs', 'module', '', '0', '1.0.0 stab', '', 'http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml', '');
INSERT INTO `jos_updates` VALUES ('203', '4', '0', '0', 'JA SideNews Module for J25 & J31', '', 'mod_jasidenews', 'module', '', '0', '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml', '');
INSERT INTO `jos_updates` VALUES ('204', '4', '0', '0', 'JA Slideshow Module for J25 & J31', '', 'mod_jaslideshow', 'module', '', '0', '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml', '');
INSERT INTO `jos_updates` VALUES ('205', '4', '0', '0', 'JA Slideshow Lite Module for J25 & J31', '', 'mod_jaslideshowlite', 'module', '', '0', '1.1.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml', '');
INSERT INTO `jos_updates` VALUES ('206', '4', '0', '0', 'JA Soccerway Module for J25 & J31', '', 'mod_jasoccerway', 'module', '', '0', '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml', '');
INSERT INTO `jos_updates` VALUES ('207', '4', '0', '0', 'JA Tab module for Joomla 2.5', '', 'mod_jatabs', 'module', '', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml', '');
INSERT INTO `jos_updates` VALUES ('208', '4', '0', '0', 'JA Toppanel Module for Joomla 2.5', '', 'mod_jatoppanel', 'module', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml', '');
INSERT INTO `jos_updates` VALUES ('209', '4', '0', '0', 'JA Twitter Module for J25 & J31', '', 'mod_jatwitter', 'module', '', '0', '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml', '');
INSERT INTO `jos_updates` VALUES ('210', '4', '0', '0', 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', '0', '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', '');
INSERT INTO `jos_updates` VALUES ('211', '4', '0', '0', 'JA VMProducts Module', '', 'mod_javmproducts', 'module', '', '0', '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml', '');
INSERT INTO `jos_updates` VALUES ('212', '4', '0', '0', 'JA Voice  Work Flow Module for J2.5 & J3.x', '', 'mod_javwork_flow', 'module', '', '0', '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', '');
INSERT INTO `jos_updates` VALUES ('213', '4', '0', '0', 'JA Amazon S3 Button Plugin for joomla 2.5 & 3.1', '', 'jaamazons3', 'plugin', 'button', '0', '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml', '');
INSERT INTO `jos_updates` VALUES ('214', '4', '0', '0', 'JA AVTracklist Button plugin for J2.5 & J3.1', '', 'jaavtracklist', 'plugin', 'button', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml', '');
INSERT INTO `jos_updates` VALUES ('215', '4', '0', '0', 'JA Comment Off Plugin for Joomla 2.5 & 3.0', '', 'jacommentoff', 'plugin', 'button', '0', '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml', '');
INSERT INTO `jos_updates` VALUES ('216', '4', '0', '0', 'JA Comment On Plugin for Joomla 2.5 & 3.0', '', 'jacommenton', 'plugin', 'button', '0', '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml', '');
INSERT INTO `jos_updates` VALUES ('217', '4', '0', '0', 'JA Amazon S3 System plugin for joomla 2.5 & 3.1', '', 'plg_jaamazons3', 'plugin', 'plg_jaamazons3', '0', '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml', '');
INSERT INTO `jos_updates` VALUES ('218', '4', '0', '0', 'JA AVTracklist plugin for J2.5 & J3.1', '', 'plg_jaavtracklist', 'plugin', 'plg_jaavtracklist', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml', '');
INSERT INTO `jos_updates` VALUES ('219', '4', '0', '0', 'JA Bookmark plugin for J2.5 & J3.1', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', '0', '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', '');
INSERT INTO `jos_updates` VALUES ('220', '4', '0', '0', 'JA Comment Plugin for Joomla 2.5 & 3.0', '', 'plg_jacomment', 'plugin', 'plg_jacomment', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml', '');
INSERT INTO `jos_updates` VALUES ('221', '4', '0', '0', 'JA Disqus Debate Echo plugin for J2.5 & J3.1', '', 'debate_echo', 'plugin', 'jadisqus', '0', '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml', '');
INSERT INTO `jos_updates` VALUES ('222', '4', '0', '0', 'JA Google Storage Plugin for j25 & j30', '', 'plg_jagooglestorage', 'plugin', 'plg_jagooglestorage', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml', '');
INSERT INTO `jos_updates` VALUES ('223', '4', '0', '0', 'JA Translate plugin for Joomla 1.6.x', '', 'plg_jagoogletranslate', 'file', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml', '');
INSERT INTO `jos_updates` VALUES ('224', '4', '0', '0', 'JA Thumbnail Plugin for J25 & J30', '', 'plg_jathumbnail', 'plugin', 'plg_jathumbnail', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml', '');
INSERT INTO `jos_updates` VALUES ('225', '4', '0', '0', 'JA Tooltips plugin for Joomla 1.6.x', '', 'plg_jatooltips', 'plugin', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml', '');
INSERT INTO `jos_updates` VALUES ('226', '4', '0', '0', 'JA Typo Button Plugin for J25 & J31', '', 'plg_jatypobutton', 'plugin', 'plg_jatypobutton', '0', '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml', '');
INSERT INTO `jos_updates` VALUES ('227', '4', '0', '0', 'JA K2 Filter Plg for J25 & J31', '', 'jak2filter', 'plugin', 'k2', '0', '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', '');
INSERT INTO `jos_updates` VALUES ('228', '4', '0', '0', 'JA K2 Timeline Plugin', '', 'jak2timeline', 'plugin', 'k2', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml', '');
INSERT INTO `jos_updates` VALUES ('229', '4', '0', '0', 'Multi Capcha Engine Plugin for J25 & J30', '', 'captcha_engine', 'plugin', 'multiple', '0', '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml', '');
INSERT INTO `jos_updates` VALUES ('230', '4', '0', '0', 'JA JobBoard Payment Plugin Authorize for Joomla 2.5', '', 'plg_payment_jajb_authorize_25', 'custom', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml', '');
INSERT INTO `jos_updates` VALUES ('231', '4', '0', '0', 'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5', '', 'plg_payment_jajb_moneybooker_25', 'custom', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml', '');
INSERT INTO `jos_updates` VALUES ('232', '4', '0', '0', 'JA JobBoard Payment Plugin Paypal for Joomla 2.5', '', 'plg_payment_jajb_paypal_25', 'custom', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml', '');
INSERT INTO `jos_updates` VALUES ('233', '4', '0', '0', 'JA JobBoard Payment Plugin BankWire for Joomla 2.5', '', 'plg_payment_jajb_wirebank_25', 'custom', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml', '');
INSERT INTO `jos_updates` VALUES ('234', '4', '0', '0', 'JA Search Comment Plugin for Joomla J2.5 & 3.0', '', 'jacomment', 'plugin', 'search', '0', '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml', '');
INSERT INTO `jos_updates` VALUES ('235', '4', '0', '0', 'JA Search Jobs plugin for Joomla 2.5', '', 'jajob', 'plugin', 'search', '0', '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml', '');
INSERT INTO `jos_updates` VALUES ('236', '4', '0', '0', 'JA System Comment Plugin for Joomla 2.5 & 3.0', '', 'jacomment', 'plugin', 'system', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml', '');
INSERT INTO `jos_updates` VALUES ('237', '4', '0', '0', 'JA Content Extra Fields for Joomla 2.5', '', 'jacontentextrafields', 'plugin', 'system', '0', '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml', '');
INSERT INTO `jos_updates` VALUES ('238', '4', '0', '0', 'JA System Google Map plugin for J2.5 & J3.1', '', 'jagooglemap', 'plugin', 'system', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml', '');
INSERT INTO `jos_updates` VALUES ('239', '4', '0', '0', 'JAEC PLG System Jobboad Jomsocial Synchonization', '', 'jajb_jomsocial', 'plugin', 'system', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml', '');
INSERT INTO `jos_updates` VALUES ('240', '4', '0', '0', 'JA System Lazyload Plugin for J25 & J31', '', 'jalazyload', 'plugin', 'system', '0', '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml', '');
INSERT INTO `jos_updates` VALUES ('241', '4', '0', '0', 'JA System Nrain Plugin for Joomla 2.5 & 3.0', '', 'janrain', 'plugin', 'system', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml', '');
INSERT INTO `jos_updates` VALUES ('242', '4', '0', '0', 'JA Popup Plugin for J25 & J31', '', 'japopup', 'plugin', 'system', '0', '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml', '');
INSERT INTO `jos_updates` VALUES ('243', '4', '0', '0', 'JA System Social Plugin for Joomla 2.5 & 3.0', '', 'jasocial', 'plugin', 'system', '0', '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml', '');
INSERT INTO `jos_updates` VALUES ('244', '4', '0', '0', 'JA System Social Feed Plugin for J25 & J31', '', 'jasocial_feed', 'plugin', 'system', '0', '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml', '');
INSERT INTO `jos_updates` VALUES ('245', '4', '0', '0', 'JA T3v2 System Plugin for J25 & J31', '', 'jat3', 'plugin', 'system', '0', '2.6.8', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml', '');
INSERT INTO `jos_updates` VALUES ('246', '4', '0', '0', 'JA T3v3 System Plugin', '', 'jat3v3', 'plugin', 'system', '0', '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml', '');
INSERT INTO `jos_updates` VALUES ('247', '4', '0', '0', 'JA Tabs Plugin for J25 & J30', '', 'jatabs', 'plugin', 'system', '0', '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml', '');
INSERT INTO `jos_updates` VALUES ('248', '4', '0', '0', 'JA Typo Plugin for J25 & J31', '', 'jatypo', 'plugin', 'system', '0', '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml', '');
INSERT INTO `jos_updates` VALUES ('249', '4', '0', '0', 'JA Teline III Template for Joomla 2.5', '', 'teline_iii', 'template', '', '0', '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/teline_iii.xml', '');
INSERT INTO `jos_updates` VALUES ('250', '4', '0', '0', 'Thirdparty Extensions Compatibility Bundle', '', 'thirdparty_exts_compatibility', 'custom', '', '0', '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml', '');
INSERT INTO `jos_updates` VALUES ('251', '5', '0', '0', 'T3 Framework Package', 'T3 Framework update', 'pkg_T3', 'package', '', '1', '1.1.0 RC2', '', 'http://www.t3-framework.org/update.xml', '\n			http://t3-framework.org\n		');

-- ----------------------------
-- Table structure for jos_update_categories
-- ----------------------------
DROP TABLE IF EXISTS `jos_update_categories`;
CREATE TABLE `jos_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';

-- ----------------------------
-- Records of jos_update_categories
-- ----------------------------

-- ----------------------------
-- Table structure for jos_update_sites
-- ----------------------------
DROP TABLE IF EXISTS `jos_update_sites`;
CREATE TABLE `jos_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

-- ----------------------------
-- Records of jos_update_sites
-- ----------------------------
INSERT INTO `jos_update_sites` VALUES ('1', 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', '1', '1380704933');
INSERT INTO `jos_update_sites` VALUES ('2', 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', '1', '1380704933');
INSERT INTO `jos_update_sites` VALUES ('3', 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', '1', '1380704933');
INSERT INTO `jos_update_sites` VALUES ('4', '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', '1', '1380704933');
INSERT INTO `jos_update_sites` VALUES ('5', 'T3 Framework Update', 'extension', 'http://www.t3-framework.org/update.xml', '1', '1380704933');

-- ----------------------------
-- Table structure for jos_update_sites_extensions
-- ----------------------------
DROP TABLE IF EXISTS `jos_update_sites_extensions`;
CREATE TABLE `jos_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

-- ----------------------------
-- Records of jos_update_sites_extensions
-- ----------------------------
INSERT INTO `jos_update_sites_extensions` VALUES ('1', '700');
INSERT INTO `jos_update_sites_extensions` VALUES ('2', '700');
INSERT INTO `jos_update_sites_extensions` VALUES ('3', '600');
INSERT INTO `jos_update_sites_extensions` VALUES ('4', '10001');
INSERT INTO `jos_update_sites_extensions` VALUES ('4', '10002');
INSERT INTO `jos_update_sites_extensions` VALUES ('5', '10003');

-- ----------------------------
-- Table structure for jos_usergroups
-- ----------------------------
DROP TABLE IF EXISTS `jos_usergroups`;
CREATE TABLE `jos_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_usergroups
-- ----------------------------
INSERT INTO `jos_usergroups` VALUES ('1', '0', '1', '20', 'Public');
INSERT INTO `jos_usergroups` VALUES ('2', '1', '6', '17', 'Registered');
INSERT INTO `jos_usergroups` VALUES ('3', '2', '7', '14', 'Author');
INSERT INTO `jos_usergroups` VALUES ('4', '3', '8', '11', 'Editor');
INSERT INTO `jos_usergroups` VALUES ('5', '4', '9', '10', 'Publisher');
INSERT INTO `jos_usergroups` VALUES ('6', '1', '2', '5', 'Manager');
INSERT INTO `jos_usergroups` VALUES ('7', '6', '3', '4', 'Administrator');
INSERT INTO `jos_usergroups` VALUES ('8', '1', '18', '19', 'Super Users');

-- ----------------------------
-- Table structure for jos_users
-- ----------------------------
DROP TABLE IF EXISTS `jos_users`;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=887 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_users
-- ----------------------------
INSERT INTO `jos_users` VALUES ('886', 'Super User', 'admin', 'nguyenxuanmui@gmail.com', '2917b1baea460453e00c8bca38dbd02f:A0Lz5oXuW1c6Xteh1RDrWIZTLHP0PCKX', 'deprecated', '0', '1', '2013-09-26 02:07:59', '2013-10-02 09:08:50', '0', '', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for jos_user_notes
-- ----------------------------
DROP TABLE IF EXISTS `jos_user_notes`;
CREATE TABLE `jos_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_user_notes
-- ----------------------------

-- ----------------------------
-- Table structure for jos_user_profiles
-- ----------------------------
DROP TABLE IF EXISTS `jos_user_profiles`;
CREATE TABLE `jos_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- ----------------------------
-- Records of jos_user_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for jos_user_usergroup_map
-- ----------------------------
DROP TABLE IF EXISTS `jos_user_usergroup_map`;
CREATE TABLE `jos_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_user_usergroup_map
-- ----------------------------
INSERT INTO `jos_user_usergroup_map` VALUES ('886', '8');

-- ----------------------------
-- Table structure for jos_viewlevels
-- ----------------------------
DROP TABLE IF EXISTS `jos_viewlevels`;
CREATE TABLE `jos_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_viewlevels
-- ----------------------------
INSERT INTO `jos_viewlevels` VALUES ('1', 'Public', '0', '[1]');
INSERT INTO `jos_viewlevels` VALUES ('2', 'Registered', '1', '[6,2,8]');
INSERT INTO `jos_viewlevels` VALUES ('3', 'Special', '2', '[6,3,8]');

-- ----------------------------
-- Table structure for jos_weblinks
-- ----------------------------
DROP TABLE IF EXISTS `jos_weblinks`;
CREATE TABLE `jos_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_weblinks
-- ----------------------------
