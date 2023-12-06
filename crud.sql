-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2023 a las 11:40:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `altapersonal`
--

CREATE TABLE `altapersonal` (
  `id_empleado` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `numero` text NOT NULL,
  `correo` text NOT NULL,
  `localidad` text NOT NULL,
  `estado` text NOT NULL,
  `codigo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `altapersonal`
--

INSERT INTO `altapersonal` (`id_empleado`, `nombre`, `numero`, `correo`, `localidad`, `estado`, `codigo`) VALUES
(1, 'Jose Raul Dominguez Tercero', '7229890022', 'raul@gmail.com', 'Xonacatlan', 'Estado de méxico', 52041);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_articulos` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `stock` varchar(30) NOT NULL,
  `precio` varchar(20) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_articulos`, `nombre`, `stock`, `precio`, `descripcion`) VALUES
(3, 'Iphone 11', '3', '10000.00', 'Dispositivo de gama alta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(15) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `nif` varchar(30) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `numero` text NOT NULL,
  `departamento` varchar(200) NOT NULL,
  `direccion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre`, `nif`, `correo`, `numero`, `departamento`, `direccion`) VALUES
(1, 'Juan Carlos Torres', 'LSS-32Q', 'apple@gmail.com', '7223450023', 'Tecnologias & accesorios', 'apple 2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `altapersonal`
--
ALTER TABLE `altapersonal`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_articulos`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `altapersonal`
--
ALTER TABLE `altapersonal`
  MODIFY `id_empleado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_articulos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
