-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Apr 30, 2022 at 02:38 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mamma_yummy`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(12) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Menus'),
(2, 'Burgers'),
(3, 'Snacks'),
(4, 'Salades'),
(5, 'Boissons'),
(6, 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(33) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `image`, `category`) VALUES
(1, 'Menu Classic', 'Sandwich: Burger, Salade, Tomate, Cornichon + Frites + Boisson', 8.9, 'm1.png', 1),
(2, 'Menu Bacon', 'Sandwich: Burger, Fromage, Bacon, Salade, Tomate + Frites + Boisson', 9.5, 'm2.png', 1),
(3, 'Menu Big', 'Sandwich: Double Burger, Fromage, Cornichon, Salade + Frites + Boisson', 10.9, 'm3.png', 1),
(4, 'Menu Chicken', 'Sandwich: Poulet Frit, Tomate, Salade, Mayonnaise + Frites + Boisson', 9.9, 'm4.png', 1),
(5, 'Menu Fish', 'Sandwich: Poisson, Salade, Mayonnaise, Cornichon + Frites + Boisson', 10.9, 'm5.png', 1),
(6, 'Menu Double Steak', 'Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate + Frites + Boisson', 11.9, 'm6.png', 1),
(7, 'Classic', 'Sandwich: Burger, Salade, Tomate, Cornichon', 5.9, 'b1.png', 2),
(8, 'Bacon', 'Sandwich: Burger, Fromage, Bacon, Salade, Tomate', 6.5, 'b2.png', 2),
(9, 'Big', 'Sandwich: Double Burger, Fromage, Cornichon, Salade', 6.9, 'b3.png', 2),
(10, 'Chicken', 'Sandwich: Poulet Frit, Tomate, Salade, Mayonnaise', 5.9, 'b4.png', 2),
(11, 'Fish', 'Sandwich: Poisson PanÃ©, Salade, Mayonnaise, Cornichon', 6.5, 'b5.png', 2),
(12, 'Double Steak', 'Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate', 7.5, 'b6.png', 2),
(13, 'Frites', 'Pommes de terre frites', 3.9, 's1.png', 3),
(14, 'Onion Rings', 'Rondelles d\'oignon frits', 3.4, 's2.png', 3),
(15, 'Nuggets', 'Nuggets de poulet frits', 5.9, 's3.png', 3),
(16, 'Nuggets Fromage', 'Nuggets de fromage frits', 3.5, 's4.png', 3),
(17, 'Ailes de Poulet', 'Ailes de poulet Barbecue', 5.9, 's5.png', 3),
(18, 'CÃ©sar Poulet PanÃ©', 'Poulet PanÃ©, Salade, Tomate et la fameuse sauce CÃ©sar', 8.9, 'sa1.png', 4),
(19, 'CÃ©sar Poulet GrillÃ©', 'Poulet GrillÃ©, Salade, Tomate et la fameuse sauce CÃ©sar', 8.9, 'sa2.png', 4),
(20, 'Salade Light', 'Salade, Tomate, Concombre, MaÃ¯s et Vinaigre balsamique', 5.9, 'sa3.png', 4),
(21, 'Poulet PanÃ©', 'Poulet PanÃ©, Salade, Tomate et la sauce de votre choix', 7.9, 'sa4.png', 4),
(22, 'Poulet GrillÃ©', 'Poulet GrillÃ©, Salade, Tomate et la sauce de votre choix', 7.9, 'sa5.png', 4),
(23, 'Coca-Cola', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo1.png', 5),
(24, 'Coca-Cola Light', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo2.png', 5),
(25, 'Coca-Cola ZÃ©ro', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo3.png', 5),
(26, 'Fanta', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo4.png', 5),
(27, 'Sprite', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo5.png', 5),
(28, 'Nestea', 'Au choix: Petit, Moyen ou Grand', 1.9, 'bo6.png', 5),
(29, 'Fondant au chocolat', 'Au choix: Chocolat Blanc ou au lait', 4.9, 'd1.png', 6),
(30, 'Muffin', 'Au choix: Au fruits ou au chocolat', 2.9, 'd2.png', 6),
(31, 'Beignet', 'Au choix: Au chocolat ou Ã  la vanille', 2.9, 'd3.png', 6),
(32, 'Milkshake', 'Au choix: Fraise, Vanille ou Chocolat', 3.9, 'd4.png', 6),
(33, 'Sundae', 'Au choix: Fraise, Caramel ou Chocolat', 4.9, 'd5.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `nom_ordre` varchar(112) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `nom_client` varchar(44) DEFAULT NULL,
  `addresse_client` varchar(330) DEFAULT NULL,
  `tele_client` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`nom_ordre`, `id`, `quantite`, `prix`, `nom_client`, `addresse_client`, `tele_client`) VALUES
('', 1, 1, 8.9, 'said', 'hay salam', '060077000'),
('', 3, 1, 10.9, 'amine', 'hay dakhla', '0687459236'),
('', 12, 1, 10.9, 'amine', 'hay dakhla', '0687459236'),
('', 13, 1, 8.9, 'qqp', 'cscq)$', '0678976464'),
('', 14, 1, 8.9, 'qqp', 'cscq)$', '0678976464'),
('', 15, 1, 8.9, 'qqp', 'cscq)$', ''),
('', 16, 1, 10.9, 'amine', 'hay dakhla', '0687459236'),
('', 17, 1, 10.9, 'amine', 'hay dakhla', '0687459236'),
('', 18, 1, 8.9, 'said', 'hay salam', '060077000'),
('', 19, 1, 8.9, 'said', 'hay salam', '060077000'),
('', 20, 1, 10.9, 'amine', 'hay dakhla', '0687459236'),
('', 21, 1, 8.9, 'said', 'hay salam', '060077000'),
('', 22, 1, 10.9, 'amine', 'hay dakhla', '0687459236'),
('', 23, 1, 10.9, 'amine', 'hay dakhla', '0687459236'),
('', 24, 1, 10.9, 'amine', 'hay dakhla', '0687459236'),
('', 25, 1, 10.9, 'amine', 'hay dakhla', '0687459236'),
('', 26, 1, 11.9, 'nom', 'addresse', ''),
('', 27, 1, 10.9, 'ouijdan', 'i9amat marhaba', '0600770051'),
('', 0, 1, 8.9, '', '', ''),
('', 1, 2, 19.8, 'zohair', 'ahahhah 2hh2h2 hhhs s', '0677727272'),
('', 0, 33, 392.7, 'zohair1', 'sssss', '0677727272'),
('', 0, 1, 10.9, '', '', ''),
('', 0, 1, 0, '', '', ''),
('', 1, 1, 0, '', '', ''),
('', 0, 1, 9.5, '', '', ''),
('', 0, 1, 9.5, '', '', ''),
('', 0, 1, 9.5, '', '', ''),
('', 0, 1, 8.9, '', '', ''),
('', 1, 1, 8.9, '', '', ''),
('', 1, 1, 0, '', '', ''),
('', 0, 1, 0, '', '', ''),
('', 0, 1, 11.9, '3333', 'ffjjjjjjjj s  ss', '0677727272'),
('', 1, 1, 11.9, '3333', 'ffjjjjjjjj s  ss', '0677727272'),
('', 1, 1, 11.9, '3333', 'ffjjjjjjjj s  ss', '0677727272'),
('', 1, 1, 10.9, 'ahaam', 'shshshhhshhhshshh', '0677727272'),
('', 0, 1, 8.9, 'ahaam', 'ahahhahahah', '0677727272'),
('', 1, 1, 0, '', '', ''),
('', 1, 1, 0, '', '', ''),
('', 1, 2, 19.8, 'ahaam', 'sssssssssss', '0677727272'),
('', 0, 1, 9.5, 'ahaam', 'wwwwwwwwwwwwwwwwwwww', '0677727272'),
('', 0, 1, 8.9, 'ahaam', 'eeeeeee', '0677727272'),
('', 1, 1, 0, '', '', ''),
('', 0, 1, 8.9, 'ahaam', 'ahahhahahahah', '0677727272'),
('', 1, 1, 8.9, '', '', ''),
('', 1, 1, 8.9, '9aaal', '444444', '0617727272'),
('', 0, 1, 9.5, '', '', ''),
('', 0, 1, 9.5, '', '', ''),
('', 0, 1, 9.5, '', '', ''),
('', 1, 1, 9.5, '', '', ''),
('', 1, 1, 9.5, 'ahaam', 'wwwwwwwwwwwwwwwwwwww', '0677727272');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
