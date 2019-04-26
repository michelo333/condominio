-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2019 at 11:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cond`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cobros`
--

CREATE TABLE `tbl_cobros` (
  `especiales` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `rut` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medagua`
--

CREATE TABLE `tbl_medagua` (
  `lectura` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `path` text COLLATE utf8_spanish2_ci NOT NULL,
  `rut` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medluz`
--

CREATE TABLE `tbl_medluz` (
  `lectura` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `path` text COLLATE utf8_spanish2_ci NOT NULL,
  `rut` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_propietario`
--

CREATE TABLE `tbl_propietario` (
  `rut` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `user` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `pass` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `celular` int(11) NOT NULL,
  `numprop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `tbl_propietario`
--

INSERT INTO `tbl_propietario` (`rut`, `nombre`, `apellido`, `email`, `user`, `pass`, `telefono`, `celular`, `numprop`) VALUES
('1043738128', 'Miguel Angel', 'Zevallos Medina', 'calatrava125@gmail.com', 'michelo333', 'z3vall0s', 151255, 948564789, 1522);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recaudacion`
--

CREATE TABLE `tbl_recaudacion` (
  `monto` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `path` text COLLATE utf8_spanish2_ci NOT NULL,
  `rut` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cobros`
--
ALTER TABLE `tbl_cobros`
  ADD KEY `rut` (`rut`);

--
-- Indexes for table `tbl_medagua`
--
ALTER TABLE `tbl_medagua`
  ADD KEY `rut` (`rut`);

--
-- Indexes for table `tbl_medluz`
--
ALTER TABLE `tbl_medluz`
  ADD KEY `rut` (`rut`);

--
-- Indexes for table `tbl_propietario`
--
ALTER TABLE `tbl_propietario`
  ADD PRIMARY KEY (`rut`);

--
-- Indexes for table `tbl_recaudacion`
--
ALTER TABLE `tbl_recaudacion`
  ADD KEY `rut` (`rut`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cobros`
--
ALTER TABLE `tbl_cobros`
  ADD CONSTRAINT `tbl_cobros_ibfk_1` FOREIGN KEY (`rut`) REFERENCES `tbl_propietario` (`rut`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_medagua`
--
ALTER TABLE `tbl_medagua`
  ADD CONSTRAINT `tbl_medagua_ibfk_1` FOREIGN KEY (`rut`) REFERENCES `tbl_propietario` (`rut`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_medluz`
--
ALTER TABLE `tbl_medluz`
  ADD CONSTRAINT `tbl_medluz_ibfk_1` FOREIGN KEY (`rut`) REFERENCES `tbl_propietario` (`rut`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_recaudacion`
--
ALTER TABLE `tbl_recaudacion`
  ADD CONSTRAINT `tbl_recaudacion_ibfk_1` FOREIGN KEY (`rut`) REFERENCES `tbl_propietario` (`rut`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
