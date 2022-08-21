# --- WireDatabaseBackup {"time":"2022-08-21 09:38:57","user":"","dbName":"processclasic","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(128) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '156');

DROP TABLE IF EXISTS `field_birthday`;
CREATE TABLE `field_birthday` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_birthday` (`pages_id`, `data`) VALUES('1001', '2000-01-01 00:00:00');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('27', '<h3>The page you were looking for is not found.</h3>\r\n<p>Please use our search engine or navigation above to find the page.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1075', '<h2>Where does it come from?</h2>\n\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1028', '<h2>Why do we use it?</h2>\n\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1027', '<h2>What is Lorem Ipsum?</h2>\n\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1001', '<p><strong>Officiis </strong>eligendi itaque labore et dolorum mollitia officiis optio vero. Quisquam sunt adipisci omnis et ut. Nulla accusantium dolor incidunt officia tempore. Et eius omnis. Cupiditate ut dicta maxime officiis quidem quia. Sed et consectetur qui quia repellendus itaque neque. Aliquid amet quidem ut quaerat cupiditate. <em>Ab et eum qui repellendus omnis culpa magni laudantium dolores.</em> Recusandae est praesentium consequatur eos voluptatem. Vitae dolores aliquam itaque odio nihil. Neque ut neque ut quae voluptas. Maxime corporis aut ut ipsum consequatur. Repudiandae sunt sequi minus qui et. Doloribus molestiae officiis. Soluta eligendi fugiat omnis enim. Numquam alias sint possimus eveniet ad. <q><em>Ratione in earum eum magni totam</em>.</q></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1026', '<p>Deserunt numquam exercitationem. Officiis quo odio sint voluptas consequatur ut a odio voluptatem. Sit dolorum debitis veritatis natus dolores. Quasi ratione sint. Sit quaerat ipsum dolorem.</p>');

DROP TABLE IF EXISTS `field_city`;
CREATE TABLE `field_city` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_city` (`pages_id`, `data`) VALUES('1001', 'Braila');

DROP TABLE IF EXISTS `field_client_message`;
CREATE TABLE `field_client_message` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_client_subject`;
CREATE TABLE `field_client_subject` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_client_subject` (`pages_id`, `data`) VALUES('1075', 'Client any subject');

DROP TABLE IF EXISTS `field_contact_heading`;
CREATE TABLE `field_contact_heading` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contact_heading` (`pages_id`, `data`) VALUES('1075', 'Our contact page');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_favicon`;
CREATE TABLE `field_favicon` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_favicon` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1036', 'llogo22nou.png', '0', '', '2022-08-20 16:43:58', '2022-08-20 16:43:58', '', '366141', '41', '41', '1545', '1494', '1.03');

DROP TABLE IF EXISTS `field_galery_image`;
CREATE TABLE `field_galery_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1053', '8.jpg', '0', '', '2022-08-20 19:22:40', '2022-08-20 19:22:40', '', '63732', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1045', '1-1.jpg', '0', '', '2022-08-20 18:31:00', '2022-08-20 18:31:00', '', '94519', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1046', '2.jpg', '0', '', '2022-08-20 18:31:00', '2022-08-20 18:31:00', '', '79028', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1047', '3.jpg', '0', '', '2022-08-20 18:31:00', '2022-08-20 18:31:00', '', '71488', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1052', '7.jpg', '0', '', '2022-08-20 19:22:40', '2022-08-20 19:22:40', '', '75446', '41', '41', '500', '498', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1048', '4.jpg', '0', '', '2022-08-20 18:31:00', '2022-08-20 18:31:00', '', '51599', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1049', '5.jpg', '0', '', '2022-08-20 18:31:00', '2022-08-20 18:31:00', '', '42026', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1050', '6.jpg', '0', '', '2022-08-20 18:31:00', '2022-08-20 18:31:00', '', '33338', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1054', '9.jpg', '0', '', '2022-08-20 19:22:40', '2022-08-20 19:22:40', '', '68967', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1055', '10.jpg', '0', '', '2022-08-20 19:22:40', '2022-08-20 19:22:40', '', '37758', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1056', '11.jpg', '0', '', '2022-08-20 19:22:40', '2022-08-20 19:22:40', '', '60146', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1057', '12.jpg', '0', '', '2022-08-20 19:22:40', '2022-08-20 19:22:40', '', '80794', '41', '41', '500', '500', '1.00');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1066', 'gallery-13.jpg', '0', '', '2022-08-20 19:25:32', '2022-08-20 19:25:32', '', '613771', '41', '41', '1920', '1440', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1065', 'gallery-12.jpg', '0', '', '2022-08-20 19:25:32', '2022-08-20 19:25:32', '', '118728', '41', '41', '1920', '1440', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1064', 'gallery-11.jpg', '0', '', '2022-08-20 19:25:32', '2022-08-20 19:25:32', '', '191991', '41', '41', '1920', '1440', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1059', 'gallery-7.jpg', '0', '', '2022-08-20 19:24:43', '2022-08-20 19:24:43', '', '371929', '41', '41', '1920', '1440', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1060', 'gallery-8.jpg', '0', '', '2022-08-20 19:24:43', '2022-08-20 19:24:43', '', '187657', '41', '41', '1920', '1440', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1061', 'gallery-9.jpg', '0', '', '2022-08-20 19:24:43', '2022-08-20 19:24:43', '', '152783', '41', '41', '1920', '1440', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1062', 'gallery-10.jpg', '0', '', '2022-08-20 19:24:43', '2022-08-20 19:24:43', '', '325115', '41', '41', '1920', '1440', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1067', 'gallery-14.jpg', '0', '', '2022-08-20 19:25:32', '2022-08-20 19:25:32', '', '339998', '41', '41', '1920', '1440', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1069', 'gallery-15.jpg', '0', '', '2022-08-20 19:26:37', '2022-08-20 19:26:37', '', '169145', '41', '41', '1920', '1440', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1070', 'gallery-16.jpg', '0', '', '2022-08-20 19:26:37', '2022-08-20 19:26:37', '', '299838', '41', '41', '1920', '1440', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1071', 'app-1.jpg', '0', '', '2022-08-20 19:26:37', '2022-08-20 19:26:37', '', '67064', '41', '41', '1024', '768', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1072', 'books-1.jpg', '0', '', '2022-08-20 19:26:37', '2022-08-20 19:26:37', '', '80146', '41', '41', '1024', '768', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1073', 'branding-1.jpg', '0', '', '2022-08-20 19:26:37', '2022-08-20 19:26:37', '', '25514', '41', '41', '1024', '768', '1.33');
INSERT INTO `field_galery_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1074', 'product-1.jpg', '0', '', '2022-08-20 19:26:37', '2022-08-20 19:26:37', '', '62035', '41', '41', '1024', '768', '1.33');

DROP TABLE IF EXISTS `field_google_map`;
CREATE TABLE `field_google_map` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_google_map` (`pages_id`, `data`) VALUES('1075', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d22460.81012508045!2d27.962731272119115!3d45.27607042344731!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sro!4v1661058063384!5m2!1sen!2sro\" width=\"800\" height=\"450\" style=\"border:2px;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'Basic Galery site');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1001', 'Professional Photographer from New York');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1028', 'It is a long established fact that a reader will be distracted by the readable content of a page');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1026', 'Because the image has a z-index of -1, it will be placed behind the heading.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1027', 'Lorem Ipsum is simply dummy');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1075', 'This is contact form');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `filedata` mediumtext DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1001', 'pexels-lucas-prado-1828593.jpg', '0', '', '2022-08-21 08:18:58', '2022-08-21 08:18:58', '214402', '41', '41', '', '1024', '1512', '0.68');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1027', 'gallery-1.jpg', '0', '', '2022-08-19 23:01:08', '2022-08-19 23:01:08', '254691', '41', '41', '', '1920', '1440', '1.33');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1028', 'gallery-2.jpg', '0', '', '2022-08-19 23:19:15', '2022-08-19 23:19:15', '376843', '41', '41', '', '1920', '1440', '1.33');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1029', 'gallery-3.jpg', '0', '', '2022-08-20 07:10:18', '2022-08-20 07:10:18', '301323', '41', '41', '', '1920', '1440', '1.33');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1030', 'gallery-4.jpg', '0', '', '2022-08-20 07:20:19', '2022-08-20 07:20:19', '290800', '41', '41', '', '1920', '1440', '1.33');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1031', 'gallery-5.jpg', '0', '', '2022-08-20 07:20:53', '2022-08-20 07:20:53', '493094', '41', '41', '', '1920', '1440', '1.33');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1032', 'gallery-6.jpg', '0', '', '2022-08-20 07:21:22', '2022-08-20 07:21:22', '351024', '41', '41', '', '1920', '1440', '1.33');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1033', 'gallery-7.jpg', '0', '', '2022-08-20 07:21:53', '2022-08-20 07:21:53', '371929', '41', '41', '', '1920', '1440', '1.33');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1034', 'gallery-8.jpg', '0', '', '2022-08-20 07:22:52', '2022-08-20 07:22:52', '187657', '41', '41', '', '1920', '1440', '1.33');

DROP TABLE IF EXISTS `field_logo`;
CREATE TABLE `field_logo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_logo` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1036', 'media_logo-2.png', '0', '', '2022-08-20 16:43:58', '2022-08-20 16:43:58', '', '42094', '41', '41', '572', '244', '2.34');

DROP TABLE IF EXISTS `field_mail_from`;
CREATE TABLE `field_mail_from` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_mail_from` (`pages_id`, `data`) VALUES('1075', 'ciuculanmar@yahoo.com');

DROP TABLE IF EXISTS `field_mail_subject`;
CREATE TABLE `field_mail_subject` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_mail_subject` (`pages_id`, `data`) VALUES('1075', 'Our subject about photography');

DROP TABLE IF EXISTS `field_mail_to`;
CREATE TABLE `field_mail_to` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_mail_to` (`pages_id`, `data`) VALUES('1075', 'ciuculanmar@yahoo.com');

DROP TABLE IF EXISTS `field_media_icon`;
CREATE TABLE `field_media_icon` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_media_icon` (`pages_id`, `data`, `sort`) VALUES('1041', '4', '0');
INSERT INTO `field_media_icon` (`pages_id`, `data`, `sort`) VALUES('1040', '3', '0');
INSERT INTO `field_media_icon` (`pages_id`, `data`, `sort`) VALUES('1039', '2', '0');
INSERT INTO `field_media_icon` (`pages_id`, `data`, `sort`) VALUES('1038', '1', '0');

DROP TABLE IF EXISTS `field_media_url`;
CREATE TABLE `field_media_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_media_url` (`pages_id`, `data`) VALUES('1038', 'https://twitter.com/?lang=en');
INSERT INTO `field_media_url` (`pages_id`, `data`) VALUES('1039', 'https://www.facebook.com/');
INSERT INTO `field_media_url` (`pages_id`, `data`) VALUES('1040', 'https://www.instagram.com/?hl=en');
INSERT INTO `field_media_url` (`pages_id`, `data`) VALUES('1041', 'https://www.linkedin.com/feed/');

DROP TABLE IF EXISTS `field_name_testimonial`;
CREATE TABLE `field_name_testimonial` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_name_testimonial` (`pages_id`, `data`) VALUES('1018', 'Saul Goodman');
INSERT INTO `field_name_testimonial` (`pages_id`, `data`) VALUES('1019', 'Sara Wilsson');
INSERT INTO `field_name_testimonial` (`pages_id`, `data`) VALUES('1020', 'Jena Karlis');
INSERT INTO `field_name_testimonial` (`pages_id`, `data`) VALUES('1021', 'Matt Brandon');
INSERT INTO `field_name_testimonial` (`pages_id`, `data`) VALUES('1022', 'John Larson');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_ph_number`;
CREATE TABLE `field_ph_number` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ph_number` (`pages_id`, `data`) VALUES('1075', '123456789');

DROP TABLE IF EXISTS `field_phone`;
CREATE TABLE `field_phone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_phone` (`pages_id`, `data`) VALUES('1001', '12345678');

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '155');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '157');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1023', '171');

DROP TABLE IF EXISTS `field_rep_galery`;
CREATE TABLE `field_rep_galery` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_galery` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1027', '1045,1046,1047,1048,1049,1050', '6', '1044');
INSERT INTO `field_rep_galery` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1028', '1052,1053,1054,1055,1056,1057', '6', '1051');
INSERT INTO `field_rep_galery` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1029', '1059,1060,1061,1062', '4', '1058');
INSERT INTO `field_rep_galery` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1030', '1064,1065,1066,1067', '4', '1063');
INSERT INTO `field_rep_galery` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1031', '1069,1070,1071,1072,1073,1074', '6', '1068');

DROP TABLE IF EXISTS `field_rep_media`;
CREATE TABLE `field_rep_media` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_media` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1036', '1038,1039,1040,1041', '4', '1037');

DROP TABLE IF EXISTS `field_rep_testimonial`;
CREATE TABLE `field_rep_testimonial` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_testimonial` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1001', '1018,1019,1020,1021,1022', '5', '1017');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_seo`;
CREATE TABLE `field_seo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `meta_inherit` tinyint(3) unsigned NOT NULL,
  `opengraph_inherit` tinyint(3) unsigned NOT NULL,
  `twitter_inherit` tinyint(3) unsigned NOT NULL,
  `robots_inherit` tinyint(3) unsigned NOT NULL,
  `sitemap_inherit` tinyint(3) unsigned NOT NULL,
  `structuredData_inherit` tinyint(3) unsigned NOT NULL,
  `sitemap_include` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_seo` (`pages_id`, `data`, `meta_inherit`, `opengraph_inherit`, `twitter_inherit`, `robots_inherit`, `sitemap_inherit`, `structuredData_inherit`, `sitemap_include`) VALUES('1026', '{\"meta_title\":\"Galery\",\"meta_description\":\"inherit\",\"meta_keywords\":\"inherit\",\"meta_canonicalUrl\":\"inherit\",\"opengraph_title\":\"inherit\",\"opengraph_description\":\"inherit\",\"opengraph_image\":\"inherit\",\"opengraph_imageAlt\":\"inherit\",\"opengraph_type\":\"inherit\",\"opengraph_locale\":\"inherit\",\"opengraph_siteName\":\"inherit\",\"twitter_card\":\"inherit\",\"twitter_site\":\"inherit\",\"twitter_creator\":\"inherit\",\"robots_noIndex\":\"inherit\",\"robots_noFollow\":\"inherit\",\"structuredData_breadcrumb\":\"inherit\",\"sitemap_include\":\"inherit\",\"sitemap_priority\":\"inherit\",\"sitemap_changeFrequency\":\"inherit\"}', '0', '1', '1', '1', '1', '1', '1');

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1027', 'Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1001', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et \nmagna aliqua.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1005', 'View this template\'s source for a demonstration of how to create a basic site map. ');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1028', 'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1026', 'Odio et unde deleniti.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1075', 'Contact us any time');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', 'ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients. ');

DROP TABLE IF EXISTS `field_testimonial_image`;
CREATE TABLE `field_testimonial_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_testimonial_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1018', 'testimonials-1.jpg', '0', '', '2022-08-19 17:56:46', '2022-08-19 17:56:46', '', '39727', '41', '41', '400', '400', '1.00');
INSERT INTO `field_testimonial_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1019', 'testimonials-2.jpg', '0', '', '2022-08-19 17:57:18', '2022-08-19 17:57:18', '', '57584', '41', '41', '400', '400', '1.00');
INSERT INTO `field_testimonial_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1020', 'testimonials-3.jpg', '0', '', '2022-08-19 17:59:02', '2022-08-19 17:59:02', '', '17247', '41', '41', '400', '400', '1.00');
INSERT INTO `field_testimonial_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1021', 'testimonials-4.jpg', '0', '', '2022-08-19 17:59:02', '2022-08-19 17:59:02', '', '20220', '41', '41', '400', '400', '1.00');
INSERT INTO `field_testimonial_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1022', 'testimonials-5.jpg', '0', '', '2022-08-19 17:59:02', '2022-08-19 17:59:02', '', '22595', '41', '41', '400', '400', '1.00');

DROP TABLE IF EXISTS `field_text_logo`;
CREATE TABLE `field_text_logo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_text_logo` (`pages_id`, `data`) VALUES('1036', 'Marian Media');

DROP TABLE IF EXISTS `field_text_testimonial`;
CREATE TABLE `field_text_testimonial` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_text_testimonial` (`pages_id`, `data`) VALUES('1018', 'Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.');
INSERT INTO `field_text_testimonial` (`pages_id`, `data`) VALUES('1019', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.');
INSERT INTO `field_text_testimonial` (`pages_id`, `data`) VALUES('1020', 'Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.');
INSERT INTO `field_text_testimonial` (`pages_id`, `data`) VALUES('1021', 'Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.');
INSERT INTO `field_text_testimonial` (`pages_id`, `data`) VALUES('1022', 'Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Page Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1001', 'About');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'First Galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1000', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'rep_media');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1026', 'Galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1005', 'Site Map');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1009', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Use the front-end page editor');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'rep_testimimonial');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'about');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Croppable Images 3');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Crop images with CroppableImage3');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Second galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Third Galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'forth galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'fifth galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'sixth galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Seventh galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'Eith galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1036', 'Option');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1037', 'option');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1043', 'rep_galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'first-galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'second-galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1058', 'third-galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1063', 'forth-galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1068', 'fifth-galery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1075', 'Contact');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'about');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'repeater_rep_testimonial');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'galery-single');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'galery');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'Option');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'repeater_rep_media');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'repeater_rep_galery');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'contact');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `fields_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '99', '5', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '101', '6', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '102', '7', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '92', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '105', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '107', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '106', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '103', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '44', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '107', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '104', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '44', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '116', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '107', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '76', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '107', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '113', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '112', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '109', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '114', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '110', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '108', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '115', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '117', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '118', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '119', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '120', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '121', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '122', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '124', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '76', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '125', '11', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"collapsed\":0,\"columnWidth\":50,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255,\"tags\":\"about\",\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"columnWidth\":20}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('82', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2,4,8],\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"collapsed\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":1,\"descriptionRows\":1,\"fileSchema\":270,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":2,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"useTags\":0,\"collapsed\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"columnWidth\":30}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextarea', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"columnWidth\":30,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":0,\"columnWidth\":40,\"minlength\":0,\"maxlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the Title if a longer headline is needed than what you want to appear in navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"columnWidth\":50,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeDatetime', 'birthday', '0', 'Birthday', '{\"collapsed\":0,\"inputType\":\"html\",\"datepicker\":0,\"timeInputSelect\":0,\"dateInputFormat\":\"d-M-Y\",\"size\":25,\"dateSelectFormat\":\"yMd\",\"yearFrom\":1922,\"yearTo\":2042,\"yearLock\":0,\"htmlType\":\"date\",\"tags\":\"about\",\"dateOutputFormat\":\"j F Y\",\"defaultToday\":1,\"columnWidth\":25}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeText', 'phone', '0', 'Phone', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"about\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeText', 'city', '0', 'city', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"about\",\"columnWidth\":20}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeImage', 'testimonial_image', '0', 'Testimonial Image', '{\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"tags\":\"about\",\"collapsed\":0,\"columnWidth\":30}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeTextarea', 'text_testimonial', '0', 'text testimonial', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"about\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"rows\":5,\"columnWidth\":40}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeRepeater', 'rep_testimonial', '0', 'Rep Testimonial', '{\"template_id\":44,\"parent_id\":1016,\"repeaterFields\":[104,103,106],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"familyFriendly\":0,\"collapsed\":0,\"tags\":\"about\",\"columnWidth\":70}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeText', 'name_testimonial', '0', 'Name testimonial', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"about\",\"columnWidth\":30}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeSeoMaestro', 'seo', '0', 'seo', '{\"meta_title\":\"{title}\",\"opengraph_title\":\"{seo.meta.title}\",\"opengraph_description\":\"{seo.meta.description}\",\"opengraph_type\":\"website\",\"twitter_card\":\"summary\",\"robots_noIndex\":1,\"robots_noFollow\":1,\"structuredData_breadcrumb\":1,\"sitemap_include\":1,\"sitemap_priority\":\"0.5\",\"sitemap_changeFrequency\":\"monthly\",\"collapsed\":5,\"inputfield_meta_show\":1,\"inputfield_meta\":[\"title\",\"description\",\"keywords\",\"canonicalUrl\"],\"inputfield_opengraph_show\":1,\"inputfield_opengraph\":[\"title\",\"description\",\"image\",\"imageAlt\",\"type\",\"locale\",\"siteName\"],\"inputfield_twitter_show\":1,\"inputfield_twitter\":[\"card\",\"site\",\"creator\"],\"inputfield_robots_show\":1,\"inputfield_robots\":[\"noIndex\",\"noFollow\"],\"inputfield_structuredData_show\":1,\"inputfield_structuredData\":[\"breadcrumb\"],\"inputfield_sitemap_show\":1,\"inputfield_sitemap\":[\"include\",\"priority\",\"changeFrequency\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeImage', 'favicon', '0', 'Favicon', '{\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"tags\":\"option\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeImage', 'logo', '0', 'Logo', '{\"fileSchema\":270,\"tags\":\"option\",\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeRepeater', 'rep_media', '0', 'Rep Media', '{\"template_id\":48,\"parent_id\":1035,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"familyFriendly\":0,\"collapsed\":0,\"tags\":\"option\",\"repeaterFields\":[112,113],\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeOptions', 'media_icon', '0', 'Media Icon', '{\"tags\":\"option\",\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0,\"columnWidth\":50,\"size\":10}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeURL', 'media_url', '0', 'Media url', '{\"tags\":\"option\",\"textformatters\":[\"TextformatterEntities\"],\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeText', 'text_logo', '0', 'text logo', '{\"tags\":\"option\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeImage', 'galery_image', '0', 'Galery Image', '{\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"tags\":\"galery\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeRepeater', 'rep_galery', '0', 'Rep Galery', '{\"template_id\":49,\"parent_id\":1043,\"repeaterFields\":[115],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"familyFriendly\":0,\"collapsed\":0,\"tags\":\"galery\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeEmail', 'mail_to', '0', 'Mail To', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":250,\"showCount\":0,\"size\":0,\"tags\":\"contact\",\"columnWidth\":30}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeEmail', 'mail_from', '0', 'Mail From', '{\"tags\":\"contact\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":250,\"showCount\":0,\"size\":0,\"columnWidth\":30}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeTextarea', 'mail_subject', '0', 'Mail Subject', '{\"tags\":\"contact\",\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"columnWidth\":20}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeTextarea', 'client_subject', '0', 'Client Subject', '{\"tags\":\"contact\",\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"columnWidth\":20}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeTextarea', 'client_message', '0', 'Client Message', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"tags\":\"contact\",\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"columnWidth\":60}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeText', 'contact_heading', '0', 'Contact Heading', '{\"tags\":\"contact\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypeInteger', 'ph_number', '0', 'Ph Number', '{\"precision\":2,\"zeroNotEmpty\":0,\"inputType\":\"text\",\"size\":10,\"tags\":\"contact\",\"collapsed\":0,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('125', 'FieldtypeTextarea', 'google_map', '0', 'Google Map', '{\"tags\":\"contact\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"columnWidth\":60}');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_ft` (`title`),
  FULLTEXT KEY `value_ft` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('112', '4', 'bi bi-linkedin', '', '3');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('112', '3', 'bi bi-instagram', '', '2');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('112', '2', 'bi bi-facebook', '', '1');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('112', '1', 'bi bi-twitter', '', '0');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '{\"viewAction\":\"panel\",\"useBookmarks\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'InputfieldTextTags', '0', '', '2022-08-19 17:38:16');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"admin_theme\"]}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":19,\"coreVersion\":\"3.0.184\"}', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('92', 'InputfieldTinyMCE', '64', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'InputfieldCKEditor', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'MarkupHTMLPurifier', '0', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('153', 'JqueryMagnific', '1', '', '2022-08-15 13:02:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'InputfieldToggle', '0', '', '2022-08-19 17:38:16');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'FieldtypeDatetimeAdvanced', '33', '{\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2022-08-19 18:21:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'ProcessRecentPages', '1', '', '2022-08-15 13:02:29');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'AdminThemeUikit', '10', '{\"useAsLogin\":\"\",\"userAvatar\":\"icon.user-circle\",\"userLabel\":\"{Name}\",\"logoURL\":\"\",\"logoAction\":\"0\",\"layout\":\"sidenav-tree\",\"ukGrid\":\"0\",\"maxWidth\":1600,\"groupNotices\":\"1\",\"cssURL\":\"\",\"inputSize\":\"m\",\"noBorderTypes\":[],\"offsetTypes\":[],\"toggleBehavior\":\"0\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2022-08-15 13:02:29');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('157', 'ProcessLogger', '1', '', '2022-08-15 13:02:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'InputfieldIcon', '0', '', '2022-08-15 13:02:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'WireDT', '2', '', '2022-08-19 18:21:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'PageFrontEdit', '2', '{\"inlineEditFields\":[76,102,92,78,101,82,79,1,100],\"inlineLimitPage\":\"1\",\"buttonLocation\":\"auto\",\"buttonType\":\"auto\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2022-08-19 18:22:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeOptions', '1', '', '2022-08-19 18:33:25');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1015,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2022-08-19 18:33:54');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'InputfieldRepeater', '0', '', '2022-08-19 18:33:54');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'HelperFieldLinks', '3', '', '2022-08-19 19:55:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'CroppableImage3', '0', '', '2022-08-19 19:57:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'FieldtypeCroppableImage3', '1', '', '2022-08-19 19:57:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'InputfieldCroppableImage3', '0', '', '2022-08-19 19:57:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'ProcessCroppableImage3', '1', '', '2022-08-19 19:57:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'SeoMaestro', '3', '{\"sitemapEnable\":1,\"sitemapPath\":\"sitemap.seomaestro.xml\",\"sitemapCache\":\"120\",\"baseUrl\":\"http:\\/\\/localhost\\/processclasic\\/\",\"defaultLanguage\":\"en\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2022-08-19 19:58:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'FieldtypeSeoMaestro', '1', '', '2022-08-19 19:58:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'InputfieldSeoMaestro', '0', '', '2022-08-19 19:58:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'AdminThemeReno', '10', '{\"colors\":\"blue\",\"avatar_field_user\":\"\",\"userFields_user\":\"name\",\"notices\":\"fa-bell\",\"home\":\"fa-home\",\"signout\":\"fa-power-off\",\"page\":\"fa-file-text\",\"setup\":\"fa-wrench\",\"module\":\"fa-briefcase\",\"access\":\"fa-unlock\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2022-08-21 09:44:50');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT 0,
  `templates_id` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1077 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2022-08-21 07:57:19', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2022-08-15 13:02:29', '40', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2022-08-15 13:02:44', '40', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2022-08-15 13:02:45', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2022-08-15 13:02:45', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '3', '2022-08-15 13:02:10', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2022-08-21 09:50:44', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '41', '2022-08-15 13:02:10', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1000', '1', '26', 'search', '1025', '2022-08-21 07:56:51', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1001', '1', '43', 'about', '1', '2022-08-21 09:40:27', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1027', '1026', '45', 'first-galery', '1', '2022-08-20 19:31:00', '41', '2022-08-19 23:55:27', '41', '2022-08-19 23:55:42', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1005', '1', '34', 'site-map', '1', '2022-08-21 07:57:19', '41', '2022-08-15 13:02:10', '2', '2022-08-15 13:02:10', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2022-08-15 13:02:10', '40', '2022-08-15 13:02:10', '40', '2022-08-15 13:02:10', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2022-08-15 13:02:10', '40', '2022-08-15 13:02:10', '40', '2022-08-15 13:02:10', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1009', '3', '2', 'recent-pages', '1', '2022-08-15 13:02:29', '40', '2022-08-15 13:02:29', '40', '2022-08-15 13:02:29', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '31', '5', 'page-edit-recent', '1', '2022-08-15 13:02:29', '40', '2022-08-15 13:02:29', '40', '2022-08-15 13:02:29', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '22', '2', 'logs', '1', '2022-08-15 13:02:34', '40', '2022-08-15 13:02:34', '40', '2022-08-15 13:02:34', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '31', '5', 'logs-view', '1', '2022-08-15 13:02:34', '40', '2022-08-15 13:02:34', '40', '2022-08-15 13:02:34', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-edit', '1', '2022-08-15 13:02:34', '40', '2022-08-15 13:02:34', '40', '2022-08-15 13:02:34', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'page-edit-front', '1', '2022-08-19 18:22:36', '41', '2022-08-19 18:22:36', '41', '2022-08-19 18:22:36', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '2', '2', 'repeaters', '1036', '2022-08-19 18:33:54', '41', '2022-08-19 18:33:54', '41', '2022-08-19 18:33:54', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '1015', '2', 'for-field-105', '17', '2022-08-19 18:50:00', '41', '2022-08-19 18:50:00', '41', '2022-08-19 18:50:00', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1016', '2', 'for-page-1001', '17', '2022-08-19 18:55:31', '41', '2022-08-19 18:55:31', '41', '2022-08-19 18:55:31', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1017', '44', '1660924535-9089-1', '1', '2022-08-19 18:57:18', '41', '2022-08-19 18:55:35', '41', '2022-08-19 18:56:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '1017', '44', '1660924642-2824-1', '1', '2022-08-19 19:09:25', '41', '2022-08-19 18:57:22', '41', '2022-08-19 18:59:02', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '1017', '44', '1660924611-7703-1', '1', '2022-08-19 18:59:02', '41', '2022-08-19 18:56:51', '41', '2022-08-19 18:57:18', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '1017', '44', '1660924689-9212-1', '1', '2022-08-19 19:09:25', '41', '2022-08-19 18:58:09', '41', '2022-08-19 18:59:02', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '1017', '44', '1660924718-3524-1', '1', '2022-08-19 19:09:25', '41', '2022-08-19 18:58:38', '41', '2022-08-19 18:59:02', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '3', '2', 'croppable-image-3', '1025', '2022-08-19 19:57:33', '41', '2022-08-19 19:57:33', '41', '2022-08-19 19:57:33', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '31', '5', 'croppable-image-3', '1', '2022-08-19 19:57:33', '41', '2022-08-19 19:57:33', '41', '2022-08-19 19:57:33', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '1026', '45', 'second-galery', '1', '2022-08-20 20:22:40', '41', '2022-08-20 00:19:05', '41', '2022-08-20 00:19:15', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1026', '1', '46', 'galery', '1', '2022-08-20 15:35:44', '41', '2022-08-19 23:55:03', '41', '2022-08-19 23:56:04', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1026', '45', 'third-galery', '1', '2022-08-20 20:24:43', '41', '2022-08-20 08:09:12', '41', '2022-08-20 08:10:18', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '1026', '45', 'forth-galery', '1', '2022-08-20 20:25:32', '41', '2022-08-20 08:20:10', '41', '2022-08-20 08:20:19', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '1026', '45', 'fifth-galery', '1', '2022-08-20 20:26:37', '41', '2022-08-20 08:20:45', '41', '2022-08-20 08:20:53', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1026', '45', 'sixth-galery', '1', '2022-08-20 08:21:22', '41', '2022-08-20 08:21:14', '41', '2022-08-20 08:21:22', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1026', '45', 'seventh-galery', '1', '2022-08-20 08:21:53', '41', '2022-08-20 08:21:44', '41', '2022-08-20 08:21:53', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1034', '1026', '45', 'eith-galery', '1', '2022-08-20 08:22:52', '41', '2022-08-20 08:22:43', '41', '2022-08-20 08:22:52', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1015', '2', 'for-field-110', '17', '2022-08-20 17:12:47', '41', '2022-08-20 17:12:47', '41', '2022-08-20 17:12:47', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '1', '47', 'option', '2049', '2022-08-21 07:57:11', '41', '2022-08-20 17:19:53', '41', '2022-08-20 18:10:13', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1037', '1035', '2', 'for-page-1036', '17', '2022-08-20 17:19:53', '41', '2022-08-20 17:19:53', '41', '2022-08-20 17:19:53', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1038', '1037', '48', '1661005412-8567-1', '1', '2022-08-20 18:55:27', '41', '2022-08-20 17:23:32', '41', '2022-08-20 17:46:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1039', '1037', '48', '1661006673-942-1', '1', '2022-08-20 18:55:57', '41', '2022-08-20 17:44:33', '41', '2022-08-20 17:46:43', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1037', '48', '1661006698-0988-1', '1', '2022-08-20 18:55:57', '41', '2022-08-20 17:44:58', '41', '2022-08-20 17:46:43', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1037', '48', '1661006733-5893-1', '1', '2022-08-20 18:55:57', '41', '2022-08-20 17:45:33', '41', '2022-08-20 17:46:43', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1043', '1015', '2', 'for-field-116', '17', '2022-08-20 19:26:31', '41', '2022-08-20 19:26:31', '41', '2022-08-20 19:26:31', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1044', '1043', '2', 'for-page-1027', '17', '2022-08-20 19:27:44', '41', '2022-08-20 19:27:44', '41', '2022-08-20 19:27:44', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1045', '1044', '49', '1661012914-2669-1', '1', '2022-08-20 19:31:00', '41', '2022-08-20 19:28:34', '41', '2022-08-20 19:31:00', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1046', '1044', '49', '1661012987-0227-1', '1', '2022-08-20 19:31:00', '41', '2022-08-20 19:29:47', '41', '2022-08-20 19:31:00', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1047', '1044', '49', '1661012998-3877-1', '1', '2022-08-20 19:31:00', '41', '2022-08-20 19:29:58', '41', '2022-08-20 19:31:00', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1048', '1044', '49', '1661013006-2695-1', '1', '2022-08-20 19:31:00', '41', '2022-08-20 19:30:06', '41', '2022-08-20 19:31:00', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1049', '1044', '49', '1661013024-0897-1', '1', '2022-08-20 19:31:00', '41', '2022-08-20 19:30:24', '41', '2022-08-20 19:31:00', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1050', '1044', '49', '1661013050-0193-1', '1', '2022-08-20 19:31:00', '41', '2022-08-20 19:30:50', '41', '2022-08-20 19:31:00', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '1043', '2', 'for-page-1028', '17', '2022-08-20 20:21:33', '41', '2022-08-20 20:21:33', '41', '2022-08-20 20:21:33', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1052', '1051', '49', '1661016097-5719-1', '1', '2022-08-20 20:22:40', '41', '2022-08-20 20:21:37', '41', '2022-08-20 20:22:40', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1053', '1051', '49', '1661016105-143-1', '1', '2022-08-20 20:22:40', '41', '2022-08-20 20:21:45', '41', '2022-08-20 20:22:40', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1054', '1051', '49', '1661016115-6866-1', '1', '2022-08-20 20:22:40', '41', '2022-08-20 20:21:55', '41', '2022-08-20 20:22:40', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1055', '1051', '49', '1661016125-073-1', '1', '2022-08-20 20:22:40', '41', '2022-08-20 20:22:05', '41', '2022-08-20 20:22:40', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1056', '1051', '49', '1661016134-2896-1', '1', '2022-08-20 20:22:40', '41', '2022-08-20 20:22:14', '41', '2022-08-20 20:22:40', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1057', '1051', '49', '1661016148-5172-1', '1', '2022-08-20 20:22:40', '41', '2022-08-20 20:22:28', '41', '2022-08-20 20:22:40', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1058', '1043', '2', 'for-page-1029', '17', '2022-08-20 20:23:00', '41', '2022-08-20 20:23:00', '41', '2022-08-20 20:23:00', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1059', '1058', '49', '1661016183-8455-1', '1', '2022-08-20 20:24:43', '41', '2022-08-20 20:23:03', '41', '2022-08-20 20:24:43', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1060', '1058', '49', '1661016217-4761-1', '1', '2022-08-20 20:24:43', '41', '2022-08-20 20:23:37', '41', '2022-08-20 20:24:43', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1061', '1058', '49', '1661016232-8765-1', '1', '2022-08-20 20:24:43', '41', '2022-08-20 20:23:52', '41', '2022-08-20 20:24:43', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1062', '1058', '49', '1661016271-7186-1', '1', '2022-08-20 20:24:43', '41', '2022-08-20 20:24:31', '41', '2022-08-20 20:24:43', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1063', '1043', '2', 'for-page-1030', '17', '2022-08-20 20:24:55', '41', '2022-08-20 20:24:55', '41', '2022-08-20 20:24:55', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1064', '1063', '49', '1661016298-2153-1', '1', '2022-08-20 20:25:32', '41', '2022-08-20 20:24:58', '41', '2022-08-20 20:25:32', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1065', '1063', '49', '1661016304-165-1', '1', '2022-08-20 20:25:32', '41', '2022-08-20 20:25:04', '41', '2022-08-20 20:25:32', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1066', '1063', '49', '1661016311-1481-1', '1', '2022-08-20 20:25:32', '41', '2022-08-20 20:25:11', '41', '2022-08-20 20:25:32', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1067', '1063', '49', '1661016320-6362-1', '1', '2022-08-20 20:25:32', '41', '2022-08-20 20:25:20', '41', '2022-08-20 20:25:32', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1068', '1043', '2', 'for-page-1031', '17', '2022-08-20 20:25:39', '41', '2022-08-20 20:25:39', '41', '2022-08-20 20:25:39', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1069', '1068', '49', '1661016342-8671-1', '1', '2022-08-20 20:26:37', '41', '2022-08-20 20:25:42', '41', '2022-08-20 20:26:37', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1070', '1068', '49', '1661016349-9944-1', '1', '2022-08-20 20:26:37', '41', '2022-08-20 20:25:49', '41', '2022-08-20 20:26:37', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1071', '1068', '49', '1661016361-9201-1', '1', '2022-08-20 20:26:37', '41', '2022-08-20 20:26:01', '41', '2022-08-20 20:26:37', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1072', '1068', '49', '1661016374-4888-1', '1', '2022-08-20 20:26:37', '41', '2022-08-20 20:26:14', '41', '2022-08-20 20:26:37', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1073', '1068', '49', '1661016382-2013-1', '1', '2022-08-20 20:26:37', '41', '2022-08-20 20:26:22', '41', '2022-08-20 20:26:37', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1074', '1068', '49', '1661016383-7068-1', '1', '2022-08-20 20:26:37', '41', '2022-08-20 20:26:23', '41', '2022-08-20 20:26:37', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1075', '1', '50', 'contact', '1', '2022-08-21 09:58:46', '41', '2022-08-21 07:46:35', '41', '2022-08-21 07:47:44', '2');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2022-08-15 13:02:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2022-08-15 13:02:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '2', '2022-08-15 13:02:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2022-08-15 13:02:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1001', '1', '2022-08-19 18:00:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2022-08-19 18:22:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2022-08-19 18:55:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '2', '2022-08-19 18:56:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '2', '2022-08-19 18:57:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1021', '2', '2022-08-19 18:58:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '2', '2022-08-19 18:58:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '2', '2022-08-19 19:57:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '1', '2022-08-19 23:55:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1026', '1', '2022-08-19 23:55:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '1', '2022-08-20 00:19:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '1', '2022-08-20 08:09:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '1', '2022-08-20 08:20:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '1', '2022-08-20 08:20:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '1', '2022-08-20 08:21:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '1', '2022-08-20 08:21:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1034', '1', '2022-08-20 08:22:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '1', '2022-08-20 17:19:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '2', '2022-08-20 17:23:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '2', '2022-08-20 17:44:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '2', '2022-08-20 17:44:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '2', '2022-08-20 17:45:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1045', '2', '2022-08-20 19:28:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1046', '2', '2022-08-20 19:29:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1047', '2', '2022-08-20 19:29:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1048', '2', '2022-08-20 19:30:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1049', '2', '2022-08-20 19:30:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '2', '2022-08-20 19:30:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1052', '2', '2022-08-20 20:21:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '2', '2022-08-20 20:21:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '2', '2022-08-20 20:21:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1055', '2', '2022-08-20 20:22:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1056', '2', '2022-08-20 20:22:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1057', '2', '2022-08-20 20:22:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1059', '2', '2022-08-20 20:23:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1060', '2', '2022-08-20 20:23:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1061', '2', '2022-08-20 20:23:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1062', '2', '2022-08-20 20:24:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1064', '2', '2022-08-20 20:24:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1065', '2', '2022-08-20 20:25:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1066', '2', '2022-08-20 20:25:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1067', '2', '2022-08-20 20:25:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1069', '2', '2022-08-20 20:25:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1070', '2', '2022-08-20 20:25:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1071', '2', '2022-08-20 20:26:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1072', '2', '2022-08-20 20:26:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1073', '2', '2022-08-20 20:26:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1074', '2', '2022-08-20 20:26:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1075', '1', '2022-08-21 07:46:35');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1015', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1016', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1016', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '1035');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1043', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1043', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1043');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1051', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1051', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1051', '1043');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1058', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1058', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1058', '1043');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1063', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1063', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1063', '1043');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1068', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1068', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1068', '1043');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT 0,
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `cache_time` mediumint(9) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1630086528,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-university title\",\"compile\":3,\"modified\":1661060719,\"ns\":\"\\\\\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1661059601,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1630086528,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"modified\":1661059886,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'about', '97', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1661063837,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'repeater_rep_testimonial', '98', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1660930637}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'galery-single', '99', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1661063025,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'galery', '100', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1661063016,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'Option', '101', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1661007850}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'repeater_rep_media', '102', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1661004767}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'repeater_rep_galery', '103', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1661012791}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'contact', '104', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1661063052,\"ns\":\"\\\\\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":42,"numCreateTables":48,"numInserts":641,"numSeconds":0}