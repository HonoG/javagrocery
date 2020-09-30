-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 09:31 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `javagrocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`idcat` int(11) NOT NULL,
  `nomcat` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idcat`, `nomcat`, `photo`) VALUES
(1, 'meats', 'meats.jpg'),
(2, 'fruits&veg', 'fruits.jpg'),
(3, 'bakery', 'bread.jpg'),
(4, 'dairy', 'dairy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
`idprod` int(11) NOT NULL,
  `nomprod` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `idcat` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`idprod`, `nomprod`, `description`, `price`, `idcat`, `photo`) VALUES
(1, 'chicken', 'drumsticks', 10.15, 1, 'chicken.png'),
(2, 'groundbeef', 'grassfed', 15.99, 1, 'beef.png'),
(3, 'banana', 'les bananes mur', 3.99, 2, 'banane.png'),
(4, 'pain', 'pain francais', 3.99, 3, 'painf.jpg'),
(5, 'milk', 'silk almond', 4.99, 4, 'almilk.png'),
(6, 'lait', 'lait 2%', 3.99, 4, 'milk.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`idcat`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
 ADD PRIMARY KEY (`idprod`), ADD KEY `fk_produit` (`idcat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `idcat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
MODIFY `idprod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `produit`
--
ALTER TABLE `produit`
ADD CONSTRAINT `fk_produit` FOREIGN KEY (`idcat`) REFERENCES `category` (`idcat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
