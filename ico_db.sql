/*
Navicat MySQL Data Transfer

Source Server         : New connection
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ico_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-02-14 03:39:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add adlink', '1', 'add_adlink');
INSERT INTO `auth_permission` VALUES ('2', 'Can change adlink', '1', 'change_adlink');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete adlink', '1', 'delete_adlink');
INSERT INTO `auth_permission` VALUES ('4', 'Can add ico', '2', 'add_ico');
INSERT INTO `auth_permission` VALUES ('5', 'Can change ico', '2', 'change_ico');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete ico', '2', 'delete_ico');
INSERT INTO `auth_permission` VALUES ('7', 'Can add review', '3', 'add_review');
INSERT INTO `auth_permission` VALUES ('8', 'Can change review', '3', 'change_review');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete review', '3', 'delete_review');
INSERT INTO `auth_permission` VALUES ('10', 'Can add scree n_shot', '4', 'add_screen_shot');
INSERT INTO `auth_permission` VALUES ('11', 'Can change scree n_shot', '4', 'change_screen_shot');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete scree n_shot', '4', 'delete_screen_shot');
INSERT INTO `auth_permission` VALUES ('13', 'Can add log entry', '5', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('14', 'Can change log entry', '5', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete log entry', '5', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('16', 'Can add permission', '6', 'add_permission');
INSERT INTO `auth_permission` VALUES ('17', 'Can change permission', '6', 'change_permission');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete permission', '6', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('19', 'Can add group', '7', 'add_group');
INSERT INTO `auth_permission` VALUES ('20', 'Can change group', '7', 'change_group');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete group', '7', 'delete_group');
INSERT INTO `auth_permission` VALUES ('22', 'Can add user', '8', 'add_user');
INSERT INTO `auth_permission` VALUES ('23', 'Can change user', '8', 'change_user');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete user', '8', 'delete_user');
INSERT INTO `auth_permission` VALUES ('25', 'Can add content type', '9', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('26', 'Can change content type', '9', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete content type', '9', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('28', 'Can add session', '10', 'add_session');
INSERT INTO `auth_permission` VALUES ('29', 'Can change session', '10', 'change_session');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete session', '10', 'delete_session');
INSERT INTO `auth_permission` VALUES ('31', 'Can add atsd', '11', 'add_atsd');
INSERT INTO `auth_permission` VALUES ('32', 'Can change atsd', '11', 'change_atsd');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete atsd', '11', 'delete_atsd');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$36000$owiCtzqOyKkW$WW7fcd2dycPsxHfvN7okC7zNZgHB/D034qeZkmhSAQE=', '2018-02-10 02:57:27.635124', '1', 'admin', '', '', '', '1', '1', '2018-02-10 02:56:59.001599');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('5', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('7', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('6', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('8', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('9', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('1', 'main', 'adlink');
INSERT INTO `django_content_type` VALUES ('11', 'main', 'atsd');
INSERT INTO `django_content_type` VALUES ('2', 'main', 'ico');
INSERT INTO `django_content_type` VALUES ('3', 'main', 'review');
INSERT INTO `django_content_type` VALUES ('4', 'main', 'screen_shot');
INSERT INTO `django_content_type` VALUES ('10', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-02-10 02:55:33.281528');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-02-10 02:55:39.372914');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-02-10 02:55:40.887397');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-02-10 02:55:40.942536');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-02-10 02:55:42.156953');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-02-10 02:55:42.778475');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-02-10 02:55:43.694321');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-02-10 02:55:43.735723');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-02-10 02:55:44.124436');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-02-10 02:55:44.164892');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-02-10 02:55:44.215113');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2018-02-10 02:55:44.811489');
INSERT INTO `django_migrations` VALUES ('13', 'main', '0001_initial', '2018-02-10 02:55:48.388127');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2018-02-10 02:55:48.956955');
INSERT INTO `django_migrations` VALUES ('15', 'main', '0002_auto_20180209_2021', '2018-02-10 04:21:38.821502');
INSERT INTO `django_migrations` VALUES ('16', 'main', '0003_ico_accepts', '2018-02-10 04:25:22.232593');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('f3whdmn97451103lwcgkux0sh81h36lt', 'ZDUwMjE1YWRjZWNiYmFhNzEzODRmZjI1ZGE1OGNkMmYwNDczYjQ2MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMWRmYmNmMjg4YThlZWRhN2QxN2NjOWQ4Y2JhOTA2MWVjYjliOGRhIn0=', '2018-02-24 02:57:27.695239');

-- ----------------------------
-- Table structure for `main_adlink`
-- ----------------------------
DROP TABLE IF EXISTS `main_adlink`;
CREATE TABLE `main_adlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(200) NOT NULL,
  `link_value` varchar(200) NOT NULL,
  `link_type` varchar(200) NOT NULL,
  `ico_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_adlink_ico_id_c6f570e3_fk_main_ico_id` (`ico_id`),
  CONSTRAINT `main_adlink_ico_id_c6f570e3_fk_main_ico_id` FOREIGN KEY (`ico_id`) REFERENCES `main_ico` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of main_adlink
-- ----------------------------
INSERT INTO `main_adlink` VALUES ('1', 'facebook', 'https://www.facebook.com/academytoken', 'social', '1');
INSERT INTO `main_adlink` VALUES ('2', 'twitter', 'https://twitter.com/AcademyToken', 'social', '1');
INSERT INTO `main_adlink` VALUES ('3', 'telegram', 'https://t.me/joinchat/FfW5ug01BVwlsGuur3K3lA', 'social', '1');
INSERT INTO `main_adlink` VALUES ('4', 'one pager', 'https://cdn.current.us/onepager.pdf', 'not social', '2');
INSERT INTO `main_adlink` VALUES ('6', 'reddit', 'https://www.reddit.com/r/CurrentCRNC/', 'social', '2');
INSERT INTO `main_adlink` VALUES ('7', 'github', 'https://github.com/CurrentMediaNetwork', 'social', '2');
INSERT INTO `main_adlink` VALUES ('8', 'twitter', 'https://twitter.com/Current_CRNC', 'social', '2');
INSERT INTO `main_adlink` VALUES ('9', 'telegram', 'https://t.me/joinchat/F-KV7A8VpJrZw-QBRjumRg', 'social', '2');
INSERT INTO `main_adlink` VALUES ('10', 'Medium', 'https://medium.com/current-crnc', 'social', '2');
INSERT INTO `main_adlink` VALUES ('12', 'facebook', 'https://www.facebook.com/CurrentCRNC/', 'social', '2');
INSERT INTO `main_adlink` VALUES ('13', 'facebook', 'https://www.facebook.com/effectai/', 'social', '3');
INSERT INTO `main_adlink` VALUES ('14', 'reddit', 'https://www.reddit.com/r/effectai/', 'social', '3');
INSERT INTO `main_adlink` VALUES ('15', 'github', 'https://github.com/effectai', 'social', '3');
INSERT INTO `main_adlink` VALUES ('16', 'twitter', 'https://twitter.com/effectaix', 'social', '3');
INSERT INTO `main_adlink` VALUES ('17', 'telegram', 'https://t.me/effectai', 'social', '3');
INSERT INTO `main_adlink` VALUES ('18', 'Medium', 'https://medium.com/@effectai', 'social', '3');
INSERT INTO `main_adlink` VALUES ('19', 'bitcointalk.org', 'https://bitcointalk.org/', 'social', '3');
INSERT INTO `main_adlink` VALUES ('20', 'one pager', 'https://effect.ai/download/effect_lightpaper.pdf', 'not social', '3');
INSERT INTO `main_adlink` VALUES ('21', 'bounty', 'https://bitcointalk.org/index.php?topic=2785617', 'not social', '3');
INSERT INTO `main_adlink` VALUES ('22', 'facebook', 'https://www.facebook.com/eximchain/', 'social', '4');
INSERT INTO `main_adlink` VALUES ('23', 'github', 'https://github.com/eximchain', 'social', '4');
INSERT INTO `main_adlink` VALUES ('24', 'twitter', 'https://twitter.com/EximchainEXC', 'social', '4');
INSERT INTO `main_adlink` VALUES ('25', 'telegram', 'https://t.me/eximchain', 'social', '4');
INSERT INTO `main_adlink` VALUES ('26', 'Medium', 'https://medium.com/eximchain', 'social', '4');
INSERT INTO `main_adlink` VALUES ('27', 'faq', 'https://www.eximchain.com/faq.html', 'not social', '4');
INSERT INTO `main_adlink` VALUES ('28', 'facebook', 'https://www.facebook.com/grain.io/', 'social', '5');
INSERT INTO `main_adlink` VALUES ('29', 'twitter', 'https://twitter.com/Grain_io', 'social', '5');
INSERT INTO `main_adlink` VALUES ('30', 'telegram', 'https://t.me/joinchat/IAWYn0jj2m02434fbd73Tg', 'social', '5');
INSERT INTO `main_adlink` VALUES ('31', 'bitcointalk.org', 'https://bitcointalk.org/', 'social', '5');
INSERT INTO `main_adlink` VALUES ('32', 'one pager', 'https://grain.io/grain-onepager-v101.pdf', 'not social', '5');
INSERT INTO `main_adlink` VALUES ('33', 'bounty', 'https://bitcointalk.org/index.php?topic=2779618', 'not social', '5');
INSERT INTO `main_adlink` VALUES ('34', 'facebook', 'https://www.facebook.com/kairossoftware', 'social', '6');
INSERT INTO `main_adlink` VALUES ('35', 'github', 'https://github.com/kairosinc', 'social', '6');
INSERT INTO `main_adlink` VALUES ('36', 'twitter', 'https://twitter.com/LoveKairos', 'social', '6');
INSERT INTO `main_adlink` VALUES ('37', 'telegram', 'https://t.me/KairosICO', 'social', '6');
INSERT INTO `main_adlink` VALUES ('38', 'Medium', 'https://www.kairos.com/blog/', 'social', '6');
INSERT INTO `main_adlink` VALUES ('39', 'documentation', 'https://www.kairos.com/token-sale#docs', 'not social', '6');
INSERT INTO `main_adlink` VALUES ('40', 'demo', 'https://www.kairos.com/demos', 'not social', '6');

-- ----------------------------
-- Table structure for `main_atsd`
-- ----------------------------
DROP TABLE IF EXISTS `main_atsd`;
CREATE TABLE `main_atsd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `atsd_name` varchar(200) NOT NULL,
  `atsd_value` varchar(200) NOT NULL,
  `ico_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_atsd_ico_id_4e85a138_fk_main_ico_id` (`ico_id`),
  CONSTRAINT `main_atsd_ico_id_4e85a138_fk_main_ico_id` FOREIGN KEY (`ico_id`) REFERENCES `main_ico` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of main_atsd
-- ----------------------------
INSERT INTO `main_atsd` VALUES ('1', 'Sold on pre-sale', 'BONUS UP TO 233%', '1');
INSERT INTO `main_atsd` VALUES ('2', 'Know Your Customer(KYC)', 'YES', '1');
INSERT INTO `main_atsd` VALUES ('6', 'Toekn Issue', '30 DAYS AFTER THE CLOSE OF THE PUBLIC SALE AND AUDIT', '1');
INSERT INTO `main_atsd` VALUES ('7', 'Available for Token Sale', '35%', '2');
INSERT INTO `main_atsd` VALUES ('8', 'Min/Max Personal Cap', '0.03 ETH / TBA	', '2');
INSERT INTO `main_atsd` VALUES ('9', 'Bonus for the First', '10% For the first 5,200,000 tokens (2% of ico)', '2');
INSERT INTO `main_atsd` VALUES ('10', 'Available for Token Sale', '40%', '4');
INSERT INTO `main_atsd` VALUES ('11', 'Whitelist', 'Yes (until 15 Jan, JOIN )', '4');
INSERT INTO `main_atsd` VALUES ('12', 'Know Your Customer (KYC)', 'Yes', '4');
INSERT INTO `main_atsd` VALUES ('13', 'Available for Token Sale', '30%', '5');
INSERT INTO `main_atsd` VALUES ('14', 'Whitelist', 'Yes (period isn\'t set, JOIN )', '5');
INSERT INTO `main_atsd` VALUES ('15', 'Know Your Customer (KYC)', 'Yes', '5');
INSERT INTO `main_atsd` VALUES ('16', 'can\'t participate', 'USA, China', '5');
INSERT INTO `main_atsd` VALUES ('17', 'Min/Max Personal Cap', '0.1 ETH / TBA', '5');
INSERT INTO `main_atsd` VALUES ('18', 'Token Issue', 'Mar 29', '5');
INSERT INTO `main_atsd` VALUES ('19', 'Available for Token Sale', '40.4%', '6');
INSERT INTO `main_atsd` VALUES ('20', 'Whitelist', 'Yes (period isn\'t set, JOIN )', '6');
INSERT INTO `main_atsd` VALUES ('21', 'Know Your Customer (KYC)', 'Yes', '6');
INSERT INTO `main_atsd` VALUES ('22', 'Bonus for the First', 'Up to 50% (Image)', '6');
INSERT INTO `main_atsd` VALUES ('23', 'Min/Max Personal Cap', '1 ETH / TBA', '6');
INSERT INTO `main_atsd` VALUES ('24', 'Token Issue', 'April 2018', '6');

-- ----------------------------
-- Table structure for `main_ico`
-- ----------------------------
DROP TABLE IF EXISTS `main_ico`;
CREATE TABLE `main_ico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo_pic` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `proj_desc` varchar(200) NOT NULL,
  `movie_url` varchar(200) NOT NULL,
  `site_url` varchar(200) NOT NULL,
  `whitepaper_url` varchar(200) NOT NULL,
  `ticker` varchar(200) NOT NULL,
  `token_type` varchar(20) NOT NULL,
  `token_price` varchar(200) NOT NULL,
  `token_sale_open` date NOT NULL,
  `token_sale_close` date NOT NULL,
  `fundraising_goal` varchar(200) NOT NULL,
  `total_tokens` varchar(200) NOT NULL,
  `accepts` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of main_ico
-- ----------------------------
INSERT INTO `main_ico` VALUES ('1', 'Academy\\Academy-logo-150x150.jpg', 'Academy', 'Blockchain Service', 'First accredited school of blockchain development. ', 'https://player.vimeo.com/video/243476960', 'https://www.academytoken.com/?utm_source=icodrops', 'https://issuu.com/academyschool/docs/academy-token-whitepaper-v5-1212220', 'ACAD', 'ERC20', '1 ACAD = 2.00 USD', '2018-03-01', '2018-03-07', '50,000,000 USD', '195,000,000', 'ETH, BTC, LTC, BCH');
INSERT INTO `main_ico` VALUES ('2', 'Current\\Current-logo-150x150.jpg', 'Current', 'media', 'An Incentivized, Blockchain-Enabled Multimedia Ecosystem. Get paid to stream from major media networks, all-in-one. ', 'https://www.youtube.com/watch?v=dV_ydsmnh7Y', 'https://tokensale.current.us/?utm_source=icodrops', 'https://cdn.current.us/deck.pdf', 'CRNC', 'ERC20', '1 CRNC = 0.24 USD', '2018-03-14', '2018-04-04', '36,000,000 USD', '1,000,000,000', 'ETH, BTC, NEO');
INSERT INTO `main_ico` VALUES ('3', 'Effect.ai\\Effect.ai-logo-150x150.jpg', 'Effect.ai', 'Artificial Intelligence', 'Effect.AI is a decentralized platform for Artificial Intelligence. ', '', 'https://www.effect.ai/?utm_source=icodrops41', 'https://effect.ai/download/effect_whitepaper.pdf', 'AIX', 'NEO Blockchain', '', '2018-02-01', '2018-02-06', '18,100,000 USD (14,820,000 EURO)', ' 650,000,000', '');
INSERT INTO `main_ico` VALUES ('4', 'EximChain\\Eximchain-logo-150x150.jpg', 'EximChain', 'Blockchain Service', 'Software development company focused on supply chain applications. \r\nFrom supplier credit to inventory management, Eximchain helps businesses connect, transact, and share information more efficiently ', '', 'https://www.eximchain.com/?utm_source=icodrops', 'https://www.eximchain.com/EXIMCHAIN-Whitepaper.pdf', 'EXC', 'ERC20', '1 EXC = 0.33 USD', '2018-02-05', '2018-02-20', '20,000,000 USD', '150,000,000', 'ETH');
INSERT INTO `main_ico` VALUES ('5', 'Grain\\Grain-logo-150x150.jpg', 'GRAIN', 'Smart Contract', 'Transparent contracts. Drastically reduced overhead costs. And instant payments. Facilitated by Grain’s blockchain \r\nsolution. Grain is an infrastructure solution that allows companies to process work', 'https://www.youtube.com/watch?v=Vm4vYO56-ZY', 'https://grain.io/?utm_source=icodrops', 'https://grain.io/grain-v101.pdf', 'GRAIN', 'ERC20', '1 GRAIN = 0.0340 USD (0.02778 EURO)', '2018-02-14', '2018-02-14', '36,700,000 USD (30,000,000 EURO)', '3,600,000,000', 'ETH');
INSERT INTO `main_ico` VALUES ('6', 'Kairos\\A-AC8l1Z_400x400-150x150.png', 'Kairos', 'Verification', 'Kairos is an artificial intelligence company specializing in face recognition. Through computer vision and machine learning, Kairos can recognize faces in videos, photos, and the real-world - making i', 'https://www.youtube.com/watch?v=vAAEpeLKyuQ', 'https://www.kairos.com/token-sale?utm_source=icodrops', 'https://docs.google.com/document/', 'Kairos', 'Own wallet', '1 Kairos = 0.20 USD', '2018-04-15', '2018-04-15', '30,000,000 USD', '450,000,000', 'ETH, USD');

-- ----------------------------
-- Table structure for `main_review`
-- ----------------------------
DROP TABLE IF EXISTS `main_review`;
CREATE TABLE `main_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_option` varchar(200) NOT NULL,
  `review_option_value` varchar(200) NOT NULL,
  `ico_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_review_ico_id_2af299d9_fk_main_ico_id` (`ico_id`),
  CONSTRAINT `main_review_ico_id_2af299d9_fk_main_ico_id` FOREIGN KEY (`ico_id`) REFERENCES `main_ico` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of main_review
-- ----------------------------
INSERT INTO `main_review` VALUES ('1', 'undefined', 'undefined', '1');

-- ----------------------------
-- Table structure for `main_screen_shot`
-- ----------------------------
DROP TABLE IF EXISTS `main_screen_shot`;
CREATE TABLE `main_screen_shot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(200) NOT NULL,
  `pic_desc` varchar(500) NOT NULL,
  `ico_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_screen_shot_ico_id_2d1a56b7_fk_main_ico_id` (`ico_id`),
  CONSTRAINT `main_screen_shot_ico_id_2d1a56b7_fk_main_ico_id` FOREIGN KEY (`ico_id`) REFERENCES `main_ico` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of main_screen_shot
-- ----------------------------
INSERT INTO `main_screen_shot` VALUES ('1', 'Academy\\screenshots\\Academy-Advisors-Experts.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('2', 'Academy\\screenshots\\Academy-classes-cost.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('3', 'Academy\\screenshots\\Academy-Curriculum-Advisors.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('4', 'Academy\\screenshots\\Academy-Founders.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('5', 'Academy\\screenshots\\Academy-Partnerships.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('6', 'Academy\\screenshots\\Academy-Strategy.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('7', 'Academy\\screenshots\\Academy-Token-distribution.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('8', 'Academy\\screenshots\\Academy-Token-mechanics.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('9', 'Academy\\screenshots\\Academy-Token-sale-phases.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('10', 'Academy\\screenshots\\Academy-Token-usage.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('11', 'Academy\\screenshots\\Blockchain-industry-growth.jpg', '', '1');
INSERT INTO `main_screen_shot` VALUES ('12', 'Current\\screenshots\\Current-Media-Advantage.jpg', '', '2');
INSERT INTO `main_screen_shot` VALUES ('13', 'Current\\screenshots\\Current-Media-Advisors-Investors.jpg', '', '2');
INSERT INTO `main_screen_shot` VALUES ('14', 'Current\\screenshots\\Current-Media-Advisors-Investors-2.jpg', '', '2');
INSERT INTO `main_screen_shot` VALUES ('15', 'Current\\screenshots\\Current-Media-Core-Team-Contributors.jpg', '', '2');
INSERT INTO `main_screen_shot` VALUES ('16', 'Current\\screenshots\\Current-Media-Core-Team-Contributors-2.jpg', '', '2');
INSERT INTO `main_screen_shot` VALUES ('17', 'Current\\screenshots\\Current-Media-Funds-distribution.jpg', '', '2');
INSERT INTO `main_screen_shot` VALUES ('18', 'Current\\screenshots\\Current-Media-Product-overview.jpg', '', '2');
INSERT INTO `main_screen_shot` VALUES ('19', 'Current\\screenshots\\Current-Media-Roadmap.jpg', '', '2');
INSERT INTO `main_screen_shot` VALUES ('20', 'Current\\screenshots\\Current-Media-Token-allocation.jpg', '', '2');
INSERT INTO `main_screen_shot` VALUES ('21', 'Effect.ai\\screenshots\\Effect.ai-Funds-distribution.jpg', '', '3');
INSERT INTO `main_screen_shot` VALUES ('22', 'Effect.ai\\screenshots\\Effect.ai-Roadmap.jpg', '', '3');
INSERT INTO `main_screen_shot` VALUES ('23', 'Effect.ai\\screenshots\\Effect.ai-Stages.jpg', '', '3');
INSERT INTO `main_screen_shot` VALUES ('24', 'Effect.ai\\screenshots\\Effect.ai-Team.jpg', '', '3');
INSERT INTO `main_screen_shot` VALUES ('25', 'Effect.ai\\screenshots\\Effect.ai-Token-distribution.jpg', '', '3');
INSERT INTO `main_screen_shot` VALUES ('26', 'Effect.ai\\screenshots\\Effect.ai-Token-sale-details.jpg', '', '3');
INSERT INTO `main_screen_shot` VALUES ('28', 'EximChain\\screenshots\\Eximchain-Road-Map.jpg', '', '4');
INSERT INTO `main_screen_shot` VALUES ('29', 'EximChain\\screenshots\\Eximchain-Team.jpg', '', '4');
INSERT INTO `main_screen_shot` VALUES ('30', 'EximChain\\screenshots\\Eximchain-Team-Lead.jpg', '', '4');
INSERT INTO `main_screen_shot` VALUES ('31', 'EximChain\\screenshots\\Eximchain-Token-Allocation.jpg', '', '4');
INSERT INTO `main_screen_shot` VALUES ('32', 'Grain\\screenshots\\Grain-Advisors.png', '', '5');
INSERT INTO `main_screen_shot` VALUES ('33', 'Grain\\screenshots\\Grain-Roadmap.png', '', '5');
INSERT INTO `main_screen_shot` VALUES ('34', 'Grain\\screenshots\\Grain-Spending-plan.jpg', '', '5');
INSERT INTO `main_screen_shot` VALUES ('35', 'Grain\\screenshots\\Grain-Team.png', '', '5');
INSERT INTO `main_screen_shot` VALUES ('36', 'Grain\\screenshots\\Grain-Token-details.png', '', '5');
INSERT INTO `main_screen_shot` VALUES ('37', 'Grain\\screenshots\\Grain-work-model.png', '', '5');
INSERT INTO `main_screen_shot` VALUES ('38', 'Kairos\\screenshots\\Kairos-bonuses.jpg', '', '6');
INSERT INTO `main_screen_shot` VALUES ('39', 'Kairos\\screenshots\\Kairos-Competitors.jpg', '', '6');
INSERT INTO `main_screen_shot` VALUES ('40', 'Kairos\\screenshots\\Kairos-ICO-Class-T-token.jpg', '', '6');
INSERT INTO `main_screen_shot` VALUES ('41', 'Kairos\\screenshots\\Kairos-ICO-Face-token.jpg', '', '6');
INSERT INTO `main_screen_shot` VALUES ('42', 'Kairos\\screenshots\\Kairos-Partners.jpg', '', '6');
INSERT INTO `main_screen_shot` VALUES ('43', 'Kairos\\screenshots\\Kairos-Team.jpg', '', '6');
INSERT INTO `main_screen_shot` VALUES ('44', 'Kairos\\screenshots\\Kairos-Timeline-of-key-events.jpg', '', '6');
INSERT INTO `main_screen_shot` VALUES ('45', 'Kairos\\screenshots\\Kairos-Token-breakdown.jpg', '', '6');
INSERT INTO `main_screen_shot` VALUES ('46', 'Kairos\\screenshots\\Kairos-Use-of-proceeds.jpg', '', '6');
