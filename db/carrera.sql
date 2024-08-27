-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2024 a las 19:17:46
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `kilometros_id` int(11) NOT NULL,
  `rango_edad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `kilometros_id`, `rango_edad_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 3, 9),
(25, 3, 10),
(26, 3, 11),
(27, 3, 12),
(28, 3, 13),
(29, 3, 14),
(30, 3, 15),
(31, 3, 16),
(32, 3, 17),
(33, 3, 18),
(34, 3, 19),
(35, 3, 20),
(36, 3, 21),
(37, 3, 22),
(38, 3, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corredor`
--

CREATE TABLE `corredor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `distancia` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `corredor`
--

INSERT INTO `corredor` (`id`, `nombre`, `apellido`, `distancia`, `edad`, `categoria`) VALUES
(110, 'Francisco', 'Costanzo', 1, 19, 1),
(111, 'walter', 'Costanzo', 1, 18, 1),
(121, 'fernando', 'Costanzo', 1, 18, 1),
(122, 'jazmin', 'Costanzo', 1, 18, 1),
(123, 'tucumano', 'Costanzo', 2, 55, 17),
(155, 'cacho', 'castaña', 3, 70, 35),
(190, 'Francisco', 'Costanzo', 1, 18, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corredor_tiempo`
--

CREATE TABLE `corredor_tiempo` (
  `id` int(11) NOT NULL,
  `corredor_id` int(11) NOT NULL,
  `tiempo` time(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `corredor_tiempo`
--

INSERT INTO `corredor_tiempo` (`id`, `corredor_id`, `tiempo`) VALUES
(20, 110, '00:00:05.000'),
(21, 111, '00:00:10.000'),
(22, 121, '00:00:13.000'),
(23, 155, '00:00:19.000'),
(24, 123, '00:00:24.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kilometros`
--

CREATE TABLE `kilometros` (
  `id` int(11) NOT NULL,
  `distancia_km` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `kilometros`
--

INSERT INTO `kilometros` (`id`, `distancia_km`) VALUES
(1, 5),
(2, 10),
(3, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango_edad`
--

CREATE TABLE `rango_edad` (
  `id` int(11) NOT NULL,
  `rango` varchar(20) NOT NULL,
  `edad_minima` int(11) NOT NULL,
  `edad_maxima` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rango_edad`
--

INSERT INTO `rango_edad` (`id`, `rango`, `edad_minima`, `edad_maxima`) VALUES
(1, '14-23', 14, 23),
(2, '24-33', 24, 33),
(3, '34-43', 34, 43),
(4, '44-53', 44, 53),
(5, '54-63', 54, 63),
(6, '64-73', 64, 73),
(7, '74-83', 74, 83),
(8, '84-93', 84, 93),
(9, '14-18', 14, 18),
(10, '19-23', 19, 23),
(11, '24-28', 24, 28),
(12, '29-33', 29, 33),
(13, '34-38', 34, 38),
(14, '39-43', 39, 43),
(15, '44-48', 44, 48),
(16, '49-53', 49, 53),
(17, '54-58', 54, 58),
(18, '59-63', 59, 63),
(19, '64-68', 64, 68),
(20, '69-73', 69, 73),
(21, '74-78', 74, 78),
(22, '79-83', 79, 83),
(23, '84-88', 84, 88);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kilometros_id` (`kilometros_id`),
  ADD KEY `rango_edad_id` (`rango_edad_id`);

--
-- Indices de la tabla `corredor`
--
ALTER TABLE `corredor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `distancia` (`distancia`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `corredor_tiempo`
--
ALTER TABLE `corredor_tiempo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `corredor_id` (`corredor_id`);

--
-- Indices de la tabla `kilometros`
--
ALTER TABLE `kilometros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rango_edad`
--
ALTER TABLE `rango_edad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `corredor_tiempo`
--
ALTER TABLE `corredor_tiempo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `kilometros`
--
ALTER TABLE `kilometros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rango_edad`
--
ALTER TABLE `rango_edad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`kilometros_id`) REFERENCES `kilometros` (`id`),
  ADD CONSTRAINT `categoria_ibfk_2` FOREIGN KEY (`rango_edad_id`) REFERENCES `rango_edad` (`id`);

--
-- Filtros para la tabla `corredor`
--
ALTER TABLE `corredor`
  ADD CONSTRAINT `corredor_ibfk_1` FOREIGN KEY (`distancia`) REFERENCES `kilometros` (`id`),
  ADD CONSTRAINT `corredor_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `corredor_tiempo`
--
ALTER TABLE `corredor_tiempo`
  ADD CONSTRAINT `corredor_tiempo_ibfk_1` FOREIGN KEY (`corredor_id`) REFERENCES `corredor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
