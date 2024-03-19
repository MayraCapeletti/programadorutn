-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-03-2024 a las 20:28:58
-- Versión del servidor: 5.7.40
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mipasteleria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

DROP TABLE IF EXISTS `recetas`;
CREATE TABLE IF NOT EXISTS `recetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'Chocolate  Cake', 'Endúlzate con esta receta súper rápida y práctica, perfecta para hacer tallados o la torta que tu prefieras. Qué mejor que combinar berries con chocolate.', 'INGREDIENTES:\r\n\r\n450 gr de harina sin preparar \r\n2 cucharitas de polvo de hornear\r\n1 ½ cucharita de bicarbonato\r\n1/2 cucharita de sal\r\n110 gr de cocoa\r\n2 tazas de agua caliente\r\n200 gr de mantequilla\r\n530 gr de azúcar\r\n4 huevos\r\n\r\n'),
(2, 'Lemon Cake con Berries', 'Les cuento que tenemos un nuevo sabor para nuestras tortas y lo quiero compartir con todos ustedes! Tomen nota de esta deliciosa receta.', 'INGREDIENTES\r\n\r\n750 gr de harina Nicolini Premium\r\n700 g de azúcar blanca granulada\r\n4 cdtas de polvo de hornear\r\n500 gr de margarina Sello de Oro\r\n100 ml de aceite vegetal\r\n120 ml de leche\r\n120 ml de jugo de limón\r\n6 limones (ralladura)\r\n9 huevos\r\n300 gr de frambuesa\r\n300 gr de arándanos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'mayra', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'alexis', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
