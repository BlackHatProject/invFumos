-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-03-2021 a las 18:37:35
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `precio` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `cantidad`, `precio`) VALUES
(3, 'Fumo de Clownpiese', 12, 60.00),
(7, 'Fumo de Reimu', 100, 35.00),
(8, 'Fumo de Marisa', 100, 37.00),
(9, 'Fumo de Aya', 100, 80.00),
(10, 'Fumo grande de Cirno', 100, 99.00),
(11, 'Fumo de Yukari', 100, 100.00),
(13, 'Fumo de Tewi', 60, 42.00),
(14, 'Fumo de Meiling', 100, 55.00),
(15, 'Fumo de Flandre ', 100, 150.00),
(16, 'Fumo de Remilia', 199, 58.00),
(17, 'Fumo de Sakuya', 111, 65.00),
(18, 'Fumo de Reisen', 100, 43.00),
(19, 'Fumo de Kaguya', 100, 63.00),
(20, 'Fumo de Eirin', 50, 100.00),
(21, 'Fumo de Chen', 100, 50.00),
(22, 'Fumo de patchouli', 100, 48.00),
(23, 'Fumo de Koakuma', 100, 50.00);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
