-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 24 juil. 2020 à 11:07
-- Version du serveur :  8.0.20-0ubuntu0.20.04.1
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wild-circus`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `author`, `photo`, `created_at`) VALUES
(1, 'We just got a new elephant in the family !', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Elisabeth Duval', 'https://cdn-media.rtl.fr/cache/LQnZ8aN3z7oPdyUKfhFZdQ/2000v1333-0/online/image/2015/0614/7778722531_un-elephant-du-cirque-bouglione-le-23-octobre-2014-a-paris-illustration.jpg', '2020-07-22 15:40:16'),
(2, 'Last year was amazing, thank you all !', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Albert Lepers', 'https://img.aws.la-croix.com/2019/01/21/1300996918/Ceremonie-ouverture-43e-festival-international-cirque-Monte-Carlo-17-janvier-2019-Monaco_0_729_486.jpg', '2020-07-22 15:43:30'),
(3, 'Happy birthday to our new member !', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Phillipe Richard', 'https://static.wixstatic.com/media/aebbc6_5999b2953fc3457987ef00815d6e7f96~mv2.jpg', '2020-07-22 15:45:06');

-- --------------------------------------------------------

--
-- Structure de la table `artist`
--

CREATE TABLE `artist` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artist`
--

INSERT INTO `artist` (`id`, `name`, `description`, `photo`, `speciality`) VALUES
(1, 'Capucine Lemieux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', 'https://i.postimg.cc/yN6z5d2r/121418ccd5edcada06e11721f3917975.jpg', 'Contortion'),
(2, 'William Watson', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', 'https://i.postimg.cc/ZnrCKnjz/68cf4bc7fa917e332150b96478fe29cb.jpg', 'Clown'),
(3, 'Tomás Lima Rodrigues', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', 'https://i.postimg.cc/fWX3vqsq/d8ef568898b75374f532e5fe042e9604.jpg\r\n', 'Magic'),
(4, 'Ava Rimmer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', 'https://i.postimg.cc/L6fRgGzv/55ca53715be77f9872ddfdb31bbeb9ef.jpg', 'Trapeze'),
(5, 'Doreen Koch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', 'https://i.postimg.cc/9XDcCD06/8d03155709d35149e8bd953e680c60b3.jpg\r\n', 'Juggling'),
(6, 'Anthony Dyer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', 'https://i.postimg.cc/tR8pT9VY/a28228675407cc761e7b391ba1fd99cd.jpg\r\n', 'Clown'),
(7, 'Adrienne Séguin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', 'https://i.postimg.cc/x12Qvg5Q/a737e5ab48365b5dea7284897b21934c.jpg\r\n', 'Juggling');

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

CREATE TABLE `city` (
  `id` int NOT NULL,
  `country_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`id`, `country_id`, `name`) VALUES
(1, 1, 'Cancún'),
(2, 1, 'Mérida'),
(3, 1, 'Tijuana'),
(4, 2, 'Vancouver'),
(5, 2, 'Montréal'),
(6, 2, 'Toronto'),
(7, 3, 'Los Angeles'),
(8, 3, 'Chicago'),
(9, 3, 'New York'),
(10, 4, 'Madrid'),
(11, 4, 'Barcelone'),
(12, 4, 'Séville'),
(13, 5, 'Lyon'),
(14, 5, 'Paris'),
(15, 5, 'Lille'),
(16, 6, 'Berlin'),
(17, 6, 'Hambourg'),
(18, 6, 'Munich'),
(19, 7, 'Canton'),
(20, 7, 'Pékin'),
(21, 7, 'Shanghai'),
(22, 8, 'Tokyo'),
(23, 8, 'Yokohama'),
(24, 8, 'Osaka'),
(25, 9, 'Bombay'),
(26, 9, 'New Delhi'),
(27, 9, 'Calcutta');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `subject`, `email`, `name`, `message`, `created_at`) VALUES
(1, 'Technical Problem', 'andraurelien@yahoo.fr', 'Aurélien', 'Hello I have an issue with the site', '2020-07-23 15:28:24'),
(2, 'Technical Problem', 'andraurelien@yahoo.fr', 'jeff', 'Hello i got a problem with my life', '2020-07-23 15:45:41');

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Mexico'),
(2, 'Canada'),
(3, 'United States'),
(4, 'Spain'),
(5, 'France'),
(6, 'Germany'),
(7, 'China'),
(8, 'Japan'),
(9, 'India');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200722123856', '2020-07-22 14:39:01', 348),
('DoctrineMigrations\\Version20200723101958', '2020-07-23 12:20:02', 94),
('DoctrineMigrations\\Version20200723102310', '2020-07-23 12:23:16', 349),
('DoctrineMigrations\\Version20200723135935', '2020-07-23 15:59:42', 218),
('DoctrineMigrations\\Version20200723141840', '2020-07-23 16:18:46', 48),
('DoctrineMigrations\\Version20200723221807', '2020-07-24 00:18:12', 90);

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `tour_id` int DEFAULT NULL,
  `number` int NOT NULL,
  `total` int NOT NULL,
  `seat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id` int NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `since_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`id`, `photo`, `description`, `since_date`) VALUES
(1, 'https://i.postimg.cc/t4n7Y1Yn/z5Vcom8.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', '1986-07-08');

-- --------------------------------------------------------

--
-- Structure de la table `tour`
--

CREATE TABLE `tour` (
  `id` int NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tour`
--

INSERT INTO `tour` (`id`, `photo`, `title`, `start_date`, `end_date`, `price`) VALUES
(1, 'https://i.postimg.cc/6pSXwfWy/cirque6.jpg\r\n', 'America Tour', '2020-07-21', '2021-07-12', 45),
(2, 'https://i.postimg.cc/qRHH6BCr/cirque6.jpg\r\n', 'Europe Tour', '2019-08-10', '2020-05-25', 25),
(3, 'https://i.postimg.cc/8C6VCfcw/cirque7.jpg\r\n', 'Asia Tour', '2018-12-01', '2019-01-20', 35);

-- --------------------------------------------------------

--
-- Structure de la table `tour_artist`
--

CREATE TABLE `tour_artist` (
  `tour_id` int NOT NULL,
  `artist_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tour_artist`
--

INSERT INTO `tour_artist` (`tour_id`, `artist_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7);

-- --------------------------------------------------------

--
-- Structure de la table `tour_country`
--

CREATE TABLE `tour_country` (
  `tour_id` int NOT NULL,
  `country_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tour_country`
--

INSERT INTO `tour_country` (`tour_id`, `country_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2D5B0234F92F3E70` (`country_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F5299398A76ED395` (`user_id`),
  ADD KEY `IDX_F529939815ED8D43` (`tour_id`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tour_artist`
--
ALTER TABLE `tour_artist`
  ADD PRIMARY KEY (`tour_id`,`artist_id`),
  ADD KEY `IDX_34D7716D15ED8D43` (`tour_id`),
  ADD KEY `IDX_34D7716DB7970CF8` (`artist_id`);

--
-- Index pour la table `tour_country`
--
ALTER TABLE `tour_country`
  ADD PRIMARY KEY (`tour_id`,`country_id`),
  ADD KEY `IDX_13994CE715ED8D43` (`tour_id`),
  ADD KEY `IDX_13994CE7F92F3E70` (`country_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `city`
--
ALTER TABLE `city`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_2D5B0234F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F529939815ED8D43` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`),
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `tour_artist`
--
ALTER TABLE `tour_artist`
  ADD CONSTRAINT `FK_34D7716D15ED8D43` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_34D7716DB7970CF8` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `tour_country`
--
ALTER TABLE `tour_country`
  ADD CONSTRAINT `FK_13994CE715ED8D43` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_13994CE7F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
