-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 03 juin 2022 à 13:25
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ncs`
--

-- --------------------------------------------------------

--
-- Structure de la table `ncs_inventories`
--

CREATE TABLE `ncs_inventories` (
  `character_id` int(11) NOT NULL,
  `max_weight` float NOT NULL,
  `allowed_content` text NOT NULL,
  `accounts` text NOT NULL,
  `weapons` text NOT NULL,
  `items` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ncs_players`
--

CREATE TABLE `ncs_players`
(
    `player_identifier` varchar(80) NOT NULL,
    `role_identifier`   varchar(30) DEFAULT NULL,
    `last_source`       int(11)     DEFAULT NULL,
    `last_character_id` int(11)     DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ncs_players_characters`
--

CREATE TABLE `ncs_players_characters`
(
    `player_identifier` varchar(80) NOT NULL,
    `character_id`      int(11)     NOT NULL,
    `identity`          text        NOT NULL,
    `skin`              text DEFAULT NULL,
    `last_position`     text DEFAULT NULL,
    `metadata`          text        NOT NULL,
    `is_dead`           int(1)      DEFAULT 0,
    `death_cause`       text        DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ncs_roles`
--

CREATE TABLE `ncs_roles`
(
    `role_identifier` varchar(80) NOT NULL,
    `label`           varchar(80) NOT NULL,
    `power_index`     int(3)      NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

--
-- Déchargement des données de la table `ncs_roles`
--

INSERT INTO `ncs_roles` (`role_identifier`, `label`, `power_index`)
VALUES ('admin', 'Admin', 100),
       ('user', 'User', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ncs_roles_permissions`
--

CREATE TABLE `ncs_roles_permissions`
(
    `role_identifier` varchar(80) NOT NULL,
    `permission`      varchar(10) NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

--
-- Déchargement des données de la table `ncs_roles_permissions`
--

INSERT INTO `ncs_roles_permissions` (`role_identifier`, `permission`) VALUES
('admin', 'canRevive'),
('admin', 'canKill'),
('admin', 'canGiveAcc'),
('admin', 'canGiveIte');

--
-- Structure de la table `ncs_bans`
--

CREATE TABLE `ncs_bans` (
  `id` int(11) NOT NULL,
  `license` varchar(80) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--


CREATE TABLE IF NOT EXISTS `ncs_items` (
    `name` varchar(25) NOT NULL,
    `label` varchar(25) NOT NULL,
    `weight` int(11) NOT NULL,
    PRIMARY KEY (`name`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ncs_items` (`name`, `label`, `weight`) VALUES
('bread', 'Bread', 1),
 ('water', 'water', 1);


CREATE TABLE IF NOT EXISTS `ncs_jobs` (
    `name` varchar(255) NOT NULL,
    `label` varchar(255) NOT NULL,
    PRIMARY KEY (`name`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DELETE FROM `ncs_jobs`;
INSERT INTO `ncs_jobs` (`name`, `label`) VALUES
('ambulance', 'medecin'),
('police', 'Policier');

CREATE TABLE IF NOT EXISTS `ncs_jobs_grades` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(25) NOT NULL,
    `nameGrade` varchar(25) NOT NULL,
    `label` varchar(25) NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


INSERT INTO `ncs_jobs_grades` (`id`, `name`, `nameGrade`, `label`) VALUES
(1, 'police', 'recrue', 'Cadet'),
(2, 'police', 'officier', 'Officier'),
(3, 'ambulance', 'recrue', 'Recrue');


--
-- Index pour la table `ncs_bans`
--
ALTER TABLE `ncs_bans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ncs_bans`
--
ALTER TABLE `ncs_bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- Structure de la table `ncs_warns`
--

CREATE TABLE `ncs_warns` (
  `id` int(11) NOT NULL,
  `license` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour la table `ncs_bans`
--
ALTER TABLE `ncs_warns`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ncs_bans`
--
ALTER TABLE `ncs_warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ncs_inventories`
--
ALTER TABLE `ncs_inventories`
  ADD PRIMARY KEY (`character_id`);

--
-- Index pour la table `ncs_players`
--
ALTER TABLE `ncs_players`
    ADD PRIMARY KEY (`player_identifier`);

--
-- Index pour la table `ncs_players_characters`
--
ALTER TABLE `ncs_players_characters`
    ADD PRIMARY KEY (`character_id`);

--
-- Index pour la table `ncs_roles`
--
ALTER TABLE `ncs_roles`
    ADD PRIMARY KEY (`role_identifier`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ncs_players_characters`
--
ALTER TABLE `ncs_players_characters`
    MODIFY `character_id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
