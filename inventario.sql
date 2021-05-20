-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-05-2021 a las 13:51:18
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

CREATE DATABASE `inventario`;

USE inventario;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `precio` double(11,2) NOT NULL,
  `imagen` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `cantidad`, `precio`, `imagen`) VALUES
(7, 'Fumo de Reimu', 100, 35.00, 'fumoReimu.jpg'),
(8, 'Fumo de Marisa', 100, 37.00, 'fumoMarisa.jpg'),
(9, 'Fumo de Aya', 100, 80.00, 'fumoAya.jpg'),
(11, 'Fumo de Yukari', 100, 100.00, 'fumoYukari.jpg'),
(13, 'Fumo de Tewi', 60, 42.00, 'fumoTewi.jpg'),
(14, 'Fumo de Meiling', 100, 55.00, 'fumoMeiling.jpg'),
(19, 'Fumo de Kaguya', 100, 63.00, 'fumoKaguya.jpg'),
(24, 'Fumo de Junko', 100, 80.00, 'fumoJunko.jpg'),
(25, 'Fumo de Yuyuko', 100, 82.00, 'fumoYuyuko.jpg'),
(28, 'Fumo de Koishi', 100, 70.00, 'fumoKoishi.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
