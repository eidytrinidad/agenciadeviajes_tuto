-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2020 a las 20:37:23
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenciadeviajes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimoniales`
--

CREATE TABLE `testimoniales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `mensaje` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `testimoniales`
--

INSERT INTO `testimoniales` (`id`, `nombre`, `correo`, `mensaje`) VALUES
(4, 'Eidy Trinidad', 'eidyjtf@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(5, 'Junior Trinidad', 'ejt@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. '),
(6, 'Trinidad Ferreras', 'tf@tf.com', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially un'),
(7, 'Cerdo', 'eidyjtf@gmail.com', 'oj;'),
(8, 'BATE DE BASEBALL', 'tf@tf.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic'),
(9, 'PARCHIS', 'eidyjtf@gmail.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `precio` int(10) NOT NULL,
  `fecha_ida` date NOT NULL,
  `fecha_vuelta` date NOT NULL,
  `imagen` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL,
  `disponibles` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`id`, `titulo`, `precio`, `fecha_ida`, `fecha_vuelta`, `imagen`, `descripcion`, `disponibles`) VALUES
(1, 'Viaje a Roma, Italia Este Verano', 50000, '2019-06-24', '2019-06-30', 'roma', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', 32),
(2, 'Viaje a Canada ', 60000, '2019-07-19', '2019-07-19', 'canada', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', 25),
(3, 'Viaje a Grecia ', 40000, '2019-08-29', '2019-09-15', 'grecia', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', 18),
(4, 'Visita Londres Inglaterra', 8000, '2019-09-22', '2019-10-03', 'londres', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', 22),
(5, 'Viaje a Rio de Janeiro en Verano', 50000, '2019-04-16', '2019-04-25', 'rio', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', 23),
(6, 'Viaje a Paris, Francia en Primavera', 75000, '2019-04-03', '2019-04-10', 'paris', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', 14);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `testimoniales`
--
ALTER TABLE `testimoniales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `testimoniales`
--
ALTER TABLE `testimoniales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `viajes`
--
ALTER TABLE `viajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
