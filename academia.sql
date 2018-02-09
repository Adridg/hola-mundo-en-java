-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2018 a las 20:43:10
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academia`
--
DROP DATABASE IF EXISTS ACADEMIA;
CREATE DATABASE ACADEMIA;
USE ACADEMIA;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `telefono` int(9) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `activo` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usuario` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`dni`, `nombre`, `apellido`, `telefono`, `direccion`, `email`, `activo`, `password`, `usuario`) VALUES
('11111111R', 'Andrea', 'Villar', 978645312, 'C/ Avenida del Salesman 23', 'andreaAd@gmail.com', 'si', 'Rocio1', 'administrador'),
('22222222Z', 'Eriel', 'Sanchez', 912345678, 'C/ Capitán Apodaca 4', 'erielAd@gmail.com', 'si', 'Sonia1', 'administrador'),
('33333333P', 'Manuel', 'Perez', 912546212, 'C/ Avenida del Cid', 'manuelAd@gmail.com', 'si', 'Juan12', 'administrador'),
('44444444O', 'Rocio', 'García', 689124653, 'C/  Amoral', 'rocioAd@gmail.com', 'si', 'Diego12', 'administrador'),
('55555555Y', 'Matias', 'Alves', 687562300, 'C/ Estepa', 'mariasAd@gmail.com', 'no', 'David12', 'administrador'),
('99999999T', 'Emilio', 'Prieto', 624153852, 'C/ Mandel', 'emilioAd@gmail.com', 'si', 'Carlos1', 'administrador'),
('administr', 'administrador', 'Mendez', 612458910, 'C/ Puerto administrador', 'administrador@gmail.com', 'si', 'administrador', 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `telefono` int(9) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `activo` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `estadoCobro` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`dni`, `nombre`, `apellido`, `telefono`, `direccion`, `email`, `activo`, `password`, `usuario`, `estadoCobro`) VALUES
('12456879E', 'Diego', 'García', 689124653, 'C/  Amoral', 'diego@gmail.com', 'si', 'Diego12', 'alumno', 'pendiente'),
('23420102E', 'Carlos', 'Prieto', 624153852, 'C/ Mandel', 'carlos@gmail.com', 'si', 'Carlos1', 'alumno', 'pendiente'),
('24568716R', 'Juan', 'Perez', 912546212, 'C/ Avenida del Cid', 'juan@gmail.com', 'si', 'Juan12', 'alumno', 'pagado'),
('42010210B', 'Sonia', 'Sanchez', 912345678, 'C/ Capitán Apodaca 4', 'sonia@gmail.com', 'si', 'Sonia1', 'alumno', 'pendiente'),
('45625815Q', 'Emilio', 'Marquez', 901023567, 'C/ Avenida del Insert', 'emilio@gmail.com', 'no', 'Emilio1', 'alumno', 'pagado'),
('46231111Z', 'Luis', 'Dominguez', 900156112, 'C/ Avenida de Javascript', 'luis@gmail.com', 'si', 'Luis12', 'alumno', 'pendiente'),
('54629812T', 'Rocio', 'Villar', 978645312, 'C/ Avenida del Salesman 23', 'rocio@gmail.com', 'si', 'Rocio1', 'alumno', 'pendiente'),
('68789122A', 'David', 'Alves', 687562300, 'C/ Estepa', 'david@gmail.com', 'no', 'David12', 'alumno', 'pagado'),
('72158961T', 'Ivan', 'Mendez', 612458910, 'C/ Puerto Delete', 'ivanSales@gmail.com', 'si', 'Ivan12', 'alumno', 'pendiente'),
('85214796Y', 'Clara', 'De Guis', 910289463, 'C/ Montreal', 'clara@gmail.com', 'si', 'Clara1', 'alumno', 'pendiente'),
('98765432D', 'Adrian', 'Gonzalez', 900012345, 'C/ PHP 7', 'adrian@gmail.com', 'no', 'Adrian1', 'alumno', 'pagado'),
('alumno', 'alumno', 'alumno', 910289463, 'C/ alumno', 'alumno@gmail.com', 'si', 'alumno', 'alumno', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `codCurso` varchar(60) NOT NULL,
  `idioma` varchar(40) NOT NULL,
  `duracion` varchar(60) NOT NULL,
  `precio` int(10) NOT NULL,
  `tipo` varchar(60) NOT NULL,
  `nivel` varchar(60) NOT NULL,
  `activo` varchar(60) NOT NULL,
  `dniProf` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`codCurso`, `idioma`, `duracion`, `precio`, `tipo`, `nivel`, `activo`, `dniProf`) VALUES
('DEA2P', 'Aleman', '4 meses', 500, 'Presencial', 'A2', 'si', '98989898P'),
('DEB1P', 'Aleman', '8 meses', 1000, 'Presencial', 'B1', 'no', 'profesor'),
('DEB2P', 'Aleman', '12 meses', 1500, 'Presencial', 'B2', 'no', 'profesor'),
('ENA2P', 'Inglés', '4 meses', 400, 'Presencial', 'A2', 'si', '15151515L'),
('ENB1S', 'Inglés', '8 meses', 1200, 'Semipresencial', 'B1', 'si', '27272727N'),
('ENB2D', 'Inglés', '4 meses', 400, 'Presencial', 'A2', 'si', '36636633H'),
('FRA2P', 'Francés', '5 meses', 500, 'Semipresencial', 'B1', 'si', '47474747R'),
('FRB1S', 'Francés', '10 meses', 900, 'Presencial', 'A2', 'si', '50505050E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `numero` int(20) NOT NULL,
  `dniAlu` varchar(9) NOT NULL,
  `codCurso` varchar(60) NOT NULL,
  `estado` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`numero`, `dniAlu`, `codCurso`, `estado`) VALUES
(1, '12456879E', 'DEA2P', 'activa'),
(2, '12456879E', 'ENB1S', 'activa'),
(3, '23420102E', 'DEB2P', 'activa'),
(4, '23420102E', 'FRB1S', 'activa'),
(5, '24568716R', 'FRB1S', 'activa'),
(6, '24568716R', 'ENB2D', 'inactiva'),
(7, '42010210B', 'FRA2P', 'inactiva'),
(8, '45625815Q', 'DEB2P', 'activa'),
(9, '46231111Z', 'ENB1S', 'activa'),
(10, '46231111Z', 'ENA2P', 'activa'),
(11, '54629812T', 'DEA2P', 'activa'),
(12, '68789122A', 'ENA2P', 'inactiva'),
(13, '85214796Y', 'DEB2P', 'activa'),
(14, '98765432D', 'FRB1S', 'activa'),
(15, 'alumno', 'DEB2P', 'activa'),
(16, 'alumno', 'FRB1S', 'inactiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `examen` varchar(60) NOT NULL,
  `numMatri` int(20) NOT NULL,
  `Nota` decimal(2,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`examen`, `numMatri`, `Nota`) VALUES
('Examen 1', 1, '8'),
('Examen 1', 2, '4'),
('Examen 1', 3, '9'),
('Examen 1', 4, '8'),
('Examen 1', 5, '10'),
('Examen 1', 6, '8'),
('Examen 1', 7, '4'),
('Examen 1', 8, '2'),
('Examen 1', 9, '8'),
('Examen 1', 10, '2'),
('Examen 1', 11, '4'),
('Examen 1', 12, '8'),
('Examen 1', 13, '9'),
('Examen 1', 14, '8'),
('Examen 1', 15, '3'),
('Examen 1', 16, '7'),
('Examen 2', 1, '7'),
('Examen 2', 2, '6'),
('Examen 2', 3, '10'),
('Examen 2', 4, '9'),
('Examen 2', 5, '2'),
('Examen 2', 6, '6'),
('Examen 2', 7, '6'),
('Examen 2', 8, '6'),
('Examen 2', 9, '9'),
('Examen 2', 10, '3'),
('Examen 2', 13, '10'),
('Examen 2', 14, '6'),
('Examen 2', 15, '5'),
('Examen 2', 16, '2'),
('Examen 3', 1, '8'),
('Examen 3', 2, '2'),
('Examen 3', 3, '2'),
('Examen 3', 5, '3'),
('Examen 3', 6, '4'),
('Examen 3', 9, '10'),
('Examen 3', 14, '1'),
('Examen 3', 15, '4'),
('Examen 3', 16, '6'),
('Examen 4', 1, '6'),
('Examen 4', 2, '6'),
('Examen 4', 3, '3'),
('Examen 4', 5, '6'),
('Examen 4', 15, '3'),
('Examen 5', 2, '8'),
('Examen 5', 3, '4'),
('Examen 5', 5, '7'),
('Examen 5', 15, '6'),
('Trabajo 1', 1, '6'),
('Trabajo 1', 3, '5'),
('Trabajo 1', 4, '6'),
('Trabajo 1', 12, '5'),
('Trabajo 1', 16, '10'),
('Trabajo 2', 1, '10'),
('Trabajo 2', 4, '7'),
('Trabajo 2', 12, '6'),
('Trabajo 3', 12, '7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `telefono` int(9) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `activo` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usuario` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`dni`, `nombre`, `apellido`, `telefono`, `direccion`, `email`, `activo`, `password`, `usuario`) VALUES
('15151515L', 'Esther', 'Villar', 978645312, 'C/ Avenida del Salesman 23', 'estherProf@gmail.com', 'si', 'Esther12', 'profesor'),
('27272727N', 'Sara', 'Sanchez', 912345678, 'C/ Capitán Apodaca 4', 'saraProf@gmail.com', 'si', 'Sara123', 'profesor'),
('36636633H', 'Daniel', 'Perez', 912546212, 'C/ Avenida del Cid', 'danielProf@gmail.com', 'si', 'Daniel12', 'profesor'),
('47474747R', 'Juanjo', 'García', 689124653, 'C/  Amoral', 'juanjoProf@gmail.com', 'si', 'Juanjo12', 'profesor'),
('50505050E', 'Ana', 'Alves', 687562300, 'C/ Estepa', 'anaProf@gmail.com', 'no', 'Ana1234', 'profesor'),
('98989898P', 'Juan', 'Prieto', 624153852, 'C/ Mandel', 'juanProf@gmail.com', 'si', 'Juan12', 'profesor'),
('profesor', 'profesor', 'Mendez', 612458910, 'C/ Puerto profesor', 'profesor@gmail.com', 'si', 'profesor', 'profesor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `cod_tipo` (`usuario`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `cod_tipo` (`usuario`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codCurso`),
  ADD KEY `dniProf` (`dniProf`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `dniAlu` (`dniAlu`),
  ADD KEY `codCurso` (`codCurso`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`examen`,`numMatri`) USING BTREE,
  ADD KEY `numMatri` (`numMatri`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `cod_tipo` (`usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_2` FOREIGN KEY (`dniProf`) REFERENCES `profesores` (`dni`);

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`dniAlu`) REFERENCES `alumnos` (`dni`),
  ADD CONSTRAINT `matriculas_ibfk_2` FOREIGN KEY (`codCurso`) REFERENCES `cursos` (`codCurso`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`numMatri`) REFERENCES `matriculas` (`numero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
