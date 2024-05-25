-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 mai 2024 à 21:31
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `boutique_en_ligne`
--

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `seller` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`product_id`, `title`, `description`, `image_url`, `price`, `seller`, `created_at`) VALUES
(1, 'Figurine Naruto Uzumaki', 'Découvrez cette figurine détaillée de Naruto Uzumaki, le célèbre ninja de Konoha. Parfait pour les fans de la série Naruto, cette figurine capture Naruto en pleine action, avec des détails précis sur son costume et ses accessoires.', 'https://i.pinimg.com/474x/21/b3/26/21b326c300123527743c9a37276edbfd.jpg', '15000.00', 'FelShop', '2024-05-21 22:17:12'),
(2, 'Poster Attaque des Titans', 'Apportez l\'intensité de l\'Attaque des Titans dans votre chambre avec ce poster épique. Ce poster présente les personnages principaux en pleine bataille contre les Titans, avec des couleurs vibrantes et un design captivant.', 'https://i.pinimg.com/474x/bb/02/73/bb02732866d3bb90017db9b6fc895814.jpg', '8000.00', 'FelShop', '2024-05-21 22:17:12'),
(3, 'Sweatshirt Ahegao Manga Unisexe', 'Affichez votre passion pour l\'anime avec ce Sweatshirt Ahegao Manga Unisexe. Conçu pour les otakus, il présente un motif intégral Ahegao avec des expressions faciales exagérées. Ce sweatshirt confortable et durable, en mélange de coton et polyester, est doux et résistant. Unisexe, il est disponible en plusieurs tailles pour hommes et femmes. Avec sa capuche ajustable, il offre un look décontracté et une protection supplémentaire. Facile d\'entretien, il est lavable en machine et garde ses couleurs et sa forme. Idéal pour les conventions d\'anime ou les sorties décontractées, ce sweatshirt est parfait pour exprimer votre style unique.', 'https://i.pinimg.com/564x/71/61/bb/7161bb6aea1d6d892c36bebae4e923a0.jpg', '15000.00', 'FelShop', '2024-05-21 22:17:12'),
(4, 'Manga My Hero Academia Volume 1', 'Plongez dans le monde héroïque de My Hero Academia avec le premier volume de ce manga à succès. Suivez les aventures de Izuku Midoriya alors qu\'il aspire à devenir le plus grand héros malgré son absence de pouvoirs. Une lecture incontournable pour tous les fans d\'anime et de manga.', 'https://i.pinimg.com/474x/b1/25/a3/b125a3ef3024405941cd270946f907e3.jpg', '7000.00', 'FelShop', '2024-05-21 22:17:12'),
(5, 'T-shirt Dragon Ball Z', 'Montrez votre amour pour Dragon Ball Z avec ce t-shirt stylé. Fabriqué en coton de haute qualité, ce t-shirt présente une impression vive de Goku en Super Saiyan. Parfait pour un look décontracté et confortable.', 'https://i.pinimg.com/474x/5e/5e/b9/5e5eb9ea6d5eee0ebc98e6f1d38eab7a.jpg', '10000.00', 'FelShop', '2024-05-21 22:17:12'),
(6, 'Casquette One Piece', 'Arborez cette casquette One Piece et rejoignez l\'équipage du Chapeau de Paille. Avec un design inspiré du célèbre manga, cette casquette est ajustable et confortable, idéale pour les fans de Luffy et son équipage.', 'https://i.pinimg.com/474x/ef/0c/d8/ef0cd8f35b412455804175ce39924bda.jpg', '6000.00', 'FelShop', '2024-05-21 22:17:12'),
(7, 'Sac à dos Totoro', 'Emportez votre univers animé préféré partout avec ce sac à dos Totoro. Fabriqué en toile résistante, il est parfait pour l\'école, le travail ou les sorties. Avec son design adorable et pratique, ce sac à dos est un must pour tous les fans de Studio Ghibli.', 'https://i.pinimg.com/474x/8b/e7/9f/8be79f51d76b3a9d2318e28a4745a532.jpg', '12000.00', 'FelShop', '2024-05-21 22:17:12'),
(8, 'Poster Sailor Moon', 'Ajoutez une touche magique à votre décoration avec ce poster Sailor Moon. Représentant Usagi Tsukino en pleine transformation, ce poster est un incontournable pour les fans de la guerrière de la lune.', 'https://i.pinimg.com/474x/8d/41/f6/8d41f64f5fc35cdd6a7d969cc737935c.jpg', '8000.00', 'FelShop', '2024-05-21 22:17:12'),
(9, 'Figurine Levi Ackerman', 'Capturez l\'esprit de l\'Attaque des Titans avec cette figurine détaillée de Levi Ackerman. Connue pour sa précision et sa qualité, cette figurine est un ajout parfait à toute collection de fans de l\'anime.', 'https://i.pinimg.com/474x/5f/fe/4d/5ffe4d154b2a731cd5259bf51f2e54c3.jpg', '18000.00', 'FelShop', '2024-05-21 22:17:12'),
(10, 'Porte-clés Pikachu', 'Affichez votre amour pour Pokémon avec ce porte-clés Pikachu adorable. Fabriqué en PVC durable, il est parfait pour vos clés ou votre sac. Un accessoire indispensable pour tous les fans de Pokémon.', 'https://i.pinimg.com/474x/58/e1/13/58e113ca12cd2a39270f918707588701.jpg', '3000.00', 'FelShop', '2024-05-21 22:17:12'),
(11, 'Poster Demon Slayer', 'Décorez votre espace avec ce poster époustouflant de Demon Slayer. Représentant Tanjiro et Nezuko en pleine action, ce poster est un must pour tous les fans de cet anime à succès.', 'https://i.pinimg.com/474x/f1/58/c6/f158c64bfb8b4c9eee9ced02ee313fb9.jpg', '9000.00', 'FelShop', '2024-05-21 22:17:12'),
(12, 'Tasse Fairy Tail', 'Profitez de votre boisson préférée avec cette tasse Fairy Tail. Avec un design coloré représentant Natsu Dragnir, cette tasse en céramique est parfaite pour commencer votre journée avec une touche de magie.', 'https://i.pinimg.com/474x/9a/dc/09/9adc0980fc00eb01fc2c2dc64f0659f1.jpg', '5000.00', 'FelShop', '2024-05-21 22:17:12'),
(13, 'Sweat à capuche Tokyo Ghoul', 'Affichez votre amour pour Tokyo Ghoul avec ce sweat à capuche stylé. Confortable et chaud, il est parfait pour les jours frais tout en vous permettant de montrer votre passion pour l\'anime.', 'https://i.pinimg.com/474x/b7/e2/fc/b7e2fc0fdfe5599982bf7d41abe72497.jpg', '15000.00', 'FelShop', '2024-05-21 22:17:12'),
(14, 'Chaussettes Attack on Titan', 'Gardez vos pieds au chaud avec ces chaussettes Attack on Titan. Fabriquées en coton de haute qualité, elles sont confortables et présentent des motifs inspirés de l\'anime.', 'https://i.pinimg.com/474x/d9/6b/af/d96baf2db75be18e13faf974b8abbc6f.jpg', '4000.00', 'FelShop', '2024-05-21 22:17:12'),
(15, 'Poster My Hero Academia', 'Embellissez votre mur avec ce poster vibrant de My Hero Academia. Représentant les personnages principaux en action, ce poster est parfait pour les fans de l\'anime.', 'https://i.pinimg.com/474x/74/22/84/74228477cbaf6827dd991dba7581ac85.jpg', '8000.00', 'FelShop', '2024-05-21 22:17:12'),
(16, 'Sac à bandoulière Totoro', 'Emportez Totoro avec vous grâce à ce sac à bandoulière pratique et mignon. Parfait pour transporter vos essentiels, ce sac est un must pour tous les fans de Studio Ghibli.', 'https://i.pinimg.com/474x/76/8c/7e/768c7eb5cdd73d62b3a79ad99fda7063.jpg', '10000.00', 'FelShop', '2024-05-21 22:17:12'),
(17, 'Casquette Dragon Ball Z', 'Montrez votre amour pour Dragon Ball Z avec cette casquette stylée. Ajustable et confortable, elle est parfaite pour tous les fans de l\'univers de Dragon Ball.', 'https://i.pinimg.com/474x/03/66/62/036662c839b8a83e3a14144278c1f9b6.jpg', '7000.00', 'FelShop', '2024-05-21 22:17:12'),
(18, 'Figurine Goku Super Saiyan', 'Ajoutez cette figurine de Goku en Super Saiyan à votre collection. Avec des détails précis et une pose dynamique, cette figurine est parfaite pour tout fan de Dragon Ball Z.', 'https://i.pinimg.com/474x/85/08/1d/85081d4919c348ccacc7c1bcfac2aba6.jpg', '18000.00', 'FelShop', '2024-05-21 22:17:12'),
(19, 'T-shirt One Piece Luffy', 'Affichez votre amour pour One Piece avec ce t-shirt représentant Luffy. Fabriqué en coton doux, il est parfait pour un look décontracté et confortable.', 'https://i.pinimg.com/474x/cf/02/b0/cf02b01025979e6ea56a731aa9c06493.jpg', '10000.00', 'FelShop', '2024-05-21 22:17:12'),
(20, 'Tasse Naruto Shippuden', 'Commencez votre journée avec cette tasse Naruto Shippuden. Avec un design vibrant de Naruto en action, cette tasse est parfaite pour les fans de l\'anime.', 'https://i.pinimg.com/474x/3d/d4/89/3dd48990c719566d6257a1f9494bbe4e.jpg', '5000.00', 'FelShop', '2024-05-21 22:17:12'),
(21, 'Sweat à capuche Sailor Moon', 'Affichez votre amour pour Sailor Moon avec ce sweat à capuche chaud et confortable. Parfait pour les jours frais, ce sweat à capuche est idéal pour montrer votre passion pour l\'anime.', 'https://i.pinimg.com/474x/4a/2b/47/4a2b47f170657580c9f1604059aaf92a.jpg', '15000.00', 'FelShop', '2024-05-21 22:17:12'),
(22, 'Figurine Vegeta Super Saiyan', 'Ajoutez cette figurine de Vegeta en Super Saiyan à votre collection. Avec des détails précis et une pose dynamique, cette figurine est parfaite pour tout fan de Dragon Ball Z.', 'https://i.pinimg.com/474x/32/5a/dc/325adcae9db7f1f968a15049831ee1b7.jpg', '18000.00', 'FelShop', '2024-05-21 22:17:12'),
(23, 'Poster Fullmetal Alchemist', 'Apportez l\'intensité de Fullmetal Alchemist dans votre chambre avec ce poster épique. Ce poster présente les personnages principaux en pleine action, avec des couleurs vibrantes et un design captivant.', 'https://i.pinimg.com/474x/07/9d/fb/079dfb0dc350ff6c5e63d691cbc1b355.jpg', '9000.00', 'FelShop', '2024-05-21 22:17:12'),
(24, 'T-shirt Tokyo Ghoul', 'Montrez votre amour pour Tokyo Ghoul avec ce t-shirt stylé. Fabriqué en coton de haute qualité, ce t-shirt présente une impression vive de Kaneki Ken. Parfait pour un look décontracté et confortable.', 'https://i.pinimg.com/474x/60/42/31/6042315c12150b4ca13a8bfec2da0d83.jpg', '10000.00', 'FelShop', '2024-05-21 22:17:12'),
(25, 'Casquette Fairy Tail', 'Arborez cette casquette Fairy Tail et rejoignez la guilde de Natsu. Avec un design inspiré du célèbre manga, cette casquette est ajustable et confortable, idéale pour les fans de Fairy Tail.', 'https://i.pinimg.com/474x/f3/f2/1c/f3f21c683b7c8a5965e6c9a6e44c6c26.jpg', '6000.00', 'FelShop', '2024-05-21 22:17:12'),
(26, 'Poster Sword Art Online', 'Embellissez votre mur avec ce poster vibrant de Sword Art Online. Représentant les personnages principaux en action, ce poster est parfait pour les fans de l\'anime.', 'https://i.pinimg.com/474x/30/1f/ad/301fad70aeca8879be37ad6eac53c6d2.jpg', '8000.00', 'FelShop', '2024-05-21 22:17:12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
