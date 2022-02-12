-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2022 a las 17:43:11
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd_vacunacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_equipo` int(11) NOT NULL,
  `cedula` char(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `correo` varchar(80) DEFAULT NULL,
  `clave` varchar(100) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `estadovacunacion` varchar(15) DEFAULT NULL,
  `tipovacuna` varchar(20) DEFAULT NULL,
  `fechavacunacion` date DEFAULT NULL,
  `numerodosis` char(2) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `logo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_equipo`, `cedula`, `nombre`, `apellidos`, `correo`, `clave`, `fechanacimiento`, `direccion`, `telefono`, `estadovacunacion`, `tipovacuna`, `fechavacunacion`, `numerodosis`, `tipo`, `logo`) VALUES
(1, '0803305283', 'ANDERSON', 'OCHOA', 'andy@gmail.com', '12345', '2022-02-03', 'SN', '0983516343', 'NO VACUNADO', NULL, NULL, NULL, 'ADMIN', 'https://img.freepik.com/foto-gratis/joven-barbudo-traje-mirando-camara-mientras-sostiene-computadora-portatil-aislada_171337-11341.jpg?w=1060'),
(7, '9399239399', 'jjdjdjdsj', 'jjdsjdsjdsj', 'jdjds@gmail.com', NULL, '1990-01-01', 'dssdjdsajad', '923932932', 'VACUNADO', 'PFIZER', '1900-01-01', 'PR', NULL, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_equipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
