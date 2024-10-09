-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2023 a las 01:41:15
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `galpones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `switch_events`
--

CREATE TABLE `switch_events` (
  `id` int(11) NOT NULL,
  `switch_name` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `event_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `switch_events`
--

INSERT INTO `switch_events` (`id`, `switch_name`, `action`, `event_time`) VALUES
(1, 'Agua', 'Encendido', '2023-10-19 23:07:30'),
(2, 'Ventilacion', 'Encendido', '2023-10-19 23:07:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usu_usuario` varchar(50) NOT NULL,
  `usu_password` varchar(12) NOT NULL,
  `usu_nombres` varchar(50) NOT NULL,
  `usu_apellidos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_usuario`, `usu_password`, `usu_nombres`, `usu_apellidos`) VALUES
('delylopez@gmail.com', 'dely321', 'Dely', 'Lopez Ramos'),
('esnaider@gmail.com', '12345678', 'Esnaider', 'Guzman Peñata'),
('luismadera@gmail.com', 'luis2023', 'Luis', 'Madera Morelo'),
('rosalinda@gmail.com', 'rosa123', 'Rosalinda', 'Castro Garces');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `switch_events`
--
ALTER TABLE `switch_events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `switch_events`
--
ALTER TABLE `switch_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
