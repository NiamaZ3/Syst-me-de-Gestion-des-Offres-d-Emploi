-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 17 déc. 2023 à 18:05
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `job`
--

-- --------------------------------------------------------

--
-- Structure de la table `admine`
--

CREATE TABLE `admine` (
  `AdmineID` int(11) NOT NULL,
  `NomAdmine` varchar(20) DEFAULT NULL,
  `MotDePasse` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `id_offre` int(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id_offre`, `description`, `title`, `company`, `location`, `image`) VALUES
(2, 'fgfdgsdf', 'sdfgdfgs', 'dfgsdfg', 'sdfgsdfgs', '657c2345e9a40Capture d\'écran 2023-11-12 105832.png'),
(3, 'fgfdgsdf', 'sdfgdfgs', 'dfgsdfg', 'sdfgsdfgs', '657c23adcef06Capture d\'écran 2023-11-12 105832.png'),
(4, 'nabil', 'fjhyguh', 'hjvfuk', 'jhgbgkb', '657dd01dcdf076.png'),
(5, 'niama', 'jhudiz', 'oiuhjuichjd', 'iuhdiudf', '657dd052a70573.png');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_role`, `name`) VALUES
(1, 'Admin'),
(2, 'Candidat');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role_id`) VALUES
(1, 'NABIL', 'NABIL@n.C', '123', NULL),
(2, 'nabil', 'niamaelhry@gmail.com', '$2y$10$CIZ3pkzNZigAvrpBrCnRJ.Knka/B89UHURShxVYtxISPd4KXGMsES', NULL),
(3, 'nabil', 'nabil@gmail.com', '$2y$10$f671CBj85GE22rAbb.qs9eC.4Un9TM.BKT9DXk/yTqdybSMlL7DSW', NULL),
(4, 'Niama', 'Niama@x.v', '$2y$10$o3hxZqDwYWod/OauE7CKx.dHi/NHL9tFSIUPAz9aQhlBx6Qm8biQO', 2),
(5, 'admin', 'admin@gmail.com', '$2y$10$CBpdPVB0vZYgElYQEdTp2uUGYMBZ5w0Mhi.Ly3vz7CoSB7ArqNulW', 1),
(6, 'amine', 'amine@gmail.com', '$2y$10$B60/4XFs21AAoNR3r6BpReA8eXpulD8zwod3x4xSrCz8HkTDdQC/2', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admine`
--
ALTER TABLE `admine`
  ADD PRIMARY KEY (`AdmineID`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`id_offre`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_role_id` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `id_offre` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
