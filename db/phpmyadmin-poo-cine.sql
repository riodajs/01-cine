-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2018 at 01:34 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poo-cine`
--

-- --------------------------------------------------------

--
-- Table structure for table `Actor`
--

CREATE TABLE `Actor` (
  `id_actor` int(11) NOT NULL,
  `animado` tinyint(1) DEFAULT NULL,
  `apellido` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `nombre` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Calificacion`
--

CREATE TABLE `Calificacion` (
  `id_calificacion` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Calificacion`
--

INSERT INTO `Calificacion` (`id_calificacion`, `nombre`) VALUES
(1, 'Apta para todo publico');

-- --------------------------------------------------------

--
-- Table structure for table `Cine`
--

CREATE TABLE `Cine` (
  `id_cine` int(11) NOT NULL,
  `direccion` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `fecha_inauguracion` datetime DEFAULT NULL,
  `nombre` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `precio_entrada` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Cine`
--

INSERT INTO `Cine` (`id_cine`, `direccion`, `fecha_inauguracion`, `nombre`, `precio_entrada`) VALUES
(1, 'Lavaisse 2274', '2018-10-10 00:00:00', 'dasdadasd', 23);

-- --------------------------------------------------------

--
-- Table structure for table `Empleado`
--

CREATE TABLE `Empleado` (
  `apellido` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `@cuit` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Entrada`
--

CREATE TABLE `Entrada` (
  `id_entrada` int(11) NOT NULL,
  `fecha_hora_funcion` datetime DEFAULT NULL,
  `fecha_hora_venta` datetime DEFAULT NULL,
  `precio_cobrado` float DEFAULT NULL,
  `ticket_nro` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Funcion`
--

CREATE TABLE `Funcion` (
  `numero` int(11) NOT NULL,
  `dia_semana` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `duracion` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `hora_inicio` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_programacion` int(11) NOT NULL,
  `id_pelicula` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Genero`
--

CREATE TABLE `Genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Genero`
--

INSERT INTO `Genero` (`id_genero`, `nombre`) VALUES
(1, 'comedia');

-- --------------------------------------------------------

--
-- Table structure for table `HorarioFuncion`
--

CREATE TABLE `HorarioFuncion` (
  `id_horario_funcion` int(11) NOT NULL,
  `duracion_intervalo` int(11) DEFAULT NULL,
  `duracion_publicidad` int(11) DEFAULT NULL,
  `es_trasnoche` tinyint(1) DEFAULT NULL,
  `hora_primera_funcion` datetime DEFAULT NULL,
  `hora_ultima_funcion` datetime DEFAULT NULL,
  `id_cine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `PaisDeOrigen`
--

CREATE TABLE `PaisDeOrigen` (
  `id_pais_de_origen` int(11) NOT NULL,
  `idioma` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `PaisDeOrigen`
--

INSERT INTO `PaisDeOrigen` (`id_pais_de_origen`, `idioma`, `nombre`) VALUES
(1, 'Ingles', 'Estados Unidos');

-- --------------------------------------------------------

--
-- Table structure for table `Pelicula`
--

CREATE TABLE `Pelicula` (
  `id_pelicula` int(11) NOT NULL,
  `anio_estreno` int(11) DEFAULT NULL,
  `disponible` tinyint(1) NOT NULL,
  `duracion` int(11) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `titulo_original` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id_calificacion` int(11) NOT NULL,
  `id_pais_de_origen` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Pelicula`
--

INSERT INTO `Pelicula` (`id_pelicula`, `anio_estreno`, `disponible`, `duracion`, `fecha_ingreso`, `nombre`, `titulo_original`, `id_calificacion`, `id_pais_de_origen`, `id_genero`) VALUES
(1, 2312, 1, 123, '2018-10-21', 'dadsad', 'fdsfdsfssfsd', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Personaje`
--

CREATE TABLE `Personaje` (
  `id_personaje` int(11) NOT NULL,
  `nombreEnPelicula` varchar(40) COLLATE utf8_bin NOT NULL,
  `id_actor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Programacion`
--

CREATE TABLE `Programacion` (
  `id_programacion` int(11) NOT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `fecha_hora_creada` datetime DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `id_cine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `PRUEB`
--

CREATE TABLE `PRUEB` (
  `idPRUEB(PK)` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Reparto`
--

CREATE TABLE `Reparto` (
  `id_personaje` int(11) NOT NULL,
  `id_pelicula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Rol`
--

CREATE TABLE `Rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id_personaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Sala`
--

CREATE TABLE `Sala` (
  `id_sala` int(11) NOT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `id_cine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Sexo`
--

CREATE TABLE `Sexo` (
  `id_sexo` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id_actor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Usuario`
--

CREATE TABLE `Usuario` (
  `@id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `contrasenia` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `#cuit` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Actor`
--
ALTER TABLE `Actor`
  ADD PRIMARY KEY (`id_actor`);

--
-- Indexes for table `Calificacion`
--
ALTER TABLE `Calificacion`
  ADD PRIMARY KEY (`id_calificacion`);

--
-- Indexes for table `Cine`
--
ALTER TABLE `Cine`
  ADD PRIMARY KEY (`id_cine`);

--
-- Indexes for table `Empleado`
--
ALTER TABLE `Empleado`
  ADD PRIMARY KEY (`apellido`);

--
-- Indexes for table `Entrada`
--
ALTER TABLE `Entrada`
  ADD PRIMARY KEY (`id_entrada`),
  ADD KEY `fk_Entrada_Funcion1_idx` (`numero`);

--
-- Indexes for table `Funcion`
--
ALTER TABLE `Funcion`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `fk_Funcion_Programacion1_idx` (`id_programacion`),
  ADD KEY `fk_Funcion_Pelicula1_idx` (`id_pelicula`),
  ADD KEY `fk_Funcion_Sala1_idx` (`id_sala`);

--
-- Indexes for table `Genero`
--
ALTER TABLE `Genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indexes for table `HorarioFuncion`
--
ALTER TABLE `HorarioFuncion`
  ADD PRIMARY KEY (`id_horario_funcion`),
  ADD KEY `fk_HorarioFuncion_Cine1_idx` (`id_cine`);

--
-- Indexes for table `PaisDeOrigen`
--
ALTER TABLE `PaisDeOrigen`
  ADD PRIMARY KEY (`id_pais_de_origen`);

--
-- Indexes for table `Pelicula`
--
ALTER TABLE `Pelicula`
  ADD PRIMARY KEY (`id_pelicula`),
  ADD UNIQUE KEY `titulo_original_UNIQUE` (`titulo_original`),
  ADD KEY `fk_Pelicula_Calificacion1_idx` (`id_calificacion`),
  ADD KEY `fk_Pelicula_PaisDeOrigen1_idx` (`id_pais_de_origen`),
  ADD KEY `fk_Pelicula_Genero1_idx` (`id_genero`);

--
-- Indexes for table `Personaje`
--
ALTER TABLE `Personaje`
  ADD PRIMARY KEY (`id_personaje`),
  ADD KEY `fk_Personaje_Actor1_idx` (`id_actor`);

--
-- Indexes for table `Programacion`
--
ALTER TABLE `Programacion`
  ADD PRIMARY KEY (`id_programacion`),
  ADD KEY `fk_Programacion_Cine1_idx` (`id_cine`);

--
-- Indexes for table `PRUEB`
--
ALTER TABLE `PRUEB`
  ADD PRIMARY KEY (`idPRUEB(PK)`);

--
-- Indexes for table `Reparto`
--
ALTER TABLE `Reparto`
  ADD PRIMARY KEY (`id_personaje`,`id_pelicula`),
  ADD KEY `fk_Personaje_has_Pelicula_Pelicula1_idx` (`id_pelicula`);

--
-- Indexes for table `Rol`
--
ALTER TABLE `Rol`
  ADD PRIMARY KEY (`id_rol`),
  ADD KEY `fk_Rol_Personaje1_idx` (`id_personaje`);

--
-- Indexes for table `Sala`
--
ALTER TABLE `Sala`
  ADD PRIMARY KEY (`id_sala`),
  ADD KEY `fk_Sala_Cine1_idx` (`id_cine`);

--
-- Indexes for table `Sexo`
--
ALTER TABLE `Sexo`
  ADD PRIMARY KEY (`id_sexo`),
  ADD KEY `fk_Sexo_Actor1_idx` (`id_actor`);

--
-- Indexes for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`@id_usuario`,`#cuit`),
  ADD KEY `fk_Usuario_Empleado1_idx` (`#cuit`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Entrada`
--
ALTER TABLE `Entrada`
  ADD CONSTRAINT `fk_Entrada_Funcion1` FOREIGN KEY (`numero`) REFERENCES `Funcion` (`numero`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Funcion`
--
ALTER TABLE `Funcion`
  ADD CONSTRAINT `fk_Funcion_Pelicula1` FOREIGN KEY (`id_pelicula`) REFERENCES `Pelicula` (`id_pelicula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Funcion_Programacion1` FOREIGN KEY (`id_programacion`) REFERENCES `Programacion` (`id_programacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Funcion_Sala1` FOREIGN KEY (`id_sala`) REFERENCES `Sala` (`id_sala`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `HorarioFuncion`
--
ALTER TABLE `HorarioFuncion`
  ADD CONSTRAINT `fk_HorarioFuncion_Cine1` FOREIGN KEY (`id_cine`) REFERENCES `Cine` (`id_cine`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Pelicula`
--
ALTER TABLE `Pelicula`
  ADD CONSTRAINT `fk_Pelicula_Calificacion1` FOREIGN KEY (`id_calificacion`) REFERENCES `Calificacion` (`id_calificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pelicula_Genero1` FOREIGN KEY (`id_genero`) REFERENCES `Genero` (`id_genero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pelicula_PaisDeOrigen1` FOREIGN KEY (`id_pais_de_origen`) REFERENCES `PaisDeOrigen` (`id_pais_de_origen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Personaje`
--
ALTER TABLE `Personaje`
  ADD CONSTRAINT `fk_Personaje_Actor1` FOREIGN KEY (`id_actor`) REFERENCES `Actor` (`id_actor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Programacion`
--
ALTER TABLE `Programacion`
  ADD CONSTRAINT `fk_Programacion_Cine1` FOREIGN KEY (`id_cine`) REFERENCES `Cine` (`id_cine`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Reparto`
--
ALTER TABLE `Reparto`
  ADD CONSTRAINT `fk_Personaje_has_Pelicula_Pelicula1` FOREIGN KEY (`id_pelicula`) REFERENCES `Pelicula` (`id_pelicula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Personaje_has_Pelicula_Personaje1` FOREIGN KEY (`id_personaje`) REFERENCES `Personaje` (`id_personaje`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Rol`
--
ALTER TABLE `Rol`
  ADD CONSTRAINT `fk_Rol_Personaje1` FOREIGN KEY (`id_personaje`) REFERENCES `Personaje` (`id_personaje`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Sala`
--
ALTER TABLE `Sala`
  ADD CONSTRAINT `fk_Sala_Cine1` FOREIGN KEY (`id_cine`) REFERENCES `Cine` (`id_cine`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Sexo`
--
ALTER TABLE `Sexo`
  ADD CONSTRAINT `fk_Sexo_Actor1` FOREIGN KEY (`id_actor`) REFERENCES `Actor` (`id_actor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD CONSTRAINT `fk_Usuario_Empleado1` FOREIGN KEY (`#cuit`) REFERENCES `Empleado` (`apellido`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
