-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 13 jan. 2024 à 17:04
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_luttes`
--

-- --------------------------------------------------------

--
-- Structure de la table `combat`
--

CREATE TABLE `combat` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `lutteur1` int(11) NOT NULL,
  `lutteur2` int(11) NOT NULL,
  `etatcombat` varchar(10) NOT NULL,
  `vainqueur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `id_equipe` int(11) NOT NULL,
  `nomequipe` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `date_creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`id_equipe`, `nomequipe`, `ville`, `date_creation`) VALUES
(1, 'Ecurie Fass', 'Fass', '2004-01-05');

-- --------------------------------------------------------

--
-- Structure de la table `lutteurs`
--

CREATE TABLE `lutteurs` (
  `id_lutteur` int(11) NOT NULL,
  `id_equipe` int(11) NOT NULL,
  `photo` mediumblob NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `nomlutteur` varchar(100) NOT NULL,
  `taille` int(11) NOT NULL,
  `poids` int(11) NOT NULL,
  `nombrecombat` int(11) DEFAULT NULL,
  `nombrevictoire` int(11) DEFAULT NULL,
  `nombredefaite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `lutteurs`
--

INSERT INTO `lutteurs` (`id_lutteur`, `id_equipe`, `photo`, `pseudo`, `nomlutteur`, `taille`, `poids`, `nombrecombat`, `nombrevictoire`, `nombredefaite`) VALUES
(1, 1, 0x3f3f3f3f00104a464946000101000001000100003f3f003f001b1b1b1b1c1b1e21211e2a2d282d2a3d383333383d5d42474247425d3f5867585867583f7d3f7b737b3f7de0b09c3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f011b1b1b1b1c1b1e21211e2a2d282d2a3d383333383d5d42474247425d3f5867585867583f7d3f7b737b3f7de0b09c3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f001108007c005c030122000211010311013f3f001a0000020301010000000000000000000000030401020500063f3f00080101000000003f3f3f3f3f3d03532e3f42713f3f4d084b3f3f7a3f3f3c3f413f105a3f3f3f4945783f3f073f3f3f5c71743f0b3f653f, 'Gri bordeau', 'Ibrahima Dione', 180, 100, 20, 11, 9),
(21, 1, 0xffd8ffe000104a46494600010100000100010000ffdb0084001b1b1b1b1c1b1e21211e2a2d282d2a3d383333383d5d42474247425d8d5867585867588d7d977b737b977de0b09c9cb0e0ffd9ced9ffffffffffffffffffffff011b1b1b1b1c1b1e21211e2a2d282d2a3d383333383d5d42474247425d8d5867585867588d7d977b737b977de0b09c9cb0e0ffd9ced9ffffffffffffffffffffffffc2001108007c005c03012200021101031101ffc4001a000002030101000000000000000000000003040102050006ffda0008010100000000f3f0c8c3c73d03532efc4271a1c94d084ba4cc7af6f03ce74199105ad1d5cb494578bab20780bcce5c7174cf0be865f76774f1e6bea74b0715dc82f48c9ebcd8ba4b3582875a8f95c660b26f348c97d15f15ebe49cebe7739ead216369b3dd999657fd255058cdda57f2ebeb1acfbd6a56c9f9ae25ee699ea72eaafea32e87d4bd29d8c153d72ca2cd6c1c82f2728fffc40017010101010100000000000000000000000002010003ffda000a0202100310000000d76db2402d76d25466b762a57cb5d8eb6544a566c2a9a6443b71dac3d26c25d5da03434899ffc400391000020202000403050407090000000000010200030411051221311341511022326171142362911544528182a1b12433424353727392a2ffda0008010100013f006604ee1044a68167732ea5aa3df621104aea665d887689a8db0577e90779aeb0131579d8011aa4d0e63da2320b3a1991d5618b2af7544bf650c0e5b427680f59b98c112c0cc665babb80bda7507623b9650352ac6b6fb12b41d58cc4c1a31134aa19fcdcc65571a650c3d08dce258828dba29e468c7af69b80f582574eec60474f297d2d5127ca569ceeab2dc5b53aaf513832ff0069b49f2aa1e29840b7bee40f30b32f8bdb6ed28051263653d2e79998af9ccb6a5ee67a4694fb438128d8d932facdabadca31ca1e6262bfa196165e62bd9d795be63bc5217a72464afbe89f94414b07e8dbe5207943d091ed54e61b81d403d62b022310548dc53c87a98940b30ecb954921bf9084881cf68add1be2ec7bc3dcfb07b0853dde78ec174b11ad2ea176cc4f4131f85a1556c91b6fd885d54aaeba76d0133b87326de95da79ac12fa0e3f9f3238da38ecc3d9c80a023bc07e539bf0c329a9ed2428ec36670ec24c5a918a01695ea664e4a5085ed240ec147763065710ccd8a48453e930c5b8f5786cde26a5f8b6dae5fc04fe1e8662d40628a481621ee847699dc3ce3edd010b03b0f29ce7f667887f661424734c3c96c4a9f9114bb9f88c3c5b3c104dbbf9159e363f1545471c97ac2f462d3b73a4edd3b311e4229cfca03900c6abf37838623ff007b7df67d5e363e1abb16b023770c1f4d1a8bf974b60b57f18fe86710c66c5bf4a3dc71ccb36fe936fe92b6fbb71adfa4a9f87e3a2561976000484dc230f3415501b5e5a08c26670f6a3df42593f989c3ae6c9d9bf4c28ec5a6571844dae380ede6e63e466659d33bbfca57c3727bbeab1f8a0c4ccc770f43f37fb0ce2375d69a19bbf211399e733cc6ab77528477758b5d83fc6807a2a012fc70e79ac0763b5a834c3ea278f655a1790e87a2dcb2d47bf26eab181285fb0e8b2ae1f8f520377216f32cf3ed7874fb8afbf954b05d96fd69c30bf3785f3d7abd0960f3e59c49cda945e9f01d88be234f194740260a97caa9c9ecdb8ccc75ca0fe539f5dc11f5992a09d226f9fe3589c3d3fd0b8fd5d562e0a8ed8c9f5672d128741a16aafc91009e0567e32ce7f13133ecf4f920523cc74991478d8762742e3dfd81ad95965c0af2a0d09b98cef5b2dcba046f423666639d9c87fdc796266dea74eecebe8d2935be8b11b8182f669e2afac36acf1b7d9607627e03f91872e9a9f4d673303f0ac26a24e90ce6c7f3532b2a40d984f29efd277117292841e256eff46d41c59076c7fcec9fa52f7f83093f266873f899ed504fe0021bf8abff009e47d1d4455e25b1f7edff00730efc572ddf98ee6474b5b5d8f5f65d8b458a4aa857f510205f72c6d1f33e90315314a9d120112a5465daf281f36684e38f8ada07f3fea67da7053f594fdc161e23843f58b0c5e2389cc3addffa81f99998f992664f743f2f67611b1d2db6ddec7dc1698ca2fc5b838eb56b90c42418a89632aba861bec60c0c21db1d22e363af6a2b1fc2272a8eca07d04bc9145dff001b41de6481c959f99f67ffc40023110002010303040300000000000000000000011102102112205103314161628191ffda0008010201013f00d8ad93367509ec7b5bf424fcb1357f089239255eaaa950894f34b33c19e6d048d36d3513ec8eaf342fa34d7e7abf891a39aea669f63527666591f2765d8fffc400261100020201030303050000000000000000000102112110123141517120526103134291a1ffda0008010301013f00d68621ede962dbd6c74de0487e843f4f03e132b48c5c9e2327e10e39aca7ed7a6d955bc2f9c14d78d1a6c4e4928cb31feaf0cb873be77f08dd15c7d2b7de4c72bfc229f74594b0cc245c7b33c4457d551f75fb509d0b2876babfde91489727ffd9, 'papasow', 'pape sow', 180, 95, 30, 17, 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `combat`
--
ALTER TABLE `combat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lutteur1` (`lutteur1`),
  ADD KEY `fk_lutteur2` (`lutteur2`),
  ADD KEY `fk_vainqueur` (`vainqueur`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id_equipe`);

--
-- Index pour la table `lutteurs`
--
ALTER TABLE `lutteurs`
  ADD PRIMARY KEY (`id_lutteur`),
  ADD KEY `fk_id_equipe` (`id_equipe`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `combat`
--
ALTER TABLE `combat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id_equipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `lutteurs`
--
ALTER TABLE `lutteurs`
  MODIFY `id_lutteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `combat`
--
ALTER TABLE `combat`
  ADD CONSTRAINT `fk_lutteur1` FOREIGN KEY (`lutteur1`) REFERENCES `equipe` (`id_equipe`),
  ADD CONSTRAINT `fk_lutteur2` FOREIGN KEY (`lutteur2`) REFERENCES `equipe` (`id_equipe`),
  ADD CONSTRAINT `fk_vainqueur` FOREIGN KEY (`vainqueur`) REFERENCES `equipe` (`id_equipe`);

--
-- Contraintes pour la table `lutteurs`
--
ALTER TABLE `lutteurs`
  ADD CONSTRAINT `fk_id_equipe` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id_equipe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
