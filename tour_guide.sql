-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2018 a las 05:24:48
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tour_guide`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_usuario`
--

CREATE TABLE IF NOT EXISTS `historial_usuario` (
  `idHistorial_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_idUsuario` int(11) NOT NULL,
  `Imagen_Info_idImagen` int(11) NOT NULL,
  PRIMARY KEY (`idHistorial_Usuario`),
  KEY `fk_Historial_Usuario_Usuario1_idx` (`Usuario_idUsuario`),
  KEY `fk_Historial_Usuario_Imagen_Info1_idx` (`Imagen_Info_idImagen`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `historial_usuario`
--

INSERT INTO `historial_usuario` (`idHistorial_Usuario`, `Usuario_idUsuario`, `Imagen_Info_idImagen`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_info`
--

CREATE TABLE IF NOT EXISTS `imagen_info` (
  `idImagen` int(11) NOT NULL AUTO_INCREMENT,
  `NombreImagen` varchar(45) NOT NULL,
  `Ciudad` varchar(15) NOT NULL,
  `Provincia` varchar(15) NOT NULL,
  `Distrito` varchar(15) NOT NULL,
  `Direccion` varchar(15) NOT NULL,
  `longitud` varchar(45) NOT NULL,
  `latitud` varchar(45) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `Construccion` varchar(20) DEFAULT NULL,
  `Estilo_arquitectonico` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idImagen`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `imagen_info`
--

INSERT INTO `imagen_info` (`idImagen`, `NombreImagen`, `Ciudad`, `Provincia`, `Distrito`, `Direccion`, `longitud`, `latitud`, `descripcion`, `Construccion`, `Estilo_arquitectonico`) VALUES
(1, 'catedral de arequipa', 'Arequipa', 'Arequipa', 'Cercado', '', '71° 32′ 11.04″ W', '16° 23′ 53.16″ S', 'La Catedral de Arequipa (también conocida como Catedral basílica de Santa María) es considerada uno de los primeros monumentos religiosos de arequipa.', '1540-1656', 'Neorrenacentista'),
(2, 'Monasterio de Santa Catalina', 'Arequipa', 'Arequipa', 'Cercado', 'SanaCatalina301', ' 71° 32′ 12.45″ W', '16° 23′ 42.74″ S', 'La ciudadela se ubicó al sur del Perú en la ciudad de Arequipa fundada el 10 de septiembre de 1579 ', '1579', NULL),
(3, 'Iglesia La Compañía', 'Arequipa', 'Arequipa', 'Cercado', '', '71° 32′ 11.42″ W', '16° 23′ 59.32″ S', 'Joya de arquitectura religiosa situada en uno de los costados de Plaza de Armas,se destaca por sus muros de piedra blanca y el hermoso juego de reliev', '1590-1698', 'Barroco'),
(4, 'Barrio San Lázaro ', 'Arequipa', 'Arequipa', 'Cercado', '', '', '', 'Barrio más antiguo de Arequipa, situado a no más de 500 metros de la Plaza de Armas, una mágica área de pequeñas plazoletas y estrechas callejuelas en', '1540', 'Pre-colombino'),
(5, 'Monasterio de Santa Catalina', 'Arequipa', 'Arequipa', 'Cercado', '', '71° 32′ 12.45″ W	', '16° 23′ 42.74″ S', 'Uno de los más famosos lugares turísticos de Arequipa, una verdadera ciudadela una obra en sillar blanco y rosado, con un conjunto de estrechos callej', '1579', 'Barroco'),
(6, 'Los Tambos', 'Arequipa', 'Arequipa', 'Cercado', 'puente bolognes', '', '', 'Corresponden a diversas construcciones que se edificaron a lo largo de los caminos, en el período de la colonia, para servir como lugares de descanso ', '1783', 'mundano - barrial'),
(7, 'Villa Hermosa de Yanahuara', 'Arequipa', 'Arequipa', 'Yanahuara', 'miguel grau', '71º33’14”', '16º23’42”', 'Uno de los lugares turísticos de Arequipa más famosos por albergar el hermoso Mirador de Yanahuara, terraza circundada por arcadas de piedra, que sirv', NULL, NULL),
(8, 'Molino de Sabandia', 'Arequipa', 'Arequipa', 'sabandia', '', '', '', 'monumento colonial que por siglos fue el abastecedor de harina de la ciudad, una obra patrimonial hoy en día restaurada, manteniendo sus blancos muros', '1621 ', NULL),
(9, 'Reserva Nacional Salinas y Aguada Blanca', 'Arequipa', 'Arequipa', 'entre arequipa ', '', '71° 13′ 8.4″ W', '16° 6′ 7.56″ S', 'Joya de patrimonio natural situada en las cercanías de Arequipa, a una altitud promedio de 4 300 msnm, una zona característica por sus paisajes que me', '1979', ''),
(10, 'Casa del Moral', 'Arequipa', 'Arequipa', 'Cercado', 'moral 308', '-71.53780610000001', '-16.3969263', 'Es una casona construida en el siglo XVIII, que se constituye como uno de los monumentos arquitectónicos más antiguos e importantes del barrocoen la c', 'entre 1500-1599', 'Barroco civil milita'),
(11, 'Cañón del Colca', 'Arequipa', 'Caylloma', 'chivay', '', '71° 52′ 45″ W', '15° 35′ 50″ S', 'Uno de los cañones naturales más profundos del mundo, una formidable excursión que permite apreciar paisajes altiplánicos, pequeños poblados coloniale', '1450', NULL),
(12, 'Casa Tristán del Pozo', 'Arequipa', 'Arequipa', 'Cercado', 'San Francisco 1', '-71.5359853', '-16.398095', 'En la actualidad, esta casona construida a mediados del siglo XVIII se ha convertido en la sede de un banco y alberga un museo de sitio además de una ', '1700-1800', 'Barroco civil milita'),
(13, 'Palacio Goyeneche', 'Arequipa', 'Arequipa', 'Sachaca', '', '-71.56673890000002', '-16.4295925', 'Es una de las construcciones civiles más conocidas y turísticas de Arequipa. Situada en la confluencia de las Calles de la Merced y del Palacio Viejo,', '1558', 'Barroco'),
(14, 'El convento de San Francisco', 'Arequipa', 'Arequipa', 'Cercado', 'Calle Zela 103', '-71.5346227', '-16.3951507', 'El templo de San Francisco se encuentra ubicado frente a una pequeña plaza. La iglesia tiene una planta rectangular, tres naves, un transepto y un pre', '1552', 'Barroco'),
(15, 'Iglesia y claustos de Santo Domingo', 'Arequipa', 'Arequipa', 'Cercado', '', '-71.5340966', '-16.4006558', 'Los primera congregación de doctrinario misioneros en llegar a la ciudad de Arequipa fueron los dominicos.El frontis de esta iglesia se caracteriza po', '1582', 'Barroco'),
(16, 'Convento de la Recoleta', 'Arequipa', 'Arequipa', 'Yanahuara', 'La Recoleta 117', '-71.54149289999998', '-16.3938973', 'Este convento posee claustros de estilo virreinal local. Uno de ellos, rectangular y denominado Alcantarino, es el mejor conservado. Con sus cuatro cl', '1648', 'Civil- Religioso'),
(17, 'Iglesia y claustros de la Compañía de Jesús', 'Arequipa', 'Arequipa', 'Cercado', 'General Móran 1', '-71.53649810000002', '-16.3998022', 'Cuenta con una nave principal, dos alas laterales, un coro alto y un santuario. En el interior del templo se pueden apreciar retablos de madera tallad', '1595-1698', 'Civil-Religioso'),
(18, 'Casona Irribery', 'Arequipa', 'Arequipa', 'Cercado', 'Calle San Agust', '-71.53739430000002', '-16.3979991', 'Esta casona, denominada por algunos como parlante, por las diferentes inscripciones que luce, se vincula por un costado con otra casona cuya fachada s', '1743', 'Barroco civil milita'),
(19, 'Bosque Selva Alegre', 'Arequipa', 'Arequipa', 'Selva Alegre', '', '-71.53476119999999', '-16.3422037', 'Es un parque ubicado en Arequipa. Es utilizado como espacio de relajación. Cuenta con un lago artificial para paseos en bote, áreas de juegos para niñ', NULL, NULL),
(20, 'Volcán Misti', 'Arequipa', 'Arequipa', '', '', '-71.40567659999999', '-16.2988336', 'considerado como uno de los 10 volcanes activos y/o potencialmente activos de esta parte de la cordillera de los Andes, y es monitoreado desde el año ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Correo` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `ApellidoP` varchar(25) NOT NULL,
  `ApellidoM` varchar(25) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Pais` varchar(10) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Correo`, `Password`, `Nombres`, `ApellidoP`, `ApellidoM`, `Sexo`, `Pais`) VALUES
(1, 'admin@gmail.com', '123456', 'Juanillo', 'Vasquez', 'Duarte', 'M', 'Perú');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial_usuario`
--
ALTER TABLE `historial_usuario`
  ADD CONSTRAINT `fk_Historial_Usuario_Imagen_Info1` FOREIGN KEY (`Imagen_Info_idImagen`) REFERENCES `imagen_info` (`idImagen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Historial_Usuario_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
