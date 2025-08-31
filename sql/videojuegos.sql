-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2025 a las 04:17:39
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
-- Base de datos: `videojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `usuario_id` int(11) NOT NULL,
  `videojuego_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desarrolladora`
--

CREATE TABLE `desarrolladora` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ubicacion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `desarrolladora`
--

INSERT INTO `desarrolladora` (`id`, `nombre`, `ubicacion`) VALUES
(1, 'Epic Games', 'Care, North California');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(9) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `pasword` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `sex`, `age`, `email`, `pasword`, `phone`) VALUES
(4, 'rodolfo', NULL, 18, 'juanito@juan.mx', '54321', NULL),
(5, 'asda', NULL, NULL, 'hola@gmail.com', '123456', NULL),
(6, 'asda', NULL, NULL, 'hola@gmail.com', '123456', NULL),
(7, 'Pancho', NULL, NULL, 'pancho@gmail.com', '789456', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `anio` year(4) NOT NULL,
  `precio` float NOT NULL,
  `portada` varchar(255) DEFAULT NULL,
  `desarrolladora_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id`, `nombre`, `genero`, `anio`, `precio`, `portada`, `desarrolladora_ID`) VALUES
(1, 'Fornite', 'Shooter', '2017', 0, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD KEY `biblioteca_usuarios_id` (`usuario_id`),
  ADD KEY `biblioteca_videojuegos_id` (`videojuego_id`) USING BTREE;

--
-- Indices de la tabla `desarrolladora`
--
ALTER TABLE `desarrolladora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videojuegos_desarrolladora_id` (`desarrolladora_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `desarrolladora`
--
ALTER TABLE `desarrolladora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD CONSTRAINT `biblioteca_usuarios_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `biblioteca_videojuegos_id` FOREIGN KEY (`videojuego_id`) REFERENCES `videojuegos` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD CONSTRAINT `videojuegos_desarrolladora_id` FOREIGN KEY (`desarrolladora_ID`) REFERENCES `desarrolladora` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
