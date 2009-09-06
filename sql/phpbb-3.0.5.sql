-- MySQL dump 10.11
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.0.75-0ubuntu10.2

INSERT INTO `##DBNAME##_acl_groups` VALUES (1,0,85,0,1),
(1,0,93,0,1),
(1,0,111,0,1),
(5,0,0,5,0),
(5,0,0,1,0),
(2,0,0,6,0),
(3,0,0,6,0),
(4,0,0,5,0),
(4,0,0,10,0),
(1,1,0,17,0),
(2,1,0,17,0),
(3,1,0,17,0),
(6,1,0,17,0),
(1,2,0,17,0),
(2,2,0,15,0),
(3,2,0,15,0),
(4,2,0,21,0),
(5,2,0,14,0),
(5,2,0,10,0),
(6,2,0,19,0);

INSERT INTO `##DBNAME##_acl_options` VALUES (1,'f_',0,1,0),
(2,'f_announce',0,1,0),
(3,'f_attach',0,1,0),
(4,'f_bbcode',0,1,0),
(5,'f_bump',0,1,0),
(6,'f_delete',0,1,0),
(7,'f_download',0,1,0),
(8,'f_edit',0,1,0),
(9,'f_email',0,1,0),
(10,'f_flash',0,1,0),
(11,'f_icons',0,1,0),
(12,'f_ignoreflood',0,1,0),
(13,'f_img',0,1,0),
(14,'f_list',0,1,0),
(15,'f_noapprove',0,1,0),
(16,'f_poll',0,1,0),
(17,'f_post',0,1,0),
(18,'f_postcount',0,1,0),
(19,'f_print',0,1,0),
(20,'f_read',0,1,0),
(21,'f_reply',0,1,0),
(22,'f_report',0,1,0),
(23,'f_search',0,1,0),
(24,'f_sigs',0,1,0),
(25,'f_smilies',0,1,0),
(26,'f_sticky',0,1,0),
(27,'f_subscribe',0,1,0),
(28,'f_user_lock',0,1,0),
(29,'f_vote',0,1,0),
(30,'f_votechg',0,1,0),
(31,'m_',1,1,0),
(32,'m_approve',1,1,0),
(33,'m_chgposter',1,1,0),
(34,'m_delete',1,1,0),
(35,'m_edit',1,1,0),
(36,'m_info',1,1,0),
(37,'m_lock',1,1,0),
(38,'m_merge',1,1,0),
(39,'m_move',1,1,0),
(40,'m_report',1,1,0),
(41,'m_split',1,1,0),
(42,'m_ban',1,0,0),
(43,'m_warn',1,0,0),
(44,'a_',1,0,0),
(45,'a_aauth',1,0,0),
(46,'a_attach',1,0,0),
(47,'a_authgroups',1,0,0),
(48,'a_authusers',1,0,0),
(49,'a_backup',1,0,0),
(50,'a_ban',1,0,0),
(51,'a_bbcode',1,0,0),
(52,'a_board',1,0,0),
(53,'a_bots',1,0,0),
(54,'a_clearlogs',1,0,0),
(55,'a_email',1,0,0),
(56,'a_fauth',1,0,0),
(57,'a_forum',1,0,0),
(58,'a_forumadd',1,0,0),
(59,'a_forumdel',1,0,0),
(60,'a_group',1,0,0),
(61,'a_groupadd',1,0,0),
(62,'a_groupdel',1,0,0),
(63,'a_icons',1,0,0),
(64,'a_jabber',1,0,0),
(65,'a_language',1,0,0),
(66,'a_mauth',1,0,0),
(67,'a_modules',1,0,0),
(68,'a_names',1,0,0),
(69,'a_phpinfo',1,0,0),
(70,'a_profile',1,0,0),
(71,'a_prune',1,0,0),
(72,'a_ranks',1,0,0),
(73,'a_reasons',1,0,0),
(74,'a_roles',1,0,0),
(75,'a_search',1,0,0),
(76,'a_server',1,0,0),
(77,'a_styles',1,0,0),
(78,'a_switchperm',1,0,0),
(79,'a_uauth',1,0,0),
(80,'a_user',1,0,0),
(81,'a_userdel',1,0,0),
(82,'a_viewauth',1,0,0),
(83,'a_viewlogs',1,0,0),
(84,'a_words',1,0,0),
(85,'u_',1,0,0),
(86,'u_attach',1,0,0),
(87,'u_chgavatar',1,0,0),
(88,'u_chgcensors',1,0,0),
(89,'u_chgemail',1,0,0),
(90,'u_chggrp',1,0,0),
(91,'u_chgname',1,0,0),
(92,'u_chgpasswd',1,0,0),
(93,'u_download',1,0,0),
(94,'u_hideonline',1,0,0),
(95,'u_ignoreflood',1,0,0),
(96,'u_masspm',1,0,0),
(97,'u_masspm_group',1,0,0),
(98,'u_pm_attach',1,0,0),
(99,'u_pm_bbcode',1,0,0),
(100,'u_pm_delete',1,0,0),
(101,'u_pm_download',1,0,0),
(102,'u_pm_edit',1,0,0),
(103,'u_pm_emailpm',1,0,0),
(104,'u_pm_flash',1,0,0),
(105,'u_pm_forward',1,0,0),
(106,'u_pm_img',1,0,0),
(107,'u_pm_printpm',1,0,0),
(108,'u_pm_smilies',1,0,0),
(109,'u_readpm',1,0,0),
(110,'u_savedrafts',1,0,0),
(111,'u_search',1,0,0),
(112,'u_sendemail',1,0,0),
(113,'u_sendim',1,0,0),
(114,'u_sendpm',1,0,0),
(115,'u_sig',1,0,0),
(116,'u_viewonline',1,0,0),
(117,'u_viewprofile',1,0,0);

INSERT INTO `##DBNAME##_acl_roles` VALUES (1,'ROLE_ADMIN_STANDARD','ROLE_DESCRIPTION_ADMIN_STANDARD','a_',1),
(2,'ROLE_ADMIN_FORUM','ROLE_DESCRIPTION_ADMIN_FORUM','a_',3),
(3,'ROLE_ADMIN_USERGROUP','ROLE_DESCRIPTION_ADMIN_USERGROUP','a_',4),
(4,'ROLE_ADMIN_FULL','ROLE_DESCRIPTION_ADMIN_FULL','a_',2),
(5,'ROLE_USER_FULL','ROLE_DESCRIPTION_USER_FULL','u_',3),
(6,'ROLE_USER_STANDARD','ROLE_DESCRIPTION_USER_STANDARD','u_',1),
(7,'ROLE_USER_LIMITED','ROLE_DESCRIPTION_USER_LIMITED','u_',2),
(8,'ROLE_USER_NOPM','ROLE_DESCRIPTION_USER_NOPM','u_',4),
(9,'ROLE_USER_NOAVATAR','ROLE_DESCRIPTION_USER_NOAVATAR','u_',5),
(10,'ROLE_MOD_FULL','ROLE_DESCRIPTION_MOD_FULL','m_',3),
(11,'ROLE_MOD_STANDARD','ROLE_DESCRIPTION_MOD_STANDARD','m_',1),
(12,'ROLE_MOD_SIMPLE','ROLE_DESCRIPTION_MOD_SIMPLE','m_',2),
(13,'ROLE_MOD_QUEUE','ROLE_DESCRIPTION_MOD_QUEUE','m_',4),
(14,'ROLE_FORUM_FULL','ROLE_DESCRIPTION_FORUM_FULL','f_',7),
(15,'ROLE_FORUM_STANDARD','ROLE_DESCRIPTION_FORUM_STANDARD','f_',5),
(16,'ROLE_FORUM_NOACCESS','ROLE_DESCRIPTION_FORUM_NOACCESS','f_',1),
(17,'ROLE_FORUM_READONLY','ROLE_DESCRIPTION_FORUM_READONLY','f_',2),
(18,'ROLE_FORUM_LIMITED','ROLE_DESCRIPTION_FORUM_LIMITED','f_',3),
(19,'ROLE_FORUM_BOT','ROLE_DESCRIPTION_FORUM_BOT','f_',9),
(20,'ROLE_FORUM_ONQUEUE','ROLE_DESCRIPTION_FORUM_ONQUEUE','f_',8),
(21,'ROLE_FORUM_POLLS','ROLE_DESCRIPTION_FORUM_POLLS','f_',6),
(22,'ROLE_FORUM_LIMITED_POLLS','ROLE_DESCRIPTION_FORUM_LIMITED_POLLS','f_',4);

INSERT INTO `##DBNAME##_acl_roles_data` VALUES (1,44,1),
(1,46,1),
(1,47,1),
(1,48,1),
(1,50,1),
(1,51,1),
(1,52,1),
(1,56,1),
(1,57,1),
(1,58,1),
(1,59,1),
(1,60,1),
(1,61,1),
(1,62,1),
(1,63,1),
(1,66,1),
(1,68,1),
(1,70,1),
(1,71,1),
(1,72,1),
(1,73,1),
(1,79,1),
(1,80,1),
(1,81,1),
(1,82,1),
(1,83,1),
(1,84,1),
(2,44,1),
(2,47,1),
(2,48,1),
(2,56,1),
(2,57,1),
(2,58,1),
(2,59,1),
(2,66,1),
(2,71,1),
(2,79,1),
(2,82,1),
(2,83,1),
(3,44,1),
(3,47,1),
(3,48,1),
(3,50,1),
(3,60,1),
(3,61,1),
(3,62,1),
(3,72,1),
(3,79,1),
(3,80,1),
(3,82,1),
(3,83,1),
(4,44,1),
(4,45,1),
(4,46,1),
(4,47,1),
(4,48,1),
(4,49,1),
(4,50,1),
(4,51,1),
(4,52,1),
(4,53,1),
(4,54,1),
(4,55,1),
(4,56,1),
(4,57,1),
(4,58,1),
(4,59,1),
(4,60,1),
(4,61,1),
(4,62,1),
(4,63,1),
(4,64,1),
(4,65,1),
(4,66,1),
(4,67,1),
(4,68,1),
(4,69,1),
(4,70,1),
(4,71,1),
(4,72,1),
(4,73,1),
(4,74,1),
(4,75,1),
(4,76,1),
(4,77,1),
(4,78,1),
(4,79,1),
(4,80,1),
(4,81,1),
(4,82,1),
(4,83,1),
(4,84,1),
(5,85,1),
(5,86,1),
(5,87,1),
(5,88,1),
(5,89,1),
(5,90,1),
(5,91,1),
(5,92,1),
(5,93,1),
(5,94,1),
(5,95,1),
(5,96,1),
(5,97,1),
(5,98,1),
(5,99,1),
(5,100,1),
(5,101,1),
(5,102,1),
(5,103,1),
(5,104,1),
(5,105,1),
(5,106,1),
(5,107,1),
(5,108,1),
(5,109,1),
(5,110,1),
(5,111,1),
(5,112,1),
(5,113,1),
(5,114,1),
(5,115,1),
(5,116,1),
(5,117,1),
(6,85,1),
(6,86,1),
(6,87,1),
(6,88,1),
(6,89,1),
(6,92,1),
(6,93,1),
(6,94,1),
(6,96,1),
(6,97,1),
(6,98,1),
(6,99,1),
(6,100,1),
(6,101,1),
(6,102,1),
(6,103,1),
(6,106,1),
(6,107,1),
(6,108,1),
(6,109,1),
(6,110,1),
(6,111,1),
(6,112,1),
(6,113,1),
(6,114,1),
(6,115,1),
(6,117,1),
(7,85,1),
(7,87,1),
(7,88,1),
(7,89,1),
(7,92,1),
(7,93,1),
(7,94,1),
(7,99,1),
(7,100,1),
(7,101,1),
(7,102,1),
(7,105,1),
(7,106,1),
(7,107,1),
(7,108,1),
(7,109,1),
(7,114,1),
(7,115,1),
(7,117,1),
(8,85,1),
(8,87,1),
(8,88,1),
(8,89,1),
(8,92,1),
(8,93,1),
(8,94,1),
(8,115,1),
(8,117,1),
(8,96,0),
(8,97,0),
(8,109,0),
(8,114,0),
(9,85,1),
(9,88,1),
(9,89,1),
(9,92,1),
(9,93,1),
(9,94,1),
(9,99,1),
(9,100,1),
(9,101,1),
(9,102,1),
(9,105,1),
(9,106,1),
(9,107,1),
(9,108,1),
(9,109,1),
(9,114,1),
(9,115,1),
(9,117,1),
(9,87,0),
(9,96,0),
(9,97,0),
(10,31,1),
(10,32,1),
(10,42,1),
(10,33,1),
(10,34,1),
(10,35,1),
(10,36,1),
(10,37,1),
(10,38,1),
(10,39,1),
(10,40,1),
(10,41,1),
(10,43,1),
(11,31,1),
(11,32,1),
(11,34,1),
(11,35,1),
(11,36,1),
(11,37,1),
(11,38,1),
(11,39,1),
(11,40,1),
(11,41,1),
(11,43,1),
(12,31,1),
(12,34,1),
(12,35,1),
(12,36,1),
(12,40,1),
(13,31,1),
(13,32,1),
(13,35,1),
(14,1,1),
(14,2,1),
(14,3,1),
(14,4,1),
(14,5,1),
(14,6,1),
(14,7,1),
(14,8,1),
(14,9,1),
(14,10,1),
(14,11,1),
(14,12,1),
(14,13,1),
(14,14,1),
(14,15,1),
(14,16,1),
(14,17,1),
(14,18,1),
(14,19,1),
(14,20,1),
(14,21,1),
(14,22,1),
(14,23,1),
(14,24,1),
(14,25,1),
(14,26,1),
(14,27,1),
(14,28,1),
(14,29,1),
(14,30,1),
(15,1,1),
(15,3,1),
(15,4,1),
(15,5,1),
(15,6,1),
(15,7,1),
(15,8,1),
(15,9,1),
(15,11,1),
(15,13,1),
(15,14,1),
(15,15,1),
(15,17,1),
(15,18,1),
(15,19,1),
(15,20,1),
(15,21,1),
(15,22,1),
(15,23,1),
(15,24,1),
(15,25,1),
(15,27,1),
(15,29,1),
(15,30,1),
(16,1,0),
(17,1,1),
(17,7,1),
(17,14,1),
(17,19,1),
(17,20,1),
(17,23,1),
(17,27,1),
(18,1,1),
(18,4,1),
(18,7,1),
(18,8,1),
(18,9,1),
(18,13,1),
(18,14,1),
(18,15,1),
(18,17,1),
(18,18,1),
(18,19,1),
(18,20,1),
(18,21,1),
(18,22,1),
(18,23,1),
(18,24,1),
(18,25,1),
(18,27,1),
(18,29,1),
(19,1,1),
(19,7,1),
(19,14,1),
(19,19,1),
(19,20,1),
(20,1,1),
(20,3,1),
(20,4,1),
(20,7,1),
(20,8,1),
(20,9,1),
(20,13,1),
(20,14,1),
(20,17,1),
(20,18,1),
(20,19,1),
(20,20,1),
(20,21,1),
(20,22,1),
(20,23,1),
(20,24,1),
(20,25,1),
(20,27,1),
(20,29,1),
(20,15,0),
(21,1,1),
(21,3,1),
(21,4,1),
(21,5,1),
(21,6,1),
(21,7,1),
(21,8,1),
(21,9,1),
(21,11,1),
(21,13,1),
(21,14,1),
(21,15,1),
(21,16,1),
(21,17,1),
(21,18,1),
(21,19,1),
(21,20,1),
(21,21,1),
(21,22,1),
(21,23,1),
(21,24,1),
(21,25,1),
(21,27,1),
(21,29,1),
(21,30,1),
(22,1,1),
(22,4,1),
(22,7,1),
(22,8,1),
(22,9,1),
(22,13,1),
(22,14,1),
(22,15,1),
(22,16,1),
(22,17,1),
(22,18,1),
(22,19,1),
(22,20,1),
(22,21,1),
(22,22,1),
(22,23,1),
(22,24,1),
(22,25,1),
(22,27,1),
(22,29,1);



--
-- Table structure for table `##DBNAME##_acl_users`
--

DROP TABLE IF EXISTS `##DBNAME##_acl_users`;
CREATE TABLE `##DBNAME##_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_id` mediumint(8) unsigned NOT NULL default '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL default '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL default '0',
  `auth_setting` tinyint(2) NOT NULL default '0',
  KEY `user_id` (`user_id`),

  KEY `auth_option_id` (`auth_option_id`),

  KEY `auth_role_id` (`auth_role_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;

--
-- Dumping data for table `##DBNAME##_acl_users`
--

INSERT INTO `##DBNAME##_acl_users` VALUES (2,0,0,5,0);

--
-- Table structure for table `##DBNAME##_attachments`
--

DROP TABLE IF EXISTS `##DBNAME##_attachments`;
CREATE TABLE `##DBNAME##_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL auto_increment,
  `post_msg_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `in_message` tinyint(1) unsigned NOT NULL default '0',
  `poster_id` mediumint(8) unsigned NOT NULL default '0',
  `is_orphan` tinyint(1) unsigned NOT NULL default '1',
  `physical_filename` varchar(255) collate utf8_bin NOT NULL default '',
  `real_filename` varchar(255) collate utf8_bin NOT NULL default '',
  `download_count` mediumint(8) unsigned NOT NULL default '0',
  `attach_comment` text collate utf8_bin NOT NULL,
  `extension` varchar(100) collate utf8_bin NOT NULL default '',
  `mimetype` varchar(100) collate utf8_bin NOT NULL default '',
  `filesize` int(20) unsigned NOT NULL default '0',
  `filetime` int(11) unsigned NOT NULL default '0',
  `thumbnail` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;

--
-- Table structure for table `##DBNAME##_banlist`
--

DROP TABLE IF EXISTS `##DBNAME##_banlist`;
CREATE TABLE `##DBNAME##_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL auto_increment,
  `ban_userid` mediumint(8) unsigned NOT NULL default '0',
  `ban_ip` varchar(40) collate utf8_bin NOT NULL default '',
  `ban_email` varchar(100) collate utf8_bin NOT NULL default '',
  `ban_start` int(11) unsigned NOT NULL default '0',
  `ban_end` int(11) unsigned NOT NULL default '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL default '0',
  `ban_reason` varchar(255) collate utf8_bin NOT NULL default '',
  `ban_give_reason` varchar(255) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;

--
-- Table structure for table `##DBNAME##_bbcodes`
--

DROP TABLE IF EXISTS `##DBNAME##_bbcodes`;
CREATE TABLE `##DBNAME##_bbcodes` (
  `bbcode_id` tinyint(3) NOT NULL default '0',
  `bbcode_tag` varchar(16) collate utf8_bin NOT NULL default '',
  `bbcode_helpline` varchar(255) collate utf8_bin NOT NULL default '',
  `display_on_posting` tinyint(1) unsigned NOT NULL default '0',
  `bbcode_match` text collate utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext collate utf8_bin NOT NULL,
  `first_pass_match` mediumtext collate utf8_bin NOT NULL,
  `first_pass_replace` mediumtext collate utf8_bin NOT NULL,
  `second_pass_match` mediumtext collate utf8_bin NOT NULL,
  `second_pass_replace` mediumtext collate utf8_bin NOT NULL,
  PRIMARY KEY  (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;

--
-- Table structure for table `##DBNAME##_bookmarks`
--

DROP TABLE IF EXISTS `##DBNAME##_bookmarks`;
CREATE TABLE `##DBNAME##_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`topic_id`,`user_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;

--
-- Table structure for table `##DBNAME##_bots`
--

DROP TABLE IF EXISTS `##DBNAME##_bots`;
CREATE TABLE `##DBNAME##_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL auto_increment,
  `bot_active` tinyint(1) unsigned NOT NULL default '1',
  `bot_name` varchar(255) collate utf8_bin NOT NULL default '',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `bot_agent` varchar(255) collate utf8_bin NOT NULL default '',
  `bot_ip` varchar(255) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`bot_id`),

  KEY `bot_active` (`bot_active`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_bots`
--



INSERT INTO `##DBNAME##_bots` VALUES (1,1,'AdsBot [Google]',3,'AdsBot-Google',''),
(2,1,'Alexa [Bot]',4,'ia_archiver',''),
(3,1,'Alta Vista [Bot]',5,'Scooter/',''),
(4,1,'Ask Jeeves [Bot]',6,'Ask Jeeves',''),
(5,1,'Baidu [Spider]',7,'Baiduspider+(',''),
(6,1,'Exabot [Bot]',8,'Exabot/',''),
(7,1,'FAST Enterprise [Crawler]',9,'FAST Enterprise Crawler',''),
(8,1,'FAST WebCrawler [Crawler]',10,'FAST-WebCrawler/',''),
(9,1,'Francis [Bot]',11,'http://www.neomo.de/',''),
(10,1,'Gigabot [Bot]',12,'Gigabot/',''),
(11,1,'Google Adsense [Bot]',13,'Mediapartners-Google',''),
(12,1,'Google Desktop',14,'Google Desktop',''),
(13,1,'Google Feedfetcher',15,'Feedfetcher-Google',''),
(14,1,'Google [Bot]',16,'Googlebot',''),
(15,1,'Heise IT-Markt [Crawler]',17,'heise-IT-Markt-Crawler',''),
(16,1,'Heritrix [Crawler]',18,'heritrix/1.',''),
(17,1,'IBM Research [Bot]',19,'ibm.com/cs/crawler',''),
(18,1,'ICCrawler - ICjobs',20,'ICCrawler - ICjobs',''),
(19,1,'ichiro [Crawler]',21,'ichiro/',''),
(20,1,'Majestic-12 [Bot]',22,'MJ12bot/',''),
(21,1,'Metager [Bot]',23,'MetagerBot/',''),
(22,1,'MSN NewsBlogs',24,'msnbot-NewsBlogs/',''),
(23,1,'MSN [Bot]',25,'msnbot/',''),
(24,1,'MSNbot Media',26,'msnbot-media/',''),
(25,1,'NG-Search [Bot]',27,'NG-Search/',''),
(26,1,'Nutch [Bot]',28,'http://lucene.apache.org/nutch/',''),
(27,1,'Nutch/CVS [Bot]',29,'NutchCVS/',''),
(28,1,'OmniExplorer [Bot]',30,'OmniExplorer_Bot/',''),
(29,1,'Online link [Validator]',31,'online link validator',''),
(30,1,'psbot [Picsearch]',32,'psbot/0',''),
(31,1,'Seekport [Bot]',33,'Seekbot/',''),
(32,1,'Sensis [Crawler]',34,'Sensis Web Crawler',''),
(33,1,'SEO Crawler',35,'SEO search Crawler/',''),
(34,1,'Seoma [Crawler]',36,'Seoma [SEO Crawler]',''),
(35,1,'SEOSearch [Crawler]',37,'SEOsearch/',''),
(36,1,'Snappy [Bot]',38,'Snappy/1.1 ( http://www.urltrends.com/ )',''),
(37,1,'Steeler [Crawler]',39,'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/',''),
(38,1,'Synoo [Bot]',40,'SynooBot/',''),
(39,1,'Telekom [Bot]',41,'crawleradmin.t-info@telekom.de',''),
(40,1,'TurnitinBot [Bot]',42,'TurnitinBot/',''),
(41,1,'Voyager [Bot]',43,'voyager/1.0',''),
(42,1,'W3 [Sitesearch]',44,'W3 SiteSearch Crawler',''),
(43,1,'W3C [Linkcheck]',45,'W3C-checklink/',''),
(44,1,'W3C [Validator]',46,'W3C_*Validator',''),
(45,1,'WiseNut [Bot]',47,'http://www.WISEnutbot.com',''),
(46,1,'YaCy [Bot]',48,'yacybot',''),
(47,1,'Yahoo MMCrawler [Bot]',49,'Yahoo-MMCrawler/',''),
(48,1,'Yahoo Slurp [Bot]',50,'Yahoo! DE Slurp',''),
(49,1,'Yahoo [Bot]',51,'Yahoo! Slurp',''),
(50,1,'YahooSeeker [Bot]',52,'YahooSeeker/','');



--
-- Table structure for table `##DBNAME##_config`
--

DROP TABLE IF EXISTS `##DBNAME##_config`;


CREATE TABLE `##DBNAME##_config` (
  `config_name` varchar(255) collate utf8_bin NOT NULL default '',
  `config_value` varchar(255) collate utf8_bin NOT NULL default '',
  `is_dynamic` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`config_name`),

  KEY `is_dynamic` (`is_dynamic`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_config`
--



INSERT INTO `##DBNAME##_config` VALUES ('active_sessions','0',0),
('allow_attachments','1',0),
('allow_autologin','1',0),
('allow_avatar_local','0',0),
('allow_avatar_remote','0',0),
('allow_avatar_upload','0',0),
('allow_bbcode','1',0),
('allow_birthdays','1',0),
('allow_bookmarks','1',0),
('allow_emailreuse','0',0),
('allow_forum_notify','1',0),
('allow_mass_pm','1',0),
('allow_name_chars','USERNAME_CHARS_ANY',0),
('allow_namechange','0',0),
('allow_nocensors','0',0),
('allow_pm_attach','0',0),
('allow_post_flash','1',0),
('allow_post_links','1',0),
('allow_privmsg','1',0),
('allow_sig','1',0),
('allow_sig_bbcode','1',0),
('allow_sig_flash','0',0),
('allow_sig_img','1',0),
('allow_sig_links','1',0),
('allow_sig_pm','1',0),
('allow_sig_smilies','1',0),
('allow_smilies','1',0),
('allow_topic_notify','1',0),
('attachment_quota','52428800',0),
('auth_bbcode_pm','1',0),
('auth_flash_pm','0',0),
('auth_img_pm','1',0),
('auth_method','db',0),
('auth_smilies_pm','1',0),
('avatar_filesize','6144',0),
('avatar_gallery_path','files/##UPLOAD_PATH##/images/avatars/gallery',0),
('avatar_max_height','90',0),
('avatar_max_width','90',0),
('avatar_min_height','20',0),
('avatar_min_width','20',0),
('avatar_path','files/##UPLOAD_PATH##/images/avatars/upload',0),
('avatar_salt','f88e42bc15e509abd00bfa81ea14fe21',0),
('board_contact','##EMAIL##',0),
('board_disable','0',0),
('board_disable_msg','',0),
('board_dst','0',0),
('board_email','##EMAIL##',0),
('board_email_form','0',0),
('board_email_sig','Thanks, The Management',0),
('board_hide_emails','1',0),
('board_timezone','0',0),
('browser_check','1',0),
('bump_interval','10',0),
('bump_type','d',0),
('cache_gc','7200',0),
('captcha_gd','0',0),
('captcha_gd_foreground_noise','0',0),
('captcha_gd_x_grid','25',0),
('captcha_gd_y_grid','25',0),
('captcha_gd_wave','0',0),
('captcha_gd_3d_noise','1',0),
('captcha_gd_fonts','1',0),
('confirm_refresh','1',0),
('check_attachment_content','1',0),
('check_dnsbl','0',0),
('chg_passforce','0',0),
('cookie_domain','localhost',0),
('cookie_name','phpbb3_sxa6x',0),
('cookie_path','/',0),
('cookie_secure','0',0),
('coppa_enable','0',0),
('coppa_fax','',0),
('coppa_mail','',0),
('database_gc','604800',0),
('dbms_version','5.0.75-0ubuntu10.2',0),
('default_dateformat','D M d, Y g:i a',0),
('default_style','1',0),
('display_last_edited','1',0),
('display_order','0',0),
('edit_time','0',0),
('email_check_mx','1',0),
('email_enable','1',0),
('email_function_name','mail',0),
('email_package_size','50',0),
('enable_confirm','1',0),
('enable_pm_icons','1',0),
('enable_post_confirm','1',0),
('enable_queue_trigger','0',0),
('flood_interval','15',0),
('force_server_vars','0',0),
('form_token_lifetime','7200',0),
('form_token_mintime','0',0),
('form_token_sid_guests','1',0),
('forward_pm','1',0),
('forwarded_for_check','0',0),
('full_folder_action','2',0),
('fulltext_mysql_max_word_len','254',0),
('fulltext_mysql_min_word_len','4',0),
('fulltext_native_common_thres','5',0),
('fulltext_native_load_upd','1',0),
('fulltext_native_max_chars','14',0),
('fulltext_native_min_chars','3',0),
('gzip_compress','0',0),
('hot_threshold','25',0),
('icons_path','images/icons',0),
('img_create_thumbnail','0',0),
('img_display_inlined','1',0),
('img_imagick','',0),
('img_link_height','0',0),
('img_link_width','0',0),
('img_max_height','0',0),
('img_max_thumb_width','400',0),
('img_max_width','0',0),
('img_min_thumb_filesize','12000',0),
('ip_check','3',0),
('jab_enable','0',0),
('jab_host','',0),
('jab_password','',0),
('jab_package_size','20',0),
('jab_port','5222',0),
('jab_use_ssl','0',0),
('jab_username','',0),
('ldap_base_dn','',0),
('ldap_email','',0),
('ldap_password','',0),
('ldap_port','',0),
('ldap_server','',0),
('ldap_uid','',0),
('ldap_user','',0),
('ldap_user_filter','',0),
('limit_load','0',0),
('limit_search_load','0',0),
('load_anon_lastread','0',0),
('load_birthdays','1',0),
('load_cpf_memberlist','0',0),
('load_cpf_viewprofile','1',0),
('load_cpf_viewtopic','0',0),
('load_db_lastread','1',0),
('load_db_track','1',0),
('load_jumpbox','1',0),
('load_moderators','1',0),
('load_online','1',0),
('load_online_guests','1',0),
('load_online_time','5',0),
('load_onlinetrack','1',0),
('load_search','1',0),
('load_tplcompile','0',0),
('load_user_activity','1',0),
('max_attachments','3',0),
('max_attachments_pm','1',0),
('max_autologin_time','0',0),
('max_filesize','262144',0),
('max_filesize_pm','262144',0),
('max_login_attempts','3',0),
('max_name_chars','20',0),
('max_num_search_keywords','10',0),
('max_pass_chars','30',0),
('max_poll_options','10',0),
('max_post_chars','60000',0),
('max_post_font_size','200',0),
('max_post_img_height','0',0),
('max_post_img_width','0',0),
('max_post_smilies','0',0),
('max_post_urls','0',0),
('max_quote_depth','3',0),
('max_reg_attempts','5',0),
('max_sig_chars','255',0),
('max_sig_font_size','200',0),
('max_sig_img_height','0',0),
('max_sig_img_width','0',0),
('max_sig_smilies','0',0),
('max_sig_urls','5',0),
('min_name_chars','3',0),
('min_pass_chars','6',0),
('min_search_author_chars','3',0),
('mime_triggers','body|head|html|img|plaintext|a href|pre|script|table|title',0),
('override_user_style','0',0),
('pass_complex','PASS_TYPE_ANY',0),
('pm_edit_time','0',0),
('pm_max_boxes','4',0),
('pm_max_msgs','50',0),
('pm_max_recipients','0',0),
('posts_per_page','10',0),
('print_pm','1',0),
('queue_interval','600',0),
('queue_trigger_posts','3',0),
('ranks_path','files/##UPLOAD_PATH##/images/ranks',0),
('require_activation','0',0),
('referer_validation','1',0),
('script_path','##SCRIPT_PATH##',0),
('search_block_size','250',0),
('search_gc','7200',0),
('search_interval','0',0),
('search_anonymous_interval','0',0),
('search_type','fulltext_native',0),
('search_store_results','1800',0),
('secure_allow_deny','1',0),
('secure_allow_empty_referer','1',0),
('secure_downloads','0',0),
('server_name','##SERVER_NAME##',0),
('server_port','80',0),
('server_protocol','##SERVER_PROTOCOL##',0),
('session_gc','3600',0),
('session_length','3600',0),
('site_desc','A short text to describe your forum',0),
('sitename','##SITE_NAME##',0),
('smilies_path','files/##UPLOAD_PATH##/images/smilies',0),
('smtp_auth_method','PLAIN',0),
('smtp_delivery','0',0),
('smtp_host','',0),
('smtp_password','',0),
('smtp_port','25',0),
('smtp_username','',0),
('topics_per_page','25',0),
('tpl_allow_php','0',0),
('upload_icons_path','files/##UPLOAD_PATH##/images/upload_icons',0),
('upload_path','files/##UPLOAD_PATH##',0),
('version','3.0.5',0),
('warnings_expire_days','90',0),
('warnings_gc','14400',0),
('cache_last_gc','0',1),
('cron_lock','0',1),
('database_last_gc','0',1),
('last_queue_run','0',1),
('newest_user_colour','AA0000',1),
('newest_user_id','2',1),
('newest_username','##USERNAME##',1),
('num_files','0',1),
('num_posts','1',1),
('num_topics','1',1),
('num_users','1',1),
('rand_seed','13c6d51600a639898ed4823db2766015',1),
('rand_seed_last_update','1252075881',1),
('record_online_date','0',1),
('record_online_users','0',1),
('search_indexing_state','',1),
('search_last_gc','0',1),
('session_last_gc','0',1),
('upload_dir_size','0',1),
('warnings_last_gc','0',1),
('board_startdate','1252075878',0),
('default_lang','en',0);



--
-- Table structure for table `##DBNAME##_confirm`
--

DROP TABLE IF EXISTS `##DBNAME##_confirm`;


CREATE TABLE `##DBNAME##_confirm` (
  `confirm_id` char(32) collate utf8_bin NOT NULL default '',
  `session_id` char(32) collate utf8_bin NOT NULL default '',
  `confirm_type` tinyint(3) NOT NULL default '0',
  `code` varchar(8) collate utf8_bin NOT NULL default '',
  `seed` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`session_id`,`confirm_id`),

  KEY `confirm_type` (`confirm_type`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_confirm`
--






--
-- Table structure for table `##DBNAME##_disallow`
--

DROP TABLE IF EXISTS `##DBNAME##_disallow`;


CREATE TABLE `##DBNAME##_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL auto_increment,
  `disallow_username` varchar(255) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`disallow_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_disallow`
--






--
-- Table structure for table `##DBNAME##_drafts`
--

DROP TABLE IF EXISTS `##DBNAME##_drafts`;


CREATE TABLE `##DBNAME##_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_id` mediumint(8) unsigned NOT NULL default '0',
  `save_time` int(11) unsigned NOT NULL default '0',
  `draft_subject` varchar(255) collate utf8_bin NOT NULL default '',
  `draft_message` mediumtext collate utf8_bin NOT NULL,
  PRIMARY KEY  (`draft_id`),

  KEY `save_time` (`save_time`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_drafts`
--






--
-- Table structure for table `##DBNAME##_extension_groups`
--

DROP TABLE IF EXISTS `##DBNAME##_extension_groups`;


CREATE TABLE `##DBNAME##_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL auto_increment,
  `group_name` varchar(255) collate utf8_bin NOT NULL default '',
  `cat_id` tinyint(2) NOT NULL default '0',
  `allow_group` tinyint(1) unsigned NOT NULL default '0',
  `download_mode` tinyint(1) unsigned NOT NULL default '1',
  `upload_icon` varchar(255) collate utf8_bin NOT NULL default '',
  `max_filesize` int(20) unsigned NOT NULL default '0',
  `allowed_forums` text collate utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_extension_groups`
--



INSERT INTO `##DBNAME##_extension_groups` VALUES (1,'Images',1,1,1,'',0,'',0),
(2,'Archives',0,1,1,'',0,'',0),
(3,'Plain Text',0,0,1,'',0,'',0),
(4,'Documents',0,0,1,'',0,'',0),
(5,'Real Media',3,0,1,'',0,'',0),
(6,'Windows Media',2,0,1,'',0,'',0),
(7,'Flash Files',5,0,1,'',0,'',0),
(8,'Quicktime Media',6,0,1,'',0,'',0),
(9,'Downloadable Files',0,0,1,'',0,'',0);



--
-- Table structure for table `##DBNAME##_extensions`
--

DROP TABLE IF EXISTS `##DBNAME##_extensions`;


CREATE TABLE `##DBNAME##_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL auto_increment,
  `group_id` mediumint(8) unsigned NOT NULL default '0',
  `extension` varchar(100) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_extensions`
--



INSERT INTO `##DBNAME##_extensions` VALUES (1,1,'gif'),
(2,1,'png'),
(3,1,'jpeg'),
(4,1,'jpg'),
(5,1,'tif'),
(6,1,'tiff'),
(7,1,'tga'),
(8,2,'gtar'),
(9,2,'gz'),
(10,2,'tar'),
(11,2,'zip'),
(12,2,'rar'),
(13,2,'ace'),
(14,2,'torrent'),
(15,2,'tgz'),
(16,2,'bz2'),
(17,2,'7z'),
(18,3,'txt'),
(19,3,'c'),
(20,3,'h'),
(21,3,'cpp'),
(22,3,'hpp'),
(23,3,'diz'),
(24,3,'csv'),
(25,3,'ini'),
(26,3,'log'),
(27,3,'js'),
(28,3,'xml'),
(29,4,'xls'),
(30,4,'xlsx'),
(31,4,'xlsm'),
(32,4,'xlsb'),
(33,4,'doc'),
(34,4,'docx'),
(35,4,'docm'),
(36,4,'dot'),
(37,4,'dotx'),
(38,4,'dotm'),
(39,4,'pdf'),
(40,4,'ai'),
(41,4,'ps'),
(42,4,'ppt'),
(43,4,'pptx'),
(44,4,'pptm'),
(45,4,'odg'),
(46,4,'odp'),
(47,4,'ods'),
(48,4,'odt'),
(49,4,'rtf'),
(50,5,'rm'),
(51,5,'ram'),
(52,6,'wma'),
(53,6,'wmv'),
(54,7,'swf'),
(55,8,'mov'),
(56,8,'m4v'),
(57,8,'m4a'),
(58,8,'mp4'),
(59,8,'3gp'),
(60,8,'3g2'),
(61,8,'qt'),
(62,9,'mpeg'),
(63,9,'mpg'),
(64,9,'mp3'),
(65,9,'ogg'),
(66,9,'ogm');



--
-- Table structure for table `##DBNAME##_forums`
--

DROP TABLE IF EXISTS `##DBNAME##_forums`;


CREATE TABLE `##DBNAME##_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL auto_increment,
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `left_id` mediumint(8) unsigned NOT NULL default '0',
  `right_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_parents` mediumtext collate utf8_bin NOT NULL,
  `forum_name` varchar(255) collate utf8_bin NOT NULL default '',
  `forum_desc` text collate utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) collate utf8_bin NOT NULL default '',
  `forum_desc_options` int(11) unsigned NOT NULL default '7',
  `forum_desc_uid` varchar(8) collate utf8_bin NOT NULL default '',
  `forum_link` varchar(255) collate utf8_bin NOT NULL default '',
  `forum_password` varchar(40) collate utf8_bin NOT NULL default '',
  `forum_style` mediumint(8) unsigned NOT NULL default '0',
  `forum_image` varchar(255) collate utf8_bin NOT NULL default '',
  `forum_rules` text collate utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) collate utf8_bin NOT NULL default '',
  `forum_rules_bitfield` varchar(255) collate utf8_bin NOT NULL default '',
  `forum_rules_options` int(11) unsigned NOT NULL default '7',
  `forum_rules_uid` varchar(8) collate utf8_bin NOT NULL default '',
  `forum_topics_per_page` tinyint(4) NOT NULL default '0',
  `forum_type` tinyint(4) NOT NULL default '0',
  `forum_status` tinyint(4) NOT NULL default '0',
  `forum_posts` mediumint(8) unsigned NOT NULL default '0',
  `forum_topics` mediumint(8) unsigned NOT NULL default '0',
  `forum_topics_real` mediumint(8) unsigned NOT NULL default '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_last_post_subject` varchar(255) collate utf8_bin NOT NULL default '',
  `forum_last_post_time` int(11) unsigned NOT NULL default '0',
  `forum_last_poster_name` varchar(255) collate utf8_bin NOT NULL default '',
  `forum_last_poster_colour` varchar(6) collate utf8_bin NOT NULL default '',
  `forum_flags` tinyint(4) NOT NULL default '32',
  `display_subforum_list` tinyint(1) unsigned NOT NULL default '1',
  `display_on_index` tinyint(1) unsigned NOT NULL default '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL default '1',
  `enable_icons` tinyint(1) unsigned NOT NULL default '1',
  `enable_prune` tinyint(1) unsigned NOT NULL default '0',
  `prune_next` int(11) unsigned NOT NULL default '0',
  `prune_days` mediumint(8) unsigned NOT NULL default '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL default '0',
  `prune_freq` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`forum_id`),

  KEY `left_right_id` (`left_id`,`right_id`),

  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_forums`
--



INSERT INTO `##DBNAME##_forums` VALUES (1,0,1,4,'','Your first category','','',7,'','','',0,'','','','',7,'',0,0,0,1,1,1,1,2,'',1252075878,'replaceusername','AA0000',32,1,1,1,1,0,0,0,0,0),
(2,1,2,3,'','Your first forum','Description of your first forum.','',7,'','','',0,'','','','',7,'',0,1,0,1,1,1,1,2,'Welcome to phpBB3',1252075878,'replaceusername','AA0000',32,1,1,1,1,0,0,0,0,0);



--
-- Table structure for table `##DBNAME##_forums_access`
--

DROP TABLE IF EXISTS `##DBNAME##_forums_access`;


CREATE TABLE `##DBNAME##_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `session_id` char(32) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`forum_id`,`user_id`,`session_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_forums_access`
--






--
-- Table structure for table `##DBNAME##_forums_track`
--

DROP TABLE IF EXISTS `##DBNAME##_forums_track`;


CREATE TABLE `##DBNAME##_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_id` mediumint(8) unsigned NOT NULL default '0',
  `mark_time` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`user_id`,`forum_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_forums_track`
--






--
-- Table structure for table `##DBNAME##_forums_watch`
--

DROP TABLE IF EXISTS `##DBNAME##_forums_watch`;


CREATE TABLE `##DBNAME##_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `notify_status` tinyint(1) unsigned NOT NULL default '0',
  KEY `forum_id` (`forum_id`),

  KEY `user_id` (`user_id`),

  KEY `notify_stat` (`notify_status`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_forums_watch`
--






--
-- Table structure for table `##DBNAME##_groups`
--

DROP TABLE IF EXISTS `##DBNAME##_groups`;


CREATE TABLE `##DBNAME##_groups` (
  `group_id` mediumint(8) unsigned NOT NULL auto_increment,
  `group_type` tinyint(4) NOT NULL default '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL default '0',
  `group_name` varchar(255) collate utf8_bin NOT NULL default '',
  `group_desc` text collate utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) collate utf8_bin NOT NULL default '',
  `group_desc_options` int(11) unsigned NOT NULL default '7',
  `group_desc_uid` varchar(8) collate utf8_bin NOT NULL default '',
  `group_display` tinyint(1) unsigned NOT NULL default '0',
  `group_avatar` varchar(255) collate utf8_bin NOT NULL default '',
  `group_avatar_type` tinyint(2) NOT NULL default '0',
  `group_avatar_width` smallint(4) unsigned NOT NULL default '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL default '0',
  `group_rank` mediumint(8) unsigned NOT NULL default '0',
  `group_colour` varchar(6) collate utf8_bin NOT NULL default '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL default '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL default '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL default '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL default '0',
  `group_legend` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`group_id`),

  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_groups`
--



INSERT INTO `##DBNAME##_groups` VALUES (1,3,0,'GUESTS','','',7,'',0,'',0,0,0,0,'',0,0,0,5,0),
(2,3,0,'REGISTERED','','',7,'',0,'',0,0,0,0,'',0,0,0,5,0),
(3,3,0,'REGISTERED_COPPA','','',7,'',0,'',0,0,0,0,'',0,0,0,5,0),
(4,3,0,'GLOBAL_MODERATORS','','',7,'',0,'',0,0,0,0,'00AA00',0,0,0,0,1),
(5,3,1,'ADMINISTRATORS','','',7,'',0,'',0,0,0,0,'AA0000',0,0,0,0,1),
(6,3,0,'BOTS','','',7,'',0,'',0,0,0,0,'9E8DA7',0,0,0,5,0);



--
-- Table structure for table `##DBNAME##_icons`
--

DROP TABLE IF EXISTS `##DBNAME##_icons`;


CREATE TABLE `##DBNAME##_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL auto_increment,
  `icons_url` varchar(255) collate utf8_bin NOT NULL default '',
  `icons_width` tinyint(4) NOT NULL default '0',
  `icons_height` tinyint(4) NOT NULL default '0',
  `icons_order` mediumint(8) unsigned NOT NULL default '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`icons_id`),

  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_icons`
--



INSERT INTO `##DBNAME##_icons` VALUES (1,'misc/fire.gif',16,16,1,1),
(2,'smile/redface.gif',16,16,9,1),
(3,'smile/mrgreen.gif',16,16,10,1),
(4,'misc/heart.gif',16,16,4,1),
(5,'misc/star.gif',16,16,2,1),
(6,'misc/radioactive.gif',16,16,3,1),
(7,'misc/thinking.gif',16,16,5,1),
(8,'smile/info.gif',16,16,8,1),
(9,'smile/question.gif',16,16,6,1),
(10,'smile/alert.gif',16,16,7,1);



--
-- Table structure for table `##DBNAME##_lang`
--

DROP TABLE IF EXISTS `##DBNAME##_lang`;


CREATE TABLE `##DBNAME##_lang` (
  `lang_id` tinyint(4) NOT NULL auto_increment,
  `lang_iso` varchar(30) collate utf8_bin NOT NULL default '',
  `lang_dir` varchar(30) collate utf8_bin NOT NULL default '',
  `lang_english_name` varchar(100) collate utf8_bin NOT NULL default '',
  `lang_local_name` varchar(255) collate utf8_bin NOT NULL default '',
  `lang_author` varchar(255) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`lang_id`),

  KEY `lang_iso` (`lang_iso`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_lang`
--



INSERT INTO `##DBNAME##_lang` VALUES (1,'en','en','British English','British English','phpBB Group');



--
-- Table structure for table `##DBNAME##_log`
--

DROP TABLE IF EXISTS `##DBNAME##_log`;


CREATE TABLE `##DBNAME##_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `log_type` tinyint(4) NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `reportee_id` mediumint(8) unsigned NOT NULL default '0',
  `log_ip` varchar(40) collate utf8_bin NOT NULL default '',
  `log_time` int(11) unsigned NOT NULL default '0',
  `log_operation` text collate utf8_bin NOT NULL,
  `log_data` mediumtext collate utf8_bin NOT NULL,
  PRIMARY KEY  (`log_id`),

  KEY `log_type` (`log_type`),

  KEY `forum_id` (`forum_id`),

  KEY `topic_id` (`topic_id`),

  KEY `reportee_id` (`reportee_id`),

  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_log`
--



INSERT INTO `##DBNAME##_log` VALUES (1,2,2,0,0,0,'::1',1252075881,'LOG_ERROR_EMAIL','a:1:{i:0;s:91:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/install/index.php</em><br /><br /><br />\";}'),
(2,0,2,0,0,0,'::1',1252075881,'LOG_INSTALL_INSTALLED','a:1:{i:0;s:5:\"3.0.5\";}');



--
-- Table structure for table `##DBNAME##_moderator_cache`
--

DROP TABLE IF EXISTS `##DBNAME##_moderator_cache`;


CREATE TABLE `##DBNAME##_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(255) collate utf8_bin NOT NULL default '',
  `group_id` mediumint(8) unsigned NOT NULL default '0',
  `group_name` varchar(255) collate utf8_bin NOT NULL default '',
  `display_on_index` tinyint(1) unsigned NOT NULL default '1',
  KEY `disp_idx` (`display_on_index`),

  KEY `forum_id` (`forum_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_moderator_cache`
--






--
-- Table structure for table `##DBNAME##_modules`
--

DROP TABLE IF EXISTS `##DBNAME##_modules`;


CREATE TABLE `##DBNAME##_modules` (
  `module_id` mediumint(8) unsigned NOT NULL auto_increment,
  `module_enabled` tinyint(1) unsigned NOT NULL default '1',
  `module_display` tinyint(1) unsigned NOT NULL default '1',
  `module_basename` varchar(255) collate utf8_bin NOT NULL default '',
  `module_class` varchar(10) collate utf8_bin NOT NULL default '',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `left_id` mediumint(8) unsigned NOT NULL default '0',
  `right_id` mediumint(8) unsigned NOT NULL default '0',
  `module_langname` varchar(255) collate utf8_bin NOT NULL default '',
  `module_mode` varchar(255) collate utf8_bin NOT NULL default '',
  `module_auth` varchar(255) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`module_id`),

  KEY `left_right_id` (`left_id`,`right_id`),

  KEY `module_enabled` (`module_enabled`),

  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_modules`
--



INSERT INTO `##DBNAME##_modules` VALUES (1,1,1,'','acp',0,1,60,'ACP_CAT_GENERAL','',''),
(2,1,1,'','acp',1,4,17,'ACP_QUICK_ACCESS','',''),
(3,1,1,'','acp',1,18,39,'ACP_BOARD_CONFIGURATION','',''),
(4,1,1,'','acp',1,40,47,'ACP_CLIENT_COMMUNICATION','',''),
(5,1,1,'','acp',1,48,59,'ACP_SERVER_CONFIGURATION','',''),
(6,1,1,'','acp',0,61,78,'ACP_CAT_FORUMS','',''),
(7,1,1,'','acp',6,62,67,'ACP_MANAGE_FORUMS','',''),
(8,1,1,'','acp',6,68,77,'ACP_FORUM_BASED_PERMISSIONS','',''),
(9,1,1,'','acp',0,79,102,'ACP_CAT_POSTING','',''),
(10,1,1,'','acp',9,80,91,'ACP_MESSAGES','',''),
(11,1,1,'','acp',9,92,101,'ACP_ATTACHMENTS','',''),
(12,1,1,'','acp',0,103,156,'ACP_CAT_USERGROUP','',''),
(13,1,1,'','acp',12,104,135,'ACP_CAT_USERS','',''),
(14,1,1,'','acp',12,136,143,'ACP_GROUPS','',''),
(15,1,1,'','acp',12,144,155,'ACP_USER_SECURITY','',''),
(16,1,1,'','acp',0,157,204,'ACP_CAT_PERMISSIONS','',''),
(17,1,1,'','acp',16,160,169,'ACP_GLOBAL_PERMISSIONS','',''),
(18,1,1,'','acp',16,170,179,'ACP_FORUM_BASED_PERMISSIONS','',''),
(19,1,1,'','acp',16,180,189,'ACP_PERMISSION_ROLES','',''),
(20,1,1,'','acp',16,190,203,'ACP_PERMISSION_MASKS','',''),
(21,1,1,'','acp',0,205,218,'ACP_CAT_STYLES','',''),
(22,1,1,'','acp',21,206,209,'ACP_STYLE_MANAGEMENT','',''),
(23,1,1,'','acp',21,210,217,'ACP_STYLE_COMPONENTS','',''),
(24,1,1,'','acp',0,219,238,'ACP_CAT_MAINTENANCE','',''),
(25,1,1,'','acp',24,220,229,'ACP_FORUM_LOGS','',''),
(26,1,1,'','acp',24,230,237,'ACP_CAT_DATABASE','',''),
(27,1,1,'','acp',0,239,264,'ACP_CAT_SYSTEM','',''),
(28,1,1,'','acp',27,240,243,'ACP_AUTOMATION','',''),
(29,1,1,'','acp',27,244,255,'ACP_GENERAL_TASKS','',''),
(30,1,1,'','acp',27,256,263,'ACP_MODULE_MANAGEMENT','',''),
(31,1,1,'','acp',0,265,266,'ACP_CAT_DOT_MODS','',''),
(32,1,1,'attachments','acp',3,19,20,'ACP_ATTACHMENT_SETTINGS','attach','acl_a_attach'),
(33,1,1,'attachments','acp',11,93,94,'ACP_ATTACHMENT_SETTINGS','attach','acl_a_attach'),
(34,1,1,'attachments','acp',11,95,96,'ACP_MANAGE_EXTENSIONS','extensions','acl_a_attach'),
(35,1,1,'attachments','acp',11,97,98,'ACP_EXTENSION_GROUPS','ext_groups','acl_a_attach'),
(36,1,1,'attachments','acp',11,99,100,'ACP_ORPHAN_ATTACHMENTS','orphan','acl_a_attach'),
(37,1,1,'ban','acp',15,145,146,'ACP_BAN_EMAILS','email','acl_a_ban'),
(38,1,1,'ban','acp',15,147,148,'ACP_BAN_IPS','ip','acl_a_ban'),
(39,1,1,'ban','acp',15,149,150,'ACP_BAN_USERNAMES','user','acl_a_ban'),
(40,1,1,'bbcodes','acp',10,81,82,'ACP_BBCODES','bbcodes','acl_a_bbcode'),
(41,1,1,'board','acp',3,21,22,'ACP_BOARD_SETTINGS','settings','acl_a_board'),
(42,1,1,'board','acp',3,23,24,'ACP_BOARD_FEATURES','features','acl_a_board'),
(43,1,1,'board','acp',3,25,26,'ACP_AVATAR_SETTINGS','avatar','acl_a_board'),
(44,1,1,'board','acp',3,27,28,'ACP_MESSAGE_SETTINGS','message','acl_a_board'),
(45,1,1,'board','acp',10,83,84,'ACP_MESSAGE_SETTINGS','message','acl_a_board'),
(46,1,1,'board','acp',3,29,30,'ACP_POST_SETTINGS','post','acl_a_board'),
(47,1,1,'board','acp',3,31,32,'ACP_SIGNATURE_SETTINGS','signature','acl_a_board'),
(48,1,1,'board','acp',3,33,34,'ACP_REGISTER_SETTINGS','registration','acl_a_board'),
(49,1,1,'board','acp',4,41,42,'ACP_AUTH_SETTINGS','auth','acl_a_server'),
(50,1,1,'board','acp',4,43,44,'ACP_EMAIL_SETTINGS','email','acl_a_server'),
(51,1,1,'board','acp',5,49,50,'ACP_COOKIE_SETTINGS','cookie','acl_a_server'),
(52,1,1,'board','acp',5,51,52,'ACP_SERVER_SETTINGS','server','acl_a_server'),
(53,1,1,'board','acp',5,53,54,'ACP_SECURITY_SETTINGS','security','acl_a_server'),
(54,1,1,'board','acp',5,55,56,'ACP_LOAD_SETTINGS','load','acl_a_server'),
(55,1,1,'bots','acp',29,245,246,'ACP_BOTS','bots','acl_a_bots'),
(56,1,1,'captcha','acp',3,35,36,'ACP_VC_SETTINGS','visual','acl_a_board'),
(57,1,0,'captcha','acp',3,37,38,'ACP_VC_CAPTCHA_DISPLAY','img','acl_a_board'),
(58,1,1,'database','acp',26,231,232,'ACP_BACKUP','backup','acl_a_backup'),
(59,1,1,'database','acp',26,233,234,'ACP_RESTORE','restore','acl_a_backup'),
(60,1,1,'disallow','acp',15,151,152,'ACP_DISALLOW_USERNAMES','usernames','acl_a_names'),
(61,1,1,'email','acp',29,247,248,'ACP_MASS_EMAIL','email','acl_a_email && cfg_email_enable'),
(62,1,1,'forums','acp',7,63,64,'ACP_MANAGE_FORUMS','manage','acl_a_forum'),
(63,1,1,'groups','acp',14,137,138,'ACP_GROUPS_MANAGE','manage','acl_a_group'),
(64,1,1,'icons','acp',10,85,86,'ACP_ICONS','icons','acl_a_icons'),
(65,1,1,'icons','acp',10,87,88,'ACP_SMILIES','smilies','acl_a_icons'),
(66,1,1,'inactive','acp',13,107,108,'ACP_INACTIVE_USERS','list','acl_a_user'),
(67,1,1,'jabber','acp',4,45,46,'ACP_JABBER_SETTINGS','settings','acl_a_jabber'),
(68,1,1,'language','acp',29,249,250,'ACP_LANGUAGE_PACKS','lang_packs','acl_a_language'),
(69,1,1,'logs','acp',25,221,222,'ACP_ADMIN_LOGS','admin','acl_a_viewlogs'),
(70,1,1,'logs','acp',25,223,224,'ACP_MOD_LOGS','mod','acl_a_viewlogs'),
(71,1,1,'logs','acp',25,225,226,'ACP_USERS_LOGS','users','acl_a_viewlogs'),
(72,1,1,'logs','acp',25,227,228,'ACP_CRITICAL_LOGS','critical','acl_a_viewlogs'),
(73,1,1,'main','acp',1,2,3,'ACP_INDEX','main',''),
(74,1,1,'modules','acp',30,257,258,'ACP','acp','acl_a_modules'),
(75,1,1,'modules','acp',30,259,260,'UCP','ucp','acl_a_modules'),
(76,1,1,'modules','acp',30,261,262,'MCP','mcp','acl_a_modules'),
(77,1,1,'permission_roles','acp',19,181,182,'ACP_ADMIN_ROLES','admin_roles','acl_a_roles && acl_a_aauth'),
(78,1,1,'permission_roles','acp',19,183,184,'ACP_USER_ROLES','user_roles','acl_a_roles && acl_a_uauth'),
(79,1,1,'permission_roles','acp',19,185,186,'ACP_MOD_ROLES','mod_roles','acl_a_roles && acl_a_mauth'),
(80,1,1,'permission_roles','acp',19,187,188,'ACP_FORUM_ROLES','forum_roles','acl_a_roles && acl_a_fauth'),
(81,1,1,'permissions','acp',16,158,159,'ACP_PERMISSIONS','intro','acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(82,1,0,'permissions','acp',20,191,192,'ACP_PERMISSION_TRACE','trace','acl_a_viewauth'),
(83,1,1,'permissions','acp',18,171,172,'ACP_FORUM_PERMISSIONS','setting_forum_local','acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(84,1,1,'permissions','acp',18,173,174,'ACP_FORUM_MODERATORS','setting_mod_local','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(85,1,1,'permissions','acp',17,161,162,'ACP_USERS_PERMISSIONS','setting_user_global','acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(86,1,1,'permissions','acp',13,109,110,'ACP_USERS_PERMISSIONS','setting_user_global','acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(87,1,1,'permissions','acp',18,175,176,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(88,1,1,'permissions','acp',13,111,112,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(89,1,1,'permissions','acp',17,163,164,'ACP_GROUPS_PERMISSIONS','setting_group_global','acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(90,1,1,'permissions','acp',14,139,140,'ACP_GROUPS_PERMISSIONS','setting_group_global','acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(91,1,1,'permissions','acp',18,177,178,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(92,1,1,'permissions','acp',14,141,142,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(93,1,1,'permissions','acp',17,165,166,'ACP_ADMINISTRATORS','setting_admin_global','acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(94,1,1,'permissions','acp',17,167,168,'ACP_GLOBAL_MODERATORS','setting_mod_global','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(95,1,1,'permissions','acp',20,193,194,'ACP_VIEW_ADMIN_PERMISSIONS','view_admin_global','acl_a_viewauth'),
(96,1,1,'permissions','acp',20,195,196,'ACP_VIEW_USER_PERMISSIONS','view_user_global','acl_a_viewauth'),
(97,1,1,'permissions','acp',20,197,198,'ACP_VIEW_GLOBAL_MOD_PERMISSIONS','view_mod_global','acl_a_viewauth'),
(98,1,1,'permissions','acp',20,199,200,'ACP_VIEW_FORUM_MOD_PERMISSIONS','view_mod_local','acl_a_viewauth'),
(99,1,1,'permissions','acp',20,201,202,'ACP_VIEW_FORUM_PERMISSIONS','view_forum_local','acl_a_viewauth'),
(100,1,1,'php_info','acp',29,251,252,'ACP_PHP_INFO','info','acl_a_phpinfo'),
(101,1,1,'profile','acp',13,113,114,'ACP_CUSTOM_PROFILE_FIELDS','profile','acl_a_profile'),
(102,1,1,'prune','acp',7,65,66,'ACP_PRUNE_FORUMS','forums','acl_a_prune'),
(103,1,1,'prune','acp',15,153,154,'ACP_PRUNE_USERS','users','acl_a_userdel'),
(104,1,1,'ranks','acp',13,115,116,'ACP_MANAGE_RANKS','ranks','acl_a_ranks'),
(105,1,1,'reasons','acp',29,253,254,'ACP_MANAGE_REASONS','main','acl_a_reasons'),
(106,1,1,'search','acp',5,57,58,'ACP_SEARCH_SETTINGS','settings','acl_a_search'),
(107,1,1,'search','acp',26,235,236,'ACP_SEARCH_INDEX','index','acl_a_search'),
(108,1,1,'styles','acp',22,207,208,'ACP_STYLES','style','acl_a_styles'),
(109,1,1,'styles','acp',23,211,212,'ACP_TEMPLATES','template','acl_a_styles'),
(110,1,1,'styles','acp',23,213,214,'ACP_THEMES','theme','acl_a_styles'),
(111,1,1,'styles','acp',23,215,216,'ACP_IMAGESETS','imageset','acl_a_styles'),
(112,1,1,'update','acp',28,241,242,'ACP_VERSION_CHECK','version_check','acl_a_board'),
(113,1,1,'users','acp',13,105,106,'ACP_MANAGE_USERS','overview','acl_a_user'),
(114,1,0,'users','acp',13,117,118,'ACP_USER_FEEDBACK','feedback','acl_a_user'),
(115,1,0,'users','acp',13,119,120,'ACP_USER_PROFILE','profile','acl_a_user'),
(116,1,0,'users','acp',13,121,122,'ACP_USER_PREFS','prefs','acl_a_user'),
(117,1,0,'users','acp',13,123,124,'ACP_USER_AVATAR','avatar','acl_a_user'),
(118,1,0,'users','acp',13,125,126,'ACP_USER_RANK','rank','acl_a_user'),
(119,1,0,'users','acp',13,127,128,'ACP_USER_SIG','sig','acl_a_user'),
(120,1,0,'users','acp',13,129,130,'ACP_USER_GROUPS','groups','acl_a_user && acl_a_group'),
(121,1,0,'users','acp',13,131,132,'ACP_USER_PERM','perm','acl_a_user && acl_a_viewauth'),
(122,1,0,'users','acp',13,133,134,'ACP_USER_ATTACH','attach','acl_a_user'),
(123,1,1,'words','acp',10,89,90,'ACP_WORDS','words','acl_a_words'),
(124,1,1,'users','acp',2,5,6,'ACP_MANAGE_USERS','overview','acl_a_user'),
(125,1,1,'groups','acp',2,7,8,'ACP_GROUPS_MANAGE','manage','acl_a_group'),
(126,1,1,'forums','acp',2,9,10,'ACP_MANAGE_FORUMS','manage','acl_a_forum'),
(127,1,1,'logs','acp',2,11,12,'ACP_MOD_LOGS','mod','acl_a_viewlogs'),
(128,1,1,'bots','acp',2,13,14,'ACP_BOTS','bots','acl_a_bots'),
(129,1,1,'php_info','acp',2,15,16,'ACP_PHP_INFO','info','acl_a_phpinfo'),
(130,1,1,'permissions','acp',8,69,70,'ACP_FORUM_PERMISSIONS','setting_forum_local','acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(131,1,1,'permissions','acp',8,71,72,'ACP_FORUM_MODERATORS','setting_mod_local','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(132,1,1,'permissions','acp',8,73,74,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(133,1,1,'permissions','acp',8,75,76,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(134,1,1,'','mcp',0,1,10,'MCP_MAIN','',''),
(135,1,1,'','mcp',0,11,18,'MCP_QUEUE','',''),
(136,1,1,'','mcp',0,19,26,'MCP_REPORTS','',''),
(137,1,1,'','mcp',0,27,32,'MCP_NOTES','',''),
(138,1,1,'','mcp',0,33,42,'MCP_WARN','',''),
(139,1,1,'','mcp',0,43,50,'MCP_LOGS','',''),
(140,1,1,'','mcp',0,51,58,'MCP_BAN','',''),
(141,1,1,'ban','mcp',140,52,53,'MCP_BAN_USERNAMES','user','acl_m_ban'),
(142,1,1,'ban','mcp',140,54,55,'MCP_BAN_IPS','ip','acl_m_ban'),
(143,1,1,'ban','mcp',140,56,57,'MCP_BAN_EMAILS','email','acl_m_ban'),
(144,1,1,'logs','mcp',139,44,45,'MCP_LOGS_FRONT','front','acl_m_ || aclf_m_'),
(145,1,1,'logs','mcp',139,46,47,'MCP_LOGS_FORUM_VIEW','forum_logs','acl_m_,$id'),
(146,1,1,'logs','mcp',139,48,49,'MCP_LOGS_TOPIC_VIEW','topic_logs','acl_m_,$id'),
(147,1,1,'main','mcp',134,2,3,'MCP_MAIN_FRONT','front',''),
(148,1,1,'main','mcp',134,4,5,'MCP_MAIN_FORUM_VIEW','forum_view','acl_m_,$id'),
(149,1,1,'main','mcp',134,6,7,'MCP_MAIN_TOPIC_VIEW','topic_view','acl_m_,$id'),
(150,1,1,'main','mcp',134,8,9,'MCP_MAIN_POST_DETAILS','post_details','acl_m_,$id || (!$id && aclf_m_)'),
(151,1,1,'notes','mcp',137,28,29,'MCP_NOTES_FRONT','front',''),
(152,1,1,'notes','mcp',137,30,31,'MCP_NOTES_USER','user_notes',''),
(153,1,1,'queue','mcp',135,12,13,'MCP_QUEUE_UNAPPROVED_TOPICS','unapproved_topics','aclf_m_approve'),
(154,1,1,'queue','mcp',135,14,15,'MCP_QUEUE_UNAPPROVED_POSTS','unapproved_posts','aclf_m_approve'),
(155,1,1,'queue','mcp',135,16,17,'MCP_QUEUE_APPROVE_DETAILS','approve_details','acl_m_approve,$id || (!$id && aclf_m_approve)'),
(156,1,1,'reports','mcp',136,20,21,'MCP_REPORTS_OPEN','reports','aclf_m_report'),
(157,1,1,'reports','mcp',136,22,23,'MCP_REPORTS_CLOSED','reports_closed','aclf_m_report'),
(158,1,1,'reports','mcp',136,24,25,'MCP_REPORT_DETAILS','report_details','acl_m_report,$id || (!$id && aclf_m_report)'),
(159,1,1,'warn','mcp',138,34,35,'MCP_WARN_FRONT','front','aclf_m_warn'),
(160,1,1,'warn','mcp',138,36,37,'MCP_WARN_LIST','list','aclf_m_warn'),
(161,1,1,'warn','mcp',138,38,39,'MCP_WARN_USER','warn_user','aclf_m_warn'),
(162,1,1,'warn','mcp',138,40,41,'MCP_WARN_POST','warn_post','acl_m_warn && acl_f_read,$id'),
(163,1,1,'','ucp',0,1,12,'UCP_MAIN','',''),
(164,1,1,'','ucp',0,13,22,'UCP_PROFILE','',''),
(165,1,1,'','ucp',0,23,30,'UCP_PREFS','',''),
(166,1,1,'','ucp',0,31,42,'UCP_PM','',''),
(167,1,1,'','ucp',0,43,48,'UCP_USERGROUPS','',''),
(168,1,1,'','ucp',0,49,54,'UCP_ZEBRA','',''),
(169,1,1,'attachments','ucp',163,10,11,'UCP_MAIN_ATTACHMENTS','attachments','acl_u_attach'),
(170,1,1,'groups','ucp',167,44,45,'UCP_USERGROUPS_MEMBER','membership',''),
(171,1,1,'groups','ucp',167,46,47,'UCP_USERGROUPS_MANAGE','manage',''),
(172,1,1,'main','ucp',163,2,3,'UCP_MAIN_FRONT','front',''),
(173,1,1,'main','ucp',163,4,5,'UCP_MAIN_SUBSCRIBED','subscribed',''),
(174,1,1,'main','ucp',163,6,7,'UCP_MAIN_BOOKMARKS','bookmarks','cfg_allow_bookmarks'),
(175,1,1,'main','ucp',163,8,9,'UCP_MAIN_DRAFTS','drafts',''),
(176,1,0,'pm','ucp',166,32,33,'UCP_PM_VIEW','view','cfg_allow_privmsg'),
(177,1,1,'pm','ucp',166,34,35,'UCP_PM_COMPOSE','compose','cfg_allow_privmsg'),
(178,1,1,'pm','ucp',166,36,37,'UCP_PM_DRAFTS','drafts','cfg_allow_privmsg'),
(179,1,1,'pm','ucp',166,38,39,'UCP_PM_OPTIONS','options','cfg_allow_privmsg'),
(180,1,0,'pm','ucp',166,40,41,'UCP_PM_POPUP_TITLE','popup','cfg_allow_privmsg'),
(181,1,1,'prefs','ucp',165,24,25,'UCP_PREFS_PERSONAL','personal',''),
(182,1,1,'prefs','ucp',165,26,27,'UCP_PREFS_POST','post',''),
(183,1,1,'prefs','ucp',165,28,29,'UCP_PREFS_VIEW','view',''),
(184,1,1,'profile','ucp',164,14,15,'UCP_PROFILE_PROFILE_INFO','profile_info',''),
(185,1,1,'profile','ucp',164,16,17,'UCP_PROFILE_SIGNATURE','signature',''),
(186,1,1,'profile','ucp',164,18,19,'UCP_PROFILE_AVATAR','avatar',''),
(187,1,1,'profile','ucp',164,20,21,'UCP_PROFILE_REG_DETAILS','reg_details',''),
(188,1,1,'zebra','ucp',168,50,51,'UCP_ZEBRA_FRIENDS','friends',''),
(189,1,1,'zebra','ucp',168,52,53,'UCP_ZEBRA_FOES','foes','');



--
-- Table structure for table `##DBNAME##_poll_options`
--

DROP TABLE IF EXISTS `##DBNAME##_poll_options`;


CREATE TABLE `##DBNAME##_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL default '0',
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `poll_option_text` text collate utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL default '0',
  KEY `poll_opt_id` (`poll_option_id`),

  KEY `topic_id` (`topic_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_poll_options`
--






--
-- Table structure for table `##DBNAME##_poll_votes`
--

DROP TABLE IF EXISTS `##DBNAME##_poll_votes`;


CREATE TABLE `##DBNAME##_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `poll_option_id` tinyint(4) NOT NULL default '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL default '0',
  `vote_user_ip` varchar(40) collate utf8_bin NOT NULL default '',
  KEY `topic_id` (`topic_id`),

  KEY `vote_user_id` (`vote_user_id`),

  KEY `vote_user_ip` (`vote_user_ip`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_poll_votes`
--






--
-- Table structure for table `##DBNAME##_posts`
--

DROP TABLE IF EXISTS `##DBNAME##_posts`;


CREATE TABLE `##DBNAME##_posts` (
  `post_id` mediumint(8) unsigned NOT NULL auto_increment,
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_id` mediumint(8) unsigned NOT NULL default '0',
  `poster_id` mediumint(8) unsigned NOT NULL default '0',
  `icon_id` mediumint(8) unsigned NOT NULL default '0',
  `poster_ip` varchar(40) collate utf8_bin NOT NULL default '',
  `post_time` int(11) unsigned NOT NULL default '0',
  `post_approved` tinyint(1) unsigned NOT NULL default '1',
  `post_reported` tinyint(1) unsigned NOT NULL default '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL default '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL default '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL default '1',
  `enable_sig` tinyint(1) unsigned NOT NULL default '1',
  `post_username` varchar(255) collate utf8_bin NOT NULL default '',
  `post_subject` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `post_text` mediumtext collate utf8_bin NOT NULL,
  `post_checksum` varchar(32) collate utf8_bin NOT NULL default '',
  `post_attachment` tinyint(1) unsigned NOT NULL default '0',
  `bbcode_bitfield` varchar(255) collate utf8_bin NOT NULL default '',
  `bbcode_uid` varchar(8) collate utf8_bin NOT NULL default '',
  `post_postcount` tinyint(1) unsigned NOT NULL default '1',
  `post_edit_time` int(11) unsigned NOT NULL default '0',
  `post_edit_reason` varchar(255) collate utf8_bin NOT NULL default '',
  `post_edit_user` mediumint(8) unsigned NOT NULL default '0',
  `post_edit_count` smallint(4) unsigned NOT NULL default '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`post_id`),

  KEY `forum_id` (`forum_id`),

  KEY `topic_id` (`topic_id`),

  KEY `poster_ip` (`poster_ip`),

  KEY `poster_id` (`poster_id`),

  KEY `post_approved` (`post_approved`),

  KEY `tid_post_time` (`topic_id`,`post_time`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_posts`
--



INSERT INTO `##DBNAME##_posts` VALUES (1,1,2,2,0,'::1',1252075878,1,0,1,1,1,1,'','Welcome to phpBB3','This is an example post in your phpBB3 installation. Everything seems to be working. You may delete this post if you like and continue to set up your board. During the installation process your first category and your first forum are assigned an appropriate set of permissions for the predefined usergroups administrators, bots, global moderators, guests, registered users and registered COPPA users. If you also choose to delete your first category and your first forum, do not forget to assign permissions for all these usergroups for all new categories and forums you create. It is recommended to rename your first category and your first forum and copy permissions from these while creating new categories and forums. Have fun!','5dd683b17f641daf84c040bfefc58ce9',0,'','',1,0,'',0,0,0);



--
-- Table structure for table `##DBNAME##_privmsgs`
--

DROP TABLE IF EXISTS `##DBNAME##_privmsgs`;


CREATE TABLE `##DBNAME##_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL auto_increment,
  `root_level` mediumint(8) unsigned NOT NULL default '0',
  `author_id` mediumint(8) unsigned NOT NULL default '0',
  `icon_id` mediumint(8) unsigned NOT NULL default '0',
  `author_ip` varchar(40) collate utf8_bin NOT NULL default '',
  `message_time` int(11) unsigned NOT NULL default '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL default '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL default '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL default '1',
  `enable_sig` tinyint(1) unsigned NOT NULL default '1',
  `message_subject` varchar(255) collate utf8_bin NOT NULL default '',
  `message_text` mediumtext collate utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) collate utf8_bin NOT NULL default '',
  `message_edit_user` mediumint(8) unsigned NOT NULL default '0',
  `message_attachment` tinyint(1) unsigned NOT NULL default '0',
  `bbcode_bitfield` varchar(255) collate utf8_bin NOT NULL default '',
  `bbcode_uid` varchar(8) collate utf8_bin NOT NULL default '',
  `message_edit_time` int(11) unsigned NOT NULL default '0',
  `message_edit_count` smallint(4) unsigned NOT NULL default '0',
  `to_address` text collate utf8_bin NOT NULL,
  `bcc_address` text collate utf8_bin NOT NULL,
  PRIMARY KEY  (`msg_id`),

  KEY `author_ip` (`author_ip`),

  KEY `message_time` (`message_time`),

  KEY `author_id` (`author_id`),

  KEY `root_level` (`root_level`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_privmsgs`
--






--
-- Table structure for table `##DBNAME##_privmsgs_folder`
--

DROP TABLE IF EXISTS `##DBNAME##_privmsgs_folder`;


CREATE TABLE `##DBNAME##_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `folder_name` varchar(255) collate utf8_bin NOT NULL default '',
  `pm_count` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`folder_id`),

  KEY `user_id` (`user_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_privmsgs_folder`
--






--
-- Table structure for table `##DBNAME##_privmsgs_rules`
--

DROP TABLE IF EXISTS `##DBNAME##_privmsgs_rules`;


CREATE TABLE `##DBNAME##_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `rule_check` mediumint(8) unsigned NOT NULL default '0',
  `rule_connection` mediumint(8) unsigned NOT NULL default '0',
  `rule_string` varchar(255) collate utf8_bin NOT NULL default '',
  `rule_user_id` mediumint(8) unsigned NOT NULL default '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL default '0',
  `rule_action` mediumint(8) unsigned NOT NULL default '0',
  `rule_folder_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`rule_id`),

  KEY `user_id` (`user_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_privmsgs_rules`
--






--
-- Table structure for table `##DBNAME##_privmsgs_to`
--

DROP TABLE IF EXISTS `##DBNAME##_privmsgs_to`;


CREATE TABLE `##DBNAME##_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `author_id` mediumint(8) unsigned NOT NULL default '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL default '0',
  `pm_new` tinyint(1) unsigned NOT NULL default '1',
  `pm_unread` tinyint(1) unsigned NOT NULL default '1',
  `pm_replied` tinyint(1) unsigned NOT NULL default '0',
  `pm_marked` tinyint(1) unsigned NOT NULL default '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL default '0',
  `folder_id` int(11) NOT NULL default '0',
  KEY `msg_id` (`msg_id`),

  KEY `author_id` (`author_id`),

  KEY `usr_flder_id` (`user_id`,`folder_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_privmsgs_to`
--






--
-- Table structure for table `##DBNAME##_profile_fields`
--

DROP TABLE IF EXISTS `##DBNAME##_profile_fields`;


CREATE TABLE `##DBNAME##_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL auto_increment,
  `field_name` varchar(255) collate utf8_bin NOT NULL default '',
  `field_type` tinyint(4) NOT NULL default '0',
  `field_ident` varchar(20) collate utf8_bin NOT NULL default '',
  `field_length` varchar(20) collate utf8_bin NOT NULL default '',
  `field_minlen` varchar(255) collate utf8_bin NOT NULL default '',
  `field_maxlen` varchar(255) collate utf8_bin NOT NULL default '',
  `field_novalue` varchar(255) collate utf8_bin NOT NULL default '',
  `field_default_value` varchar(255) collate utf8_bin NOT NULL default '',
  `field_validation` varchar(20) collate utf8_bin NOT NULL default '',
  `field_required` tinyint(1) unsigned NOT NULL default '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL default '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL default '0',
  `field_hide` tinyint(1) unsigned NOT NULL default '0',
  `field_no_view` tinyint(1) unsigned NOT NULL default '0',
  `field_active` tinyint(1) unsigned NOT NULL default '0',
  `field_order` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`field_id`),

  KEY `fld_type` (`field_type`),

  KEY `fld_ordr` (`field_order`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_profile_fields`
--






--
-- Table structure for table `##DBNAME##_profile_fields_data`
--

DROP TABLE IF EXISTS `##DBNAME##_profile_fields_data`;


CREATE TABLE `##DBNAME##_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`user_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_profile_fields_data`
--






--
-- Table structure for table `##DBNAME##_profile_fields_lang`
--

DROP TABLE IF EXISTS `##DBNAME##_profile_fields_lang`;


CREATE TABLE `##DBNAME##_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL default '0',
  `lang_id` mediumint(8) unsigned NOT NULL default '0',
  `option_id` mediumint(8) unsigned NOT NULL default '0',
  `field_type` tinyint(4) NOT NULL default '0',
  `lang_value` varchar(255) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`field_id`,`lang_id`,`option_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_profile_fields_lang`
--






--
-- Table structure for table `##DBNAME##_profile_lang`
--

DROP TABLE IF EXISTS `##DBNAME##_profile_lang`;


CREATE TABLE `##DBNAME##_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL default '0',
  `lang_id` mediumint(8) unsigned NOT NULL default '0',
  `lang_name` varchar(255) collate utf8_bin NOT NULL default '',
  `lang_explain` text collate utf8_bin NOT NULL,
  `lang_default_value` varchar(255) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`field_id`,`lang_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_profile_lang`
--






--
-- Table structure for table `##DBNAME##_ranks`
--

DROP TABLE IF EXISTS `##DBNAME##_ranks`;


CREATE TABLE `##DBNAME##_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL auto_increment,
  `rank_title` varchar(255) collate utf8_bin NOT NULL default '',
  `rank_min` mediumint(8) unsigned NOT NULL default '0',
  `rank_special` tinyint(1) unsigned NOT NULL default '0',
  `rank_image` varchar(255) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_ranks`
--



INSERT INTO `##DBNAME##_ranks` VALUES (1,'Site Admin',0,1,'');



--
-- Table structure for table `##DBNAME##_reports`
--

DROP TABLE IF EXISTS `##DBNAME##_reports`;


CREATE TABLE `##DBNAME##_reports` (
  `report_id` mediumint(8) unsigned NOT NULL auto_increment,
  `reason_id` smallint(4) unsigned NOT NULL default '0',
  `post_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `user_notify` tinyint(1) unsigned NOT NULL default '0',
  `report_closed` tinyint(1) unsigned NOT NULL default '0',
  `report_time` int(11) unsigned NOT NULL default '0',
  `report_text` mediumtext collate utf8_bin NOT NULL,
  PRIMARY KEY  (`report_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_reports`
--






--
-- Table structure for table `##DBNAME##_reports_reasons`
--

DROP TABLE IF EXISTS `##DBNAME##_reports_reasons`;


CREATE TABLE `##DBNAME##_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL auto_increment,
  `reason_title` varchar(255) collate utf8_bin NOT NULL default '',
  `reason_description` mediumtext collate utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`reason_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_reports_reasons`
--



INSERT INTO `##DBNAME##_reports_reasons` VALUES (1,'warez','The post contains links to illegal or pirated software.',1),
(2,'spam','The reported post has the only purpose to advertise for a website or another product.',2),
(3,'off_topic','The reported post is off topic.',3),
(4,'other','The reported post does not fit into any other category, please use the further information field.',4);



--
-- Table structure for table `##DBNAME##_search_results`
--

DROP TABLE IF EXISTS `##DBNAME##_search_results`;


CREATE TABLE `##DBNAME##_search_results` (
  `search_key` varchar(32) collate utf8_bin NOT NULL default '',
  `search_time` int(11) unsigned NOT NULL default '0',
  `search_keywords` mediumtext collate utf8_bin NOT NULL,
  `search_authors` mediumtext collate utf8_bin NOT NULL,
  PRIMARY KEY  (`search_key`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_search_results`
--






--
-- Table structure for table `##DBNAME##_search_wordlist`
--

DROP TABLE IF EXISTS `##DBNAME##_search_wordlist`;


CREATE TABLE `##DBNAME##_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL auto_increment,
  `word_text` varchar(255) collate utf8_bin NOT NULL default '',
  `word_common` tinyint(1) unsigned NOT NULL default '0',
  `word_count` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`word_id`),

  UNIQUE KEY `wrd_txt` (`word_text`),

  KEY `wrd_cnt` (`word_count`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_search_wordlist`
--



INSERT INTO `##DBNAME##_search_wordlist` VALUES (1,'this',0,1),
(2,'example',0,1),
(3,'post',0,1),
(4,'your',0,1),
(5,'phpbb3',0,2),
(6,'installation',0,1),
(7,'everything',0,1),
(8,'seems',0,1),
(9,'working',0,1),
(10,'you',0,1),
(11,'may',0,1),
(12,'delete',0,1),
(13,'like',0,1),
(14,'and',0,1),
(15,'continue',0,1),
(16,'set',0,1),
(17,'board',0,1),
(18,'during',0,1),
(19,'the',0,1),
(20,'process',0,1),
(21,'first',0,1),
(22,'category',0,1),
(23,'forum',0,1),
(24,'are',0,1),
(25,'assigned',0,1),
(26,'appropriate',0,1),
(27,'permissions',0,1),
(28,'for',0,1),
(29,'predefined',0,1),
(30,'usergroups',0,1),
(31,'administrators',0,1),
(32,'bots',0,1),
(33,'global',0,1),
(34,'moderators',0,1),
(35,'guests',0,1),
(36,'registered',0,1),
(37,'users',0,1),
(38,'coppa',0,1),
(39,'also',0,1),
(40,'choose',0,1),
(41,'not',0,1),
(42,'forget',0,1),
(43,'assign',0,1),
(44,'all',0,1),
(45,'these',0,1),
(46,'new',0,1),
(47,'categories',0,1),
(48,'forums',0,1),
(49,'create',0,1),
(50,'recommended',0,1),
(51,'rename',0,1),
(52,'copy',0,1),
(53,'from',0,1),
(54,'while',0,1),
(55,'creating',0,1),
(56,'have',0,1),
(57,'fun',0,1),
(58,'welcome',0,1);



--
-- Table structure for table `##DBNAME##_search_wordmatch`
--

DROP TABLE IF EXISTS `##DBNAME##_search_wordmatch`;


CREATE TABLE `##DBNAME##_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL default '0',
  `word_id` mediumint(8) unsigned NOT NULL default '0',
  `title_match` tinyint(1) unsigned NOT NULL default '0',
  UNIQUE KEY `unq_mtch` (`word_id`,`post_id`,`title_match`),

  KEY `word_id` (`word_id`),

  KEY `post_id` (`post_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_search_wordmatch`
--



INSERT INTO `##DBNAME##_search_wordmatch` VALUES (1,1,0),
(1,2,0),
(1,3,0),
(1,4,0),
(1,5,0),
(1,5,1),
(1,6,0),
(1,7,0),
(1,8,0),
(1,9,0),
(1,10,0),
(1,11,0),
(1,12,0),
(1,13,0),
(1,14,0),
(1,15,0),
(1,16,0),
(1,17,0),
(1,18,0),
(1,19,0),
(1,20,0),
(1,21,0),
(1,22,0),
(1,23,0),
(1,24,0),
(1,25,0),
(1,26,0),
(1,27,0),
(1,28,0),
(1,29,0),
(1,30,0),
(1,31,0),
(1,32,0),
(1,33,0),
(1,34,0),
(1,35,0),
(1,36,0),
(1,37,0),
(1,38,0),
(1,39,0),
(1,40,0),
(1,41,0),
(1,42,0),
(1,43,0),
(1,44,0),
(1,45,0),
(1,46,0),
(1,47,0),
(1,48,0),
(1,49,0),
(1,50,0),
(1,51,0),
(1,52,0),
(1,53,0),
(1,54,0),
(1,55,0),
(1,56,0),
(1,57,0),
(1,58,1);



--
-- Table structure for table `##DBNAME##_sessions`
--

DROP TABLE IF EXISTS `##DBNAME##_sessions`;


CREATE TABLE `##DBNAME##_sessions` (
  `session_id` char(32) collate utf8_bin NOT NULL default '',
  `session_user_id` mediumint(8) unsigned NOT NULL default '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL default '0',
  `session_last_visit` int(11) unsigned NOT NULL default '0',
  `session_start` int(11) unsigned NOT NULL default '0',
  `session_time` int(11) unsigned NOT NULL default '0',
  `session_ip` varchar(40) collate utf8_bin NOT NULL default '',
  `session_browser` varchar(150) collate utf8_bin NOT NULL default '',
  `session_forwarded_for` varchar(255) collate utf8_bin NOT NULL default '',
  `session_page` varchar(255) collate utf8_bin NOT NULL default '',
  `session_viewonline` tinyint(1) unsigned NOT NULL default '1',
  `session_autologin` tinyint(1) unsigned NOT NULL default '0',
  `session_admin` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`session_id`),

  KEY `session_time` (`session_time`),

  KEY `session_user_id` (`session_user_id`),

  KEY `session_fid` (`session_forum_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_sessions`
--



INSERT INTO `##DBNAME##_sessions` VALUES ('f40c33a5bef967134139903b92227764',1,0,1252075881,1252075881,1252075881,'::1','Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/2009033100 Ubuntu/9.04 (jaunty) Firefox/3.0.8','','install/index.php?mode=install&sub=final',1,0,0),
('8eb0e937bd4ab785093d0c1037d6d1b5',2,0,1252075881,1252075881,1252075891,'::1','Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/2009033100 Ubuntu/9.04 (jaunty) Firefox/3.0.8','','adm/index.php',1,0,1);



--
-- Table structure for table `##DBNAME##_sessions_keys`
--

DROP TABLE IF EXISTS `##DBNAME##_sessions_keys`;


CREATE TABLE `##DBNAME##_sessions_keys` (
  `key_id` char(32) collate utf8_bin NOT NULL default '',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `last_ip` varchar(40) collate utf8_bin NOT NULL default '',
  `last_login` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`key_id`,`user_id`),

  KEY `last_login` (`last_login`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_sessions_keys`
--






--
-- Table structure for table `##DBNAME##_sitelist`
--

DROP TABLE IF EXISTS `##DBNAME##_sitelist`;


CREATE TABLE `##DBNAME##_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL auto_increment,
  `site_ip` varchar(40) collate utf8_bin NOT NULL default '',
  `site_hostname` varchar(255) collate utf8_bin NOT NULL default '',
  `ip_exclude` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`site_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_sitelist`
--






--
-- Table structure for table `##DBNAME##_smilies`
--

DROP TABLE IF EXISTS `##DBNAME##_smilies`;


CREATE TABLE `##DBNAME##_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL auto_increment,
  `code` varchar(50) collate utf8_bin NOT NULL default '',
  `emotion` varchar(50) collate utf8_bin NOT NULL default '',
  `smiley_url` varchar(50) collate utf8_bin NOT NULL default '',
  `smiley_width` smallint(4) unsigned NOT NULL default '0',
  `smiley_height` smallint(4) unsigned NOT NULL default '0',
  `smiley_order` mediumint(8) unsigned NOT NULL default '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`smiley_id`),

  KEY `display_on_post` (`display_on_posting`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_smilies`
--



INSERT INTO `##DBNAME##_smilies` VALUES (1,':D','Very Happy','icon_e_biggrin.gif',15,17,1,1),
(2,':-D','Very Happy','icon_e_biggrin.gif',15,17,2,1),
(3,':grin:','Very Happy','icon_e_biggrin.gif',15,17,3,1),
(4,':)','Smile','icon_e_smile.gif',15,17,4,1),
(5,':-)','Smile','icon_e_smile.gif',15,17,5,1),
(6,':smile:','Smile','icon_e_smile.gif',15,17,6,1),
(7,';)','Wink','icon_e_wink.gif',15,17,7,1),
(8,';-)','Wink','icon_e_wink.gif',15,17,8,1),
(9,':wink:','Wink','icon_e_wink.gif',15,17,9,1),
(10,':(','Sad','icon_e_sad.gif',15,17,10,1),
(11,':-(','Sad','icon_e_sad.gif',15,17,11,1),
(12,':sad:','Sad','icon_e_sad.gif',15,17,12,1),
(13,':o','Surprised','icon_e_surprised.gif',15,17,13,1),
(14,':-o','Surprised','icon_e_surprised.gif',15,17,14,1),
(15,':eek:','Surprised','icon_e_surprised.gif',15,17,15,1),
(16,':shock:','Shocked','icon_eek.gif',15,17,16,1),
(17,':?','Confused','icon_e_confused.gif',15,17,17,1),
(18,':-?','Confused','icon_e_confused.gif',15,17,18,1),
(19,':???:','Confused','icon_e_confused.gif',15,17,19,1),
(20,'8-)','Cool','icon_cool.gif',15,17,20,1),
(21,':cool:','Cool','icon_cool.gif',15,17,21,1),
(22,':lol:','Laughing','icon_lol.gif',15,17,22,1),
(23,':x','Mad','icon_mad.gif',15,17,23,1),
(24,':-x','Mad','icon_mad.gif',15,17,24,1),
(25,':mad:','Mad','icon_mad.gif',15,17,25,1),
(26,':P','Razz','icon_razz.gif',15,17,26,1),
(27,':-P','Razz','icon_razz.gif',15,17,27,1),
(28,':razz:','Razz','icon_razz.gif',15,17,28,1),
(29,':oops:','Embarrassed','icon_redface.gif',15,17,29,1),
(30,':cry:','Crying or Very Sad','icon_cry.gif',15,17,30,1),
(31,':evil:','Evil or Very Mad','icon_evil.gif',15,17,31,1),
(32,':twisted:','Twisted Evil','icon_twisted.gif',15,17,32,1),
(33,':roll:','Rolling Eyes','icon_rolleyes.gif',15,17,33,1),
(34,':!:','Exclamation','icon_exclaim.gif',15,17,34,1),
(35,':?:','Question','icon_question.gif',15,17,35,1),
(36,':idea:','Idea','icon_idea.gif',15,17,36,1),
(37,':arrow:','Arrow','icon_arrow.gif',15,17,37,1),
(38,':|','Neutral','icon_neutral.gif',15,17,38,1),
(39,':-|','Neutral','icon_neutral.gif',15,17,39,1),
(40,':mrgreen:','Mr. Green','icon_mrgreen.gif',15,17,40,1),
(41,':geek:','Geek','icon_e_geek.gif',17,17,41,1),
(42,':ugeek:','Uber Geek','icon_e_ugeek.gif',17,18,42,1);



--
-- Table structure for table `##DBNAME##_styles`
--

DROP TABLE IF EXISTS `##DBNAME##_styles`;


CREATE TABLE `##DBNAME##_styles` (
  `style_id` mediumint(8) unsigned NOT NULL auto_increment,
  `style_name` varchar(255) collate utf8_bin NOT NULL default '',
  `style_copyright` varchar(255) collate utf8_bin NOT NULL default '',
  `style_active` tinyint(1) unsigned NOT NULL default '1',
  `template_id` mediumint(8) unsigned NOT NULL default '0',
  `theme_id` mediumint(8) unsigned NOT NULL default '0',
  `imageset_id` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`style_id`),

  UNIQUE KEY `style_name` (`style_name`),

  KEY `template_id` (`template_id`),

  KEY `theme_id` (`theme_id`),

  KEY `imageset_id` (`imageset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_styles`
--



INSERT INTO `##DBNAME##_styles` VALUES (1,'prosilver','&copy; phpBB Group',1,1,1,1);



--
-- Table structure for table `##DBNAME##_styles_imageset`
--

DROP TABLE IF EXISTS `##DBNAME##_styles_imageset`;


CREATE TABLE `##DBNAME##_styles_imageset` (
  `imageset_id` mediumint(8) unsigned NOT NULL auto_increment,
  `imageset_name` varchar(255) collate utf8_bin NOT NULL default '',
  `imageset_copyright` varchar(255) collate utf8_bin NOT NULL default '',
  `imageset_path` varchar(100) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`imageset_id`),

  UNIQUE KEY `imgset_nm` (`imageset_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_styles_imageset`
--



INSERT INTO `##DBNAME##_styles_imageset` VALUES (1,'prosilver','&copy; phpBB Group','prosilver');



--
-- Table structure for table `##DBNAME##_styles_imageset_data`
--

DROP TABLE IF EXISTS `##DBNAME##_styles_imageset_data`;


CREATE TABLE `##DBNAME##_styles_imageset_data` (
  `image_id` mediumint(8) unsigned NOT NULL auto_increment,
  `image_name` varchar(200) collate utf8_bin NOT NULL default '',
  `image_filename` varchar(200) collate utf8_bin NOT NULL default '',
  `image_lang` varchar(30) collate utf8_bin NOT NULL default '',
  `image_height` smallint(4) unsigned NOT NULL default '0',
  `image_width` smallint(4) unsigned NOT NULL default '0',
  `imageset_id` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`image_id`),

  KEY `i_d` (`imageset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_styles_imageset_data`
--



INSERT INTO `##DBNAME##_styles_imageset_data` VALUES (1,'site_logo','site_logo.gif','',52,139,1),
(2,'forum_link','forum_link.gif','',27,27,1),
(3,'forum_read','forum_read.gif','',27,27,1),
(4,'forum_read_locked','forum_read_locked.gif','',27,27,1),
(5,'forum_read_subforum','forum_read_subforum.gif','',27,27,1),
(6,'forum_unread','forum_unread.gif','',27,27,1),
(7,'forum_unread_locked','forum_unread_locked.gif','',27,27,1),
(8,'forum_unread_subforum','forum_unread_subforum.gif','',27,27,1),
(9,'topic_moved','topic_moved.gif','',27,27,1),
(10,'topic_read','topic_read.gif','',27,27,1),
(11,'topic_read_mine','topic_read_mine.gif','',27,27,1),
(12,'topic_read_hot','topic_read_hot.gif','',27,27,1),
(13,'topic_read_hot_mine','topic_read_hot_mine.gif','',27,27,1),
(14,'topic_read_locked','topic_read_locked.gif','',27,27,1),
(15,'topic_read_locked_mine','topic_read_locked_mine.gif','',27,27,1),
(16,'topic_unread','topic_unread.gif','',27,27,1),
(17,'topic_unread_mine','topic_unread_mine.gif','',27,27,1),
(18,'topic_unread_hot','topic_unread_hot.gif','',27,27,1),
(19,'topic_unread_hot_mine','topic_unread_hot_mine.gif','',27,27,1),
(20,'topic_unread_locked','topic_unread_locked.gif','',27,27,1),
(21,'topic_unread_locked_mine','topic_unread_locked_mine.gif','',27,27,1),
(22,'sticky_read','sticky_read.gif','',27,27,1),
(23,'sticky_read_mine','sticky_read_mine.gif','',27,27,1),
(24,'sticky_read_locked','sticky_read_locked.gif','',27,27,1),
(25,'sticky_read_locked_mine','sticky_read_locked_mine.gif','',27,27,1),
(26,'sticky_unread','sticky_unread.gif','',27,27,1),
(27,'sticky_unread_mine','sticky_unread_mine.gif','',27,27,1),
(28,'sticky_unread_locked','sticky_unread_locked.gif','',27,27,1),
(29,'sticky_unread_locked_mine','sticky_unread_locked_mine.gif','',27,27,1),
(30,'announce_read','announce_read.gif','',27,27,1),
(31,'announce_read_mine','announce_read_mine.gif','',27,27,1),
(32,'announce_read_locked','announce_read_locked.gif','',27,27,1),
(33,'announce_read_locked_mine','announce_read_locked_mine.gif','',27,27,1),
(34,'announce_unread','announce_unread.gif','',27,27,1),
(35,'announce_unread_mine','announce_unread_mine.gif','',27,27,1),
(36,'announce_unread_locked','announce_unread_locked.gif','',27,27,1),
(37,'announce_unread_locked_mine','announce_unread_locked_mine.gif','',27,27,1),
(38,'global_read','announce_read.gif','',27,27,1),
(39,'global_read_mine','announce_read_mine.gif','',27,27,1),
(40,'global_read_locked','announce_read_locked.gif','',27,27,1),
(41,'global_read_locked_mine','announce_read_locked_mine.gif','',27,27,1),
(42,'global_unread','announce_unread.gif','',27,27,1),
(43,'global_unread_mine','announce_unread_mine.gif','',27,27,1),
(44,'global_unread_locked','announce_unread_locked.gif','',27,27,1),
(45,'global_unread_locked_mine','announce_unread_locked_mine.gif','',27,27,1),
(46,'pm_read','topic_read.gif','',27,27,1),
(47,'pm_unread','topic_unread.gif','',27,27,1),
(48,'icon_back_top','icon_back_top.gif','',11,11,1),
(49,'icon_contact_aim','icon_contact_aim.gif','',20,20,1),
(50,'icon_contact_email','icon_contact_email.gif','',20,20,1),
(51,'icon_contact_icq','icon_contact_icq.gif','',20,20,1),
(52,'icon_contact_jabber','icon_contact_jabber.gif','',20,20,1),
(53,'icon_contact_msnm','icon_contact_msnm.gif','',20,20,1),
(54,'icon_contact_www','icon_contact_www.gif','',20,20,1),
(55,'icon_contact_yahoo','icon_contact_yahoo.gif','',20,20,1),
(56,'icon_post_delete','icon_post_delete.gif','',20,20,1),
(57,'icon_post_info','icon_post_info.gif','',20,20,1),
(58,'icon_post_report','icon_post_report.gif','',20,20,1),
(59,'icon_post_target','icon_post_target.gif','',9,11,1),
(60,'icon_post_target_unread','icon_post_target_unread.gif','',9,11,1),
(61,'icon_topic_attach','icon_topic_attach.gif','',10,7,1),
(62,'icon_topic_latest','icon_topic_latest.gif','',9,11,1),
(63,'icon_topic_newest','icon_topic_newest.gif','',9,11,1),
(64,'icon_topic_reported','icon_topic_reported.gif','',14,16,1),
(65,'icon_topic_unapproved','icon_topic_unapproved.gif','',14,16,1),
(66,'icon_user_warn','icon_user_warn.gif','',20,20,1),
(67,'subforum_read','subforum_read.gif','',9,11,1),
(68,'subforum_unread','subforum_unread.gif','',9,11,1),
(69,'icon_contact_pm','icon_contact_pm.gif','en',20,28,1),
(70,'icon_post_edit','icon_post_edit.gif','en',20,42,1),
(71,'icon_post_quote','icon_post_quote.gif','en',20,54,1),
(72,'icon_user_online','icon_user_online.gif','en',58,58,1),
(73,'button_pm_forward','button_pm_forward.gif','en',25,96,1),
(74,'button_pm_new','button_pm_new.gif','en',25,84,1),
(75,'button_pm_reply','button_pm_reply.gif','en',25,96,1),
(76,'button_topic_locked','button_topic_locked.gif','en',25,88,1),
(77,'button_topic_new','button_topic_new.gif','en',25,96,1),
(78,'button_topic_reply','button_topic_reply.gif','en',25,96,1);



--
-- Table structure for table `##DBNAME##_styles_template`
--

DROP TABLE IF EXISTS `##DBNAME##_styles_template`;


CREATE TABLE `##DBNAME##_styles_template` (
  `template_id` mediumint(8) unsigned NOT NULL auto_increment,
  `template_name` varchar(255) collate utf8_bin NOT NULL default '',
  `template_copyright` varchar(255) collate utf8_bin NOT NULL default '',
  `template_path` varchar(100) collate utf8_bin NOT NULL default '',
  `bbcode_bitfield` varchar(255) collate utf8_bin NOT NULL default 'kNg=',
  `template_storedb` tinyint(1) unsigned NOT NULL default '0',
  `template_inherits_id` int(4) unsigned NOT NULL default '0',
  `template_inherit_path` varchar(255) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`template_id`),

  UNIQUE KEY `tmplte_nm` (`template_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_styles_template`
--



INSERT INTO `##DBNAME##_styles_template` VALUES (1,'prosilver','&copy; phpBB Group','prosilver','lNg=',0,0,'');



--
-- Table structure for table `##DBNAME##_styles_template_data`
--

DROP TABLE IF EXISTS `##DBNAME##_styles_template_data`;


CREATE TABLE `##DBNAME##_styles_template_data` (
  `template_id` mediumint(8) unsigned NOT NULL default '0',
  `template_filename` varchar(100) collate utf8_bin NOT NULL default '',
  `template_included` text collate utf8_bin NOT NULL,
  `template_mtime` int(11) unsigned NOT NULL default '0',
  `template_data` mediumtext collate utf8_bin NOT NULL,
  KEY `tid` (`template_id`),

  KEY `tfn` (`template_filename`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_styles_template_data`
--






--
-- Table structure for table `##DBNAME##_styles_theme`
--

DROP TABLE IF EXISTS `##DBNAME##_styles_theme`;


CREATE TABLE `##DBNAME##_styles_theme` (
  `theme_id` mediumint(8) unsigned NOT NULL auto_increment,
  `theme_name` varchar(255) collate utf8_bin NOT NULL default '',
  `theme_copyright` varchar(255) collate utf8_bin NOT NULL default '',
  `theme_path` varchar(100) collate utf8_bin NOT NULL default '',
  `theme_storedb` tinyint(1) unsigned NOT NULL default '0',
  `theme_mtime` int(11) unsigned NOT NULL default '0',
  `theme_data` mediumtext collate utf8_bin NOT NULL,
  PRIMARY KEY  (`theme_id`),

  UNIQUE KEY `theme_name` (`theme_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_styles_theme`
--



INSERT INTO `##DBNAME##_styles_theme` VALUES (1,'prosilver','&copy; phpBB Group','prosilver',1,0,'');



--
-- Table structure for table `##DBNAME##_topics`
--

DROP TABLE IF EXISTS `##DBNAME##_topics`;


CREATE TABLE `##DBNAME##_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL auto_increment,
  `forum_id` mediumint(8) unsigned NOT NULL default '0',
  `icon_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL default '0',
  `topic_approved` tinyint(1) unsigned NOT NULL default '1',
  `topic_reported` tinyint(1) unsigned NOT NULL default '0',
  `topic_title` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `topic_poster` mediumint(8) unsigned NOT NULL default '0',
  `topic_time` int(11) unsigned NOT NULL default '0',
  `topic_time_limit` int(11) unsigned NOT NULL default '0',
  `topic_views` mediumint(8) unsigned NOT NULL default '0',
  `topic_replies` mediumint(8) unsigned NOT NULL default '0',
  `topic_replies_real` mediumint(8) unsigned NOT NULL default '0',
  `topic_status` tinyint(3) NOT NULL default '0',
  `topic_type` tinyint(3) NOT NULL default '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_first_poster_name` varchar(255) collate utf8_bin NOT NULL default '',
  `topic_first_poster_colour` varchar(6) collate utf8_bin NOT NULL default '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_last_poster_name` varchar(255) collate utf8_bin NOT NULL default '',
  `topic_last_poster_colour` varchar(6) collate utf8_bin NOT NULL default '',
  `topic_last_post_subject` varchar(255) collate utf8_bin NOT NULL default '',
  `topic_last_post_time` int(11) unsigned NOT NULL default '0',
  `topic_last_view_time` int(11) unsigned NOT NULL default '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL default '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL default '0',
  `poll_title` varchar(255) collate utf8_bin NOT NULL default '',
  `poll_start` int(11) unsigned NOT NULL default '0',
  `poll_length` int(11) unsigned NOT NULL default '0',
  `poll_max_options` tinyint(4) NOT NULL default '1',
  `poll_last_vote` int(11) unsigned NOT NULL default '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`topic_id`),

  KEY `forum_id` (`forum_id`),

  KEY `forum_id_type` (`forum_id`,`topic_type`),

  KEY `last_post_time` (`topic_last_post_time`),

  KEY `topic_approved` (`topic_approved`),

  KEY `forum_appr_last` (`forum_id`,`topic_approved`,`topic_last_post_id`),

  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_topics`
--



INSERT INTO `##DBNAME##_topics` VALUES (1,2,0,0,1,0,'Welcome to phpBB3',2,1252075878,0,0,0,0,0,0,1,'replaceusername','AA0000',1,2,'replaceusername','AA0000','Welcome to phpBB3',1252075878,972086460,0,0,0,'',0,0,1,0,0);



--
-- Table structure for table `##DBNAME##_topics_posted`
--

DROP TABLE IF EXISTS `##DBNAME##_topics_posted`;


CREATE TABLE `##DBNAME##_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_posted` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`user_id`,`topic_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_topics_posted`
--



INSERT INTO `##DBNAME##_topics_posted` VALUES (2,1,1);



--
-- Table structure for table `##DBNAME##_topics_track`
--

DROP TABLE IF EXISTS `##DBNAME##_topics_track`;


CREATE TABLE `##DBNAME##_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_id` mediumint(8) unsigned NOT NULL default '0',
  `mark_time` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`user_id`,`topic_id`),

  KEY `forum_id` (`forum_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_topics_track`
--






--
-- Table structure for table `##DBNAME##_topics_watch`
--

DROP TABLE IF EXISTS `##DBNAME##_topics_watch`;


CREATE TABLE `##DBNAME##_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `notify_status` tinyint(1) unsigned NOT NULL default '0',
  KEY `topic_id` (`topic_id`),

  KEY `user_id` (`user_id`),

  KEY `notify_stat` (`notify_status`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_topics_watch`
--






--
-- Table structure for table `##DBNAME##_user_group`
--

DROP TABLE IF EXISTS `##DBNAME##_user_group`;


CREATE TABLE `##DBNAME##_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `group_leader` tinyint(1) unsigned NOT NULL default '0',
  `user_pending` tinyint(1) unsigned NOT NULL default '1',
  KEY `group_id` (`group_id`),

  KEY `user_id` (`user_id`),

  KEY `group_leader` (`group_leader`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_user_group`
--



INSERT INTO `##DBNAME##_user_group` VALUES (1,1,0,0),
(2,2,0,0),
(4,2,0,0),
(5,2,1,0),
(6,3,0,0),
(6,4,0,0),
(6,5,0,0),
(6,6,0,0),
(6,7,0,0),
(6,8,0,0),
(6,9,0,0),
(6,10,0,0),
(6,11,0,0),
(6,12,0,0),
(6,13,0,0),
(6,14,0,0),
(6,15,0,0),
(6,16,0,0),
(6,17,0,0),
(6,18,0,0),
(6,19,0,0),
(6,20,0,0),
(6,21,0,0),
(6,22,0,0),
(6,23,0,0),
(6,24,0,0),
(6,25,0,0),
(6,26,0,0),
(6,27,0,0),
(6,28,0,0),
(6,29,0,0),
(6,30,0,0),
(6,31,0,0),
(6,32,0,0),
(6,33,0,0),
(6,34,0,0),
(6,35,0,0),
(6,36,0,0),
(6,37,0,0),
(6,38,0,0),
(6,39,0,0),
(6,40,0,0),
(6,41,0,0),
(6,42,0,0),
(6,43,0,0),
(6,44,0,0),
(6,45,0,0),
(6,46,0,0),
(6,47,0,0),
(6,48,0,0),
(6,49,0,0),
(6,50,0,0),
(6,51,0,0),
(6,52,0,0);



--
-- Table structure for table `##DBNAME##_users`
--

DROP TABLE IF EXISTS `##DBNAME##_users`;


CREATE TABLE `##DBNAME##_users` (
  `user_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_type` tinyint(2) NOT NULL default '0',
  `group_id` mediumint(8) unsigned NOT NULL default '3',
  `user_permissions` mediumtext collate utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL default '0',
  `user_ip` varchar(40) collate utf8_bin NOT NULL default '',
  `user_regdate` int(11) unsigned NOT NULL default '0',
  `username` varchar(255) collate utf8_bin NOT NULL default '',
  `username_clean` varchar(255) collate utf8_bin NOT NULL default '',
  `user_password` varchar(40) collate utf8_bin NOT NULL default '',
  `user_passchg` int(11) unsigned NOT NULL default '0',
  `user_pass_convert` tinyint(1) unsigned NOT NULL default '0',
  `user_email` varchar(100) collate utf8_bin NOT NULL default '',
  `user_email_hash` bigint(20) NOT NULL default '0',
  `user_birthday` varchar(10) collate utf8_bin NOT NULL default '',
  `user_lastvisit` int(11) unsigned NOT NULL default '0',
  `user_lastmark` int(11) unsigned NOT NULL default '0',
  `user_lastpost_time` int(11) unsigned NOT NULL default '0',
  `user_lastpage` varchar(200) collate utf8_bin NOT NULL default '',
  `user_last_confirm_key` varchar(10) collate utf8_bin NOT NULL default '',
  `user_last_search` int(11) unsigned NOT NULL default '0',
  `user_warnings` tinyint(4) NOT NULL default '0',
  `user_last_warning` int(11) unsigned NOT NULL default '0',
  `user_login_attempts` tinyint(4) NOT NULL default '0',
  `user_inactive_reason` tinyint(2) NOT NULL default '0',
  `user_inactive_time` int(11) unsigned NOT NULL default '0',
  `user_posts` mediumint(8) unsigned NOT NULL default '0',
  `user_lang` varchar(30) collate utf8_bin NOT NULL default '',
  `user_timezone` decimal(5,2) NOT NULL default '0.00',
  `user_dst` tinyint(1) unsigned NOT NULL default '0',
  `user_dateformat` varchar(30) collate utf8_bin NOT NULL default 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL default '0',
  `user_rank` mediumint(8) unsigned NOT NULL default '0',
  `user_colour` varchar(6) collate utf8_bin NOT NULL default '',
  `user_new_privmsg` int(4) NOT NULL default '0',
  `user_unread_privmsg` int(4) NOT NULL default '0',
  `user_last_privmsg` int(11) unsigned NOT NULL default '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL default '0',
  `user_full_folder` int(11) NOT NULL default '-3',
  `user_emailtime` int(11) unsigned NOT NULL default '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL default '0',
  `user_topic_sortby_type` varchar(1) collate utf8_bin NOT NULL default 't',
  `user_topic_sortby_dir` varchar(1) collate utf8_bin NOT NULL default 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL default '0',
  `user_post_sortby_type` varchar(1) collate utf8_bin NOT NULL default 't',
  `user_post_sortby_dir` varchar(1) collate utf8_bin NOT NULL default 'a',
  `user_notify` tinyint(1) unsigned NOT NULL default '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL default '1',
  `user_notify_type` tinyint(4) NOT NULL default '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL default '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL default '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL default '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL default '1',
  `user_options` int(11) unsigned NOT NULL default '895',
  `user_avatar` varchar(255) collate utf8_bin NOT NULL default '',
  `user_avatar_type` tinyint(2) NOT NULL default '0',
  `user_avatar_width` smallint(4) unsigned NOT NULL default '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL default '0',
  `user_sig` mediumtext collate utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) collate utf8_bin NOT NULL default '',
  `user_sig_bbcode_bitfield` varchar(255) collate utf8_bin NOT NULL default '',
  `user_from` varchar(100) collate utf8_bin NOT NULL default '',
  `user_icq` varchar(15) collate utf8_bin NOT NULL default '',
  `user_aim` varchar(255) collate utf8_bin NOT NULL default '',
  `user_yim` varchar(255) collate utf8_bin NOT NULL default '',
  `user_msnm` varchar(255) collate utf8_bin NOT NULL default '',
  `user_jabber` varchar(255) collate utf8_bin NOT NULL default '',
  `user_website` varchar(200) collate utf8_bin NOT NULL default '',
  `user_occ` text collate utf8_bin NOT NULL,
  `user_interests` text collate utf8_bin NOT NULL,
  `user_actkey` varchar(32) collate utf8_bin NOT NULL default '',
  `user_newpasswd` varchar(40) collate utf8_bin NOT NULL default '',
  `user_form_salt` varchar(32) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`user_id`),

  UNIQUE KEY `username_clean` (`username_clean`),

  KEY `user_birthday` (`user_birthday`),

  KEY `user_email_hash` (`user_email_hash`),

  KEY `user_type` (`user_type`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Dumping data for table `##DBNAME##_users`
--



INSERT INTO `##DBNAME##_users` VALUES (1,2,1,'',0,'',1252075878,'Anonymous','anonymous','',0,0,'',0,'',0,0,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'d M Y H:i',1,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','9ac03816784b8612'),
(2,3,5,'zik0zjzik0zjzik0w0\ni1cjyo000000\nzik0zjzhb2tc',0,'::1',1252075878,'##USERNAME##','##USERNAME_MINI##','##PASSWORD##',0,0,'##EMAIL##',-171855108320,'',0,0,0,'','',0,0,0,0,0,0,1,'en','0.00',0,'D M d, Y g:i a',1,1,'AA0000',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,895,'',0,0,0,'','','','','','','','','','','','','','','0fc1edba092e6c67'),
(3,2,6,'',0,'',1252075881,'AdsBot [Google]','adsbot [google]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','c3747e53a1de2a64'),
(4,2,6,'',0,'',1252075881,'Alexa [Bot]','alexa [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','8ee820f7d51ab88e'),
(5,2,6,'',0,'',1252075881,'Alta Vista [Bot]','alta vista [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','8747306b3f681b49'),
(6,2,6,'',0,'',1252075881,'Ask Jeeves [Bot]','ask jeeves [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','2cc079c49ea0cc00'),
(7,2,6,'',0,'',1252075881,'Baidu [Spider]','baidu [spider]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','3827b3e3348cf740'),
(8,2,6,'',0,'',1252075881,'Exabot [Bot]','exabot [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','4dbe85fb6b34e8c0'),
(9,2,6,'',0,'',1252075881,'FAST Enterprise [Crawler]','fast enterprise [crawler]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','1d64810bbd490a79'),
(10,2,6,'',0,'',1252075881,'FAST WebCrawler [Crawler]','fast webcrawler [crawler]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','d1c0af7262f676b9'),
(11,2,6,'',0,'',1252075881,'Francis [Bot]','francis [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','9ed1fd814dec0ad3'),
(12,2,6,'',0,'',1252075881,'Gigabot [Bot]','gigabot [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','377a04d6ce3b74d4'),
(13,2,6,'',0,'',1252075881,'Google Adsense [Bot]','google adsense [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','34904544bdcbb4ce'),
(14,2,6,'',0,'',1252075881,'Google Desktop','google desktop','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','6811d429ffb0774a'),
(15,2,6,'',0,'',1252075881,'Google Feedfetcher','google feedfetcher','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','7e67be7273b59854'),
(16,2,6,'',0,'',1252075881,'Google [Bot]','google [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','05ebf6e838451efc'),
(17,2,6,'',0,'',1252075881,'Heise IT-Markt [Crawler]','heise it-markt [crawler]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','3f41446a6c8409f9'),
(18,2,6,'',0,'',1252075881,'Heritrix [Crawler]','heritrix [crawler]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','f00a864376730387'),
(19,2,6,'',0,'',1252075881,'IBM Research [Bot]','ibm research [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','05e1f7aae363dc77'),
(20,2,6,'',0,'',1252075881,'ICCrawler - ICjobs','iccrawler - icjobs','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','957229f848bd08c0'),
(21,2,6,'',0,'',1252075881,'ichiro [Crawler]','ichiro [crawler]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','62bc3260e2780ed8'),
(22,2,6,'',0,'',1252075881,'Majestic-12 [Bot]','majestic-12 [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','a27b134a92b2caff'),
(23,2,6,'',0,'',1252075881,'Metager [Bot]','metager [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','3df742d9e6d730bd'),
(24,2,6,'',0,'',1252075881,'MSN NewsBlogs','msn newsblogs','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','56d19e99985f5480'),
(25,2,6,'',0,'',1252075881,'MSN [Bot]','msn [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','23e8e37a4a8760f0'),
(26,2,6,'',0,'',1252075881,'MSNbot Media','msnbot media','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','dee29f744d4a7278'),
(27,2,6,'',0,'',1252075881,'NG-Search [Bot]','ng-search [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','0664887ed99d3d0e'),
(28,2,6,'',0,'',1252075881,'Nutch [Bot]','nutch [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','dff90b296255c02a'),
(29,2,6,'',0,'',1252075881,'Nutch/CVS [Bot]','nutch/cvs [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','2ddb899f96d9b1dc'),
(30,2,6,'',0,'',1252075881,'OmniExplorer [Bot]','omniexplorer [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','92b25e9a98519dc8'),
(31,2,6,'',0,'',1252075881,'Online link [Validator]','online link [validator]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','9c11b1452cf5247d'),
(32,2,6,'',0,'',1252075881,'psbot [Picsearch]','psbot [picsearch]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','adf030d3290cce34'),
(33,2,6,'',0,'',1252075881,'Seekport [Bot]','seekport [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','5a6e56e54635d643'),
(34,2,6,'',0,'',1252075881,'Sensis [Crawler]','sensis [crawler]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','8aa9a691ad5f4035'),
(35,2,6,'',0,'',1252075881,'SEO Crawler','seo crawler','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','39b1afb87b3f3e26'),
(36,2,6,'',0,'',1252075881,'Seoma [Crawler]','seoma [crawler]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','1b8de0bbeb359e4c'),
(37,2,6,'',0,'',1252075881,'SEOSearch [Crawler]','seosearch [crawler]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','de50159651ef5e5f'),
(38,2,6,'',0,'',1252075881,'Snappy [Bot]','snappy [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','a7263ff293d125c5'),
(39,2,6,'',0,'',1252075881,'Steeler [Crawler]','steeler [crawler]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','6d9fe649f24db575'),
(40,2,6,'',0,'',1252075881,'Synoo [Bot]','synoo [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','86136b9c33096255'),
(41,2,6,'',0,'',1252075881,'Telekom [Bot]','telekom [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','80b3748f0bdb67cf'),
(42,2,6,'',0,'',1252075881,'TurnitinBot [Bot]','turnitinbot [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','5a3229d7a6739429'),
(43,2,6,'',0,'',1252075881,'Voyager [Bot]','voyager [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','52a489951c7b1017'),
(44,2,6,'',0,'',1252075881,'W3 [Sitesearch]','w3 [sitesearch]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','c6608c2a594eb858'),
(45,2,6,'',0,'',1252075881,'W3C [Linkcheck]','w3c [linkcheck]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','9d5e4919731506a6'),
(46,2,6,'',0,'',1252075881,'W3C [Validator]','w3c [validator]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','700def0e2e2c2312'),
(47,2,6,'',0,'',1252075881,'WiseNut [Bot]','wisenut [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','0a95b9a8992ed3c3'),
(48,2,6,'',0,'',1252075881,'YaCy [Bot]','yacy [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','b0d98d303749ead0'),
(49,2,6,'',0,'',1252075881,'Yahoo MMCrawler [Bot]','yahoo mmcrawler [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','08c6010b41654de2'),
(50,2,6,'',0,'',1252075881,'Yahoo Slurp [Bot]','yahoo slurp [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','f3f4333e6ef07db7'),
(51,2,6,'',0,'',1252075881,'Yahoo [Bot]','yahoo [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','0f0b9ab6f8516c2f'),
(52,2,6,'',0,'',1252075881,'YahooSeeker [Bot]','yahooseeker [bot]','',1252075881,0,'',0,'',0,1252075881,0,'','',0,0,0,0,0,0,0,'en','0.00',0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,895,'',0,0,0,'','','','','','','','','','','','','','','41e0a3f6e6280750');



--
-- Table structure for table `##DBNAME##_warnings`
--

DROP TABLE IF EXISTS `##DBNAME##_warnings`;


CREATE TABLE `##DBNAME##_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `post_id` mediumint(8) unsigned NOT NULL default '0',
  `log_id` mediumint(8) unsigned NOT NULL default '0',
  `warning_time` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`warning_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_warnings`
--






--
-- Table structure for table `##DBNAME##_words`
--

DROP TABLE IF EXISTS `##DBNAME##_words`;


CREATE TABLE `##DBNAME##_words` (
  `word_id` mediumint(8) unsigned NOT NULL auto_increment,
  `word` varchar(255) collate utf8_bin NOT NULL default '',
  `replacement` varchar(255) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`word_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_words`
--






--
-- Table structure for table `##DBNAME##_zebra`
--

DROP TABLE IF EXISTS `##DBNAME##_zebra`;


CREATE TABLE `##DBNAME##_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `zebra_id` mediumint(8) unsigned NOT NULL default '0',
  `friend` tinyint(1) unsigned NOT NULL default '0',
  `foe` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`user_id`,`zebra_id`)
) CHARACTER SET `utf8` COLLATE `utf8_bin`;


--
-- Dumping data for table `##DBNAME##_zebra`
--






-- Dump completed on 2009-09-04 20:05:13
