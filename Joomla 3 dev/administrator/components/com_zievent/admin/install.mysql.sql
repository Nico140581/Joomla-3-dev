-- zi Event
-- Gestion des évènements
--
-- Deslandes Nicolas
-- 

-- Version 1 - 17/02/204
-- 		Création des structures de tables : 
--			- zievent_param --> paramètres
--			- zievent_subscriber --> abonnés
--			- zievent_event --> évènements


--
-- Structure de la table zievent_param --> paramètres
--
CREATE TABLE IF NOT EXISTS `#__zievent_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


--
-- Structure de la table zievent_subscriber --> abonnés
--
CREATE TABLE IF NOT EXISTS `#__zievent_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
);


--
-- Structures de la table zievent_event --> évènements
--
CREATE TABLE IF NOT EXISTS `#__zievent_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `introtext` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `images` text NOT NULL,
  PRIMARY KEY (`id`)
);