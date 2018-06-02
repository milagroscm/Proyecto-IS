-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-06-2018 a las 02:30:16
-- Versión del servidor: 5.7.13-log
-- Versión de PHP: 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tour_guide`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_usuario`
--

CREATE TABLE `historial_usuario` (
  `idHistorial_Usuario` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `Imagen_Info_idImagen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `historial_usuario`
--

INSERT INTO `historial_usuario` (`idHistorial_Usuario`, `Usuario_idUsuario`, `Imagen_Info_idImagen`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_info`
--

CREATE TABLE `imagen_info` (
  `idImagen` int(11) NOT NULL,
  `NombreImagen` varchar(45) NOT NULL,
  `Ciudad` varchar(15) NOT NULL,
  `Provincia` varchar(15) NOT NULL,
  `Distrito` varchar(15) NOT NULL,
  `Direccion` varchar(15) NOT NULL,
  `longitud` varchar(45) NOT NULL,
  `latitud` varchar(45) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `Construccion` varchar(20) DEFAULT NULL,
  `Estilo_arquitectonico` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `imagen_info`
--

INSERT INTO `imagen_info` (`idImagen`, `NombreImagen`, `Ciudad`, `Provincia`, `Distrito`, `Direccion`, `longitud`, `latitud`, `descripcion`, `Construccion`, `Estilo_arquitectonico`) VALUES
(1, 'catedral de arequipa', 'Arequipa', 'Arequipa', 'Cercado', '', '71° 32′ 11.04″ W', '16° 23′ 53.16″ S', 'La Catedral de Arequipa (también conocida como Catedral basílica de Santa María) es considerada uno de los primeros monumentos religiosos de arequipa.', '1540-1656', 'Neorrenacentista'),
(2, 'Monasterio de Santa Catalina', 'Arequipa', 'Arequipa', 'Cercado', 'SanaCatalina301', ' 71° 32′ 12.45″ W', '16° 23′ 42.74″ S', 'La ciudadela se ubicó al sur del Perú en la ciudad de Arequipa fundada el 10 de septiembre de 1579 ', '1579', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Correo` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `ApellidoP` varchar(25) NOT NULL,
  `ApellidoM` varchar(25) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Pais` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Correo`, `Password`, `Nombres`, `ApellidoP`, `ApellidoM`, `Sexo`, `Pais`) VALUES
(1, 'admin@gmail.com', '123456', 'Juanillo', 'Vasquez', 'Duarte', 'M', 'Perú');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historial_usuario`
--
ALTER TABLE `historial_usuario`
  ADD PRIMARY KEY (`idHistorial_Usuario`),
  ADD KEY `fk_Historial_Usuario_Usuario1_idx` (`Usuario_idUsuario`),
  ADD KEY `fk_Historial_Usuario_Imagen_Info1_idx` (`Imagen_Info_idImagen`);

--
-- Indices de la tabla `imagen_info`
--
ALTER TABLE `imagen_info`
  ADD PRIMARY KEY (`idImagen`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial_usuario`
--
ALTER TABLE `historial_usuario`
  MODIFY `idHistorial_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `imagen_info`
--
ALTER TABLE `imagen_info`
  MODIFY `idImagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial_usuario`
--
ALTER TABLE `historial_usuario`
  ADD CONSTRAINT `fk_Historial_Usuario_Imagen_Info1` FOREIGN KEY (`Imagen_Info_idImagen`) REFERENCES `imagen_info` (`idImagen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Historial_Usuario_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
