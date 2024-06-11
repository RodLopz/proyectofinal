-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: b3ncolpnxhtep2gfu0qs-mysql.services.clever-cloud.com:3306
-- Tiempo de generación: 10-06-2024 a las 19:03:03
-- Versión del servidor: 8.0.22-13
-- Versión de PHP: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `b3ncolpnxhtep2gfu0qs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Carts`
--

CREATE TABLE `Carts` (
  `id` int NOT NULL,
  `orderNumber` int DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Carts`
--

INSERT INTO `Carts` (`id`, `orderNumber`, `total`, `userId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 544.00, 6, '2024-05-14 19:52:10', '2024-05-14 19:52:10', NULL),
(2, 2, 634.00, 7, '2024-05-15 06:53:32', '2024-05-15 06:53:32', NULL),
(3, 3, 0.00, 6, '2024-05-16 11:28:36', '2024-05-16 11:28:36', NULL),
(4, 4, 0.00, 8, '2024-05-16 15:31:14', '2024-05-16 15:31:14', NULL),
(5, 5, 234.50, 10, '2024-05-29 12:02:30', '2024-05-29 12:02:30', NULL),
(6, 6, 175.00, 11, '2024-06-10 16:30:51', '2024-06-10 16:30:51', NULL),
(7, 7, 59.50, 11, '2024-06-10 16:32:16', '2024-06-10 16:32:16', NULL),
(8, 8, 175.00, 11, '2024-06-10 16:34:19', '2024-06-10 16:34:19', NULL),
(9, 9, 175.00, 11, '2024-06-10 16:35:55', '2024-06-10 16:35:55', NULL),
(10, 10, 59.50, 12, '2024-06-10 16:36:45', '2024-06-10 16:36:45', NULL),
(11, 11, 0.00, 13, '2024-06-10 17:35:38', '2024-06-10 17:35:38', NULL),
(12, 12, 544.00, 11, '2024-06-10 17:36:52', '2024-06-10 17:36:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categories`
--

CREATE TABLE `Categories` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Categories`
--

INSERT INTO `Categories` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'WEB', NULL, NULL, NULL),
(2, 'RRSS', NULL, NULL, NULL),
(3, 'ASESORAMIENTO', NULL, NULL, NULL),
(4, 'DISEÑO', NULL, NULL, NULL),
(5, 'CURSOS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Items`
--

CREATE TABLE `Items` (
  `id` int NOT NULL,
  `salePrice` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `state` tinyint DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `cartId` int DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Items`
--

INSERT INTO `Items` (`id`, `salePrice`, `quantity`, `subtotal`, `state`, `userId`, `productId`, `cartId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 544.00, 1, 544.00, 0, 6, 2, 1, '2024-05-14 19:52:05', '2024-05-14 19:52:10', NULL),
(2, 175.00, 1, 175.00, 0, 7, 4, 2, '2024-05-15 06:53:23', '2024-05-15 06:53:32', NULL),
(3, 459.00, 1, 459.00, 0, 7, 1, 2, '2024-05-15 06:53:27', '2024-05-15 06:53:32', NULL),
(4, 175.00, 1, 175.00, 0, 6, 4, 3, '2024-05-16 11:28:32', '2024-05-16 11:28:36', NULL),
(5, 175.00, 1, 175.00, 0, 8, 4, 4, '2024-05-16 15:31:06', '2024-05-16 15:31:14', NULL),
(6, 59.50, 1, 59.50, 0, 10, 8, 5, '2024-05-29 12:02:19', '2024-05-29 12:02:30', NULL),
(7, 175.00, 1, 175.00, 0, 10, 4, 5, '2024-05-29 12:02:21', '2024-05-29 12:02:30', NULL),
(8, 175.00, 1, 175.00, 0, 11, 4, 6, '2024-06-10 16:30:44', '2024-06-10 16:30:51', NULL),
(10, 175.00, 1, 175.00, 0, 11, 4, 8, '2024-06-10 16:33:22', '2024-06-10 16:34:19', NULL),
(12, 175.00, 1, 175.00, 0, 11, 4, 9, '2024-06-10 16:35:52', '2024-06-10 16:35:55', NULL),
(13, 59.50, 1, 59.50, 0, 12, 8, 10, '2024-06-10 16:36:40', '2024-06-10 16:36:45', NULL),
(14, 544.00, 1, 544.00, 0, 13, 2, 11, '2024-06-10 17:35:21', '2024-06-10 17:35:38', NULL),
(15, 544.00, 1, 544.00, 0, 13, 2, 11, '2024-06-10 17:35:35', '2024-06-10 17:35:38', NULL),
(16, 544.00, 1, 544.00, 0, 11, 2, 12, '2024-06-10 17:36:08', '2024-06-10 17:36:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Services`
--

CREATE TABLE `Services` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `recommended` int DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Services`
--

INSERT INTO `Services` (`id`, `name`, `description`, `price`, `discount`, `recommended`, `image`, `categoryId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Diseño Web Basico', 'Descripcion diseño', 540.00, 15, 1, 'diseñoweb.png', 2, NULL, NULL, NULL),
(2, 'Diseño Web Avanzado', 'Some quick example text to build on the card title and make up the bulk of the', 640.00, 15, 1, 'awd.png', 3, NULL, NULL, NULL),
(4, 'Optimizacion SEO', 'SEO', 250.00, 30, 1, 'seo.png', 1, '2024-03-20 23:48:44', '2024-07-21 01:20:42', NULL),
(5, 'Mantenimiento Web Basico', 'Mantenimiento', 350.00, 15, 0, 'mantenimiento.png', 1, '2024-01-07 16:37:44', '2024-01-21 06:46:45', NULL),
(6, 'Gestion de Redes Sociales', 'Gestion de redes', 470.00, 15, 0, 'redes.png', 1, '2024-01-07 16:40:36', '2024-01-21 06:47:24', NULL),
(8, 'Desarrollo de tiendas E-Commerce', 'Ecommerce', 70.00, 15, 1, 'ecommerce.png', 3, '2024-01-07 16:55:47', '2024-01-21 06:45:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `provincia` int DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Users`
--

INSERT INTO `Users` (`id`, `firstName`, `lastName`, `email`, `password`, `provincia`, `avatar`, `role`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Rodrigo', 'Lopez', 'rodrigo@gmail.com', '$2a$10$63rXDLZHIRZgUF5DMYx4Iuz.aW2.sVYevEv8HvZfHTalzAkQTMUMi', 82, '', 9, '2020-08-11 17:42:41', '2020-08-11 17:42:41', NULL),
(2, 'Pablo ', 'Calleja', 'pablocalleja@gmail.com', '$2a$10$BWEqyQ4aFZidgb0lzGTq1uSaDnMpLPPMi6xUMbJddkOp7Fvg2oBXG', 18, '', 1, '2020-08-13 15:48:56', '2020-08-13 15:48:56', NULL),
(3, 'Victor', 'Fuentes', 'victor1@gmail.com', '$2a$10$UkQ9OEYVCoI7/07a19VTRe2FfSj5vpWfPqrJjMDbM/FA6l4BynEpG', 82, 'foto-1597378583037.png', 1, '2020-08-14 04:16:23', '2020-08-14 04:16:23', NULL),
(4, 'Daniel', ',Martinez', 'danielmartinez@gmail.com', '$2a$10$/EnZpBkDBqgtpnAFYQMQw.Gvk.6xPVUXw5L0.CGQ/W5QyeEopBtJm', 10, 'foto-1598401828903.pdf', 1, '2020-08-26 00:30:29', '2020-08-26 00:30:29', NULL),
(5, 'rrrrr', 'rrrr', 'popi@popi.com', '$2a$10$egrxNEujNqYy/GrhbL/Riu9VjILDp0fXrEd7ERHonhkVrdGJ5MsYa', 0, 'foto-1715713239560.ico', 1, '2024-05-14 19:00:40', '2024-05-14 19:00:40', NULL),
(6, 'pablo', 'calleja', 'pacame24@gmail.com', '$2a$10$Vp4zNsg7I/IRgxwv640fHOlzrkM0kZAueIvtaB46CtC4gV708nf86', 0, 'foto-1715716307184.jpg', 1, '2024-05-14 19:51:48', '2024-05-14 19:51:48', NULL),
(7, 'rlopez', 'lopz', 'rlopz@rlopz.com', '$2a$10$Cr.fJMbCA.nrP0u41ypdvuZqCctkX..STcfgY4Bp3wrmzn2OEoKvC', 0, 'foto-1715755990767.jpg', 1, '2024-05-15 06:53:11', '2024-05-15 06:53:11', NULL),
(8, 'Cristian', 'Cuerda Gonzalez', 'cricugon@hotmail.com', '$2a$10$uUXLcVZ9LbA1z64a/K5auuKNiUuMba9fDJ/Jn5C0IVcsJzjDm28Pm', 0, 'foto-1715873438527.png', 1, '2024-05-16 15:30:39', '2024-05-16 15:30:39', NULL),
(9, 'pablo', 'Ronaldo', 'Ronaldo@gmail.com', '$2a$10$E0Lyes7DJSYawtm9HDmiKeMKQs4CLYZgl.4iqmfn8IBawtx/ngGDS', 0, 'foto-1716446375790.jpg', 1, '2024-05-23 06:39:36', '2024-05-23 06:39:36', NULL),
(10, 'tecon', 'tecon', 'tecon@tecon.es', '$2a$10$GzG5fxhnPwNaCnm3qfYLou6AocdVNUmazGN0SgFHh/sT3TCUzbDzK', 0, 'foto-1716984115525.jpg', 1, '2024-05-29 12:01:56', '2024-05-29 12:01:56', NULL),
(11, '1', '1', '1@1.com', '$2a$10$mBdmkez7FWTg7Vfj6aWYqOHDWhQZ209QD0bCWs9l/POuxGS8wI.ei', 0, 'foto-1718037022559.jpg', 1, '2024-06-10 16:30:22', '2024-06-10 16:30:22', NULL),
(12, '2', '2', '2@2.com', '$2a$10$RMNynFribKfnPfD0S0Exnu3q4wGLPAsGHuM3jOFGJtySn6Z39nrcy', 0, 'foto-1718037384225.jpg', 1, '2024-06-10 16:36:24', '2024-06-10 16:36:24', NULL),
(13, 'Pablo', 'Calleja Merenciano', 'pacame242424@gmail.com', '$2a$10$PgWnycMlTIirhgDzTK5yte6WIQdUUF35lvDiJahn2.UKM9N.zPGJG', 0, 'foto-1718040887145.png', 1, '2024-06-10 17:34:47', '2024-06-10 17:34:47', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Carts`
--
ALTER TABLE `Carts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Services`
--
ALTER TABLE `Services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Carts`
--
ALTER TABLE `Carts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Items`
--
ALTER TABLE `Items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `Services`
--
ALTER TABLE `Services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
