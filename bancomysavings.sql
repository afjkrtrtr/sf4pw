-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-11-2022 a las 19:56:14
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bancomysavings`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `numero_documeto` varchar(20) NOT NULL,
  `tipo_documento` varchar(10) NOT NULL,
  `ciudad_residencia` varchar(50) NOT NULL,
  `departamento_residencia` varchar(50) NOT NULL,
  `direccion_residencia` varchar(100) NOT NULL,
  `numero_celular` varchar(13) NOT NULL,
  `fecha_nacimiento` varchar(100) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`numero_documeto`, `tipo_documento`, `ciudad_residencia`, `departamento_residencia`, `direccion_residencia`, `numero_celular`, `fecha_nacimiento`, `correo_electronico`) VALUES
('33333', 'Soltero', 'bogota', 'antioquia', 'calle', '445555', '44', 'Lejismejia@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
CREATE TABLE IF NOT EXISTS `sucursales` (
  `Codigo` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`Codigo`, `Nombre`, `direccion`) VALUES
(1, 'Cartagena', 'Cl. 54 #47-49'),
(2, 'Envigado', 'Cr 24 f cl 40 sur -54'),
(3, 'Estrella', ' Cra. 59 #79S-51'),
(5, 'Medellin', 'CARRERA 43A N° 18SUR - 120'),
(6, 'Bello', 'Cl. 50 #49-15'),
(7, 'Copacabana', 'Cl. 49 #50-21'),
(8, 'Girardota', 'Cra. 16 #5-49 a 5-27'),
(9, 'La america', 'Cra. 86A #43-77'),
(10, 'Robert Villegas Arango', 'Cr 9 f cl 40 sur -3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contrasena`) VALUES
('manuela', '123456'),
('manuela', '123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
