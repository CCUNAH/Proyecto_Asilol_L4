-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2023 a las 22:12:06
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
-- Base de datos: `asilodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `Id_Actividad` int(11) NOT NULL,
  `Nombre_Actividad` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Fecha_Hora_Inicio` datetime DEFAULT NULL,
  `Duracion` int(11) DEFAULT NULL,
  `Id_Area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `Id_Area` int(11) NOT NULL,
  `Nombre_Area` varchar(200) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `Tipo_Area` varchar(200) NOT NULL,
  `Capacidad_Maxima` int(11) DEFAULT NULL,
  `Estado_Ocupacion` varchar(10) DEFAULT NULL,
  `Observaciones_Adicionales` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones`
--

CREATE TABLE `asignaciones` (
  `Id_Asignacion` int(11) NOT NULL,
  `ID_Residente` int(11) DEFAULT NULL,
  `Id_Area` int(11) DEFAULT NULL,
  `Fecha_Asignacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `Id_Categoria` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controlvisitas`
--

CREATE TABLE `controlvisitas` (
  `ID` int(11) NOT NULL,
  `ID_Visita` int(11) NOT NULL,
  `ID_Visitante` int(11) NOT NULL,
  `Observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `Id_Compra` int(11) NOT NULL,
  `Id_Producto` int(11) DEFAULT NULL,
  `Fecha_Compra` datetime DEFAULT NULL,
  `Cantidad` decimal(10,0) DEFAULT NULL,
  `Precio_Unitario` int(11) DEFAULT NULL,
  `Unidad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_alimentacion`
--

CREATE TABLE `inventario_alimentacion` (
  `Id` int(11) NOT NULL,
  `Id_Producto` int(11) DEFAULT NULL,
  `Id_Categoria` int(11) DEFAULT NULL,
  `Fecha_Consumo` date DEFAULT NULL,
  `Cantidad` decimal(10,0) DEFAULT NULL,
  `Unidad` varchar(20) DEFAULT NULL,
  `Stock` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manager`
--

CREATE TABLE `manager` (
  `ID_Manager` int(11) NOT NULL,
  `Cod_persona` int(11) NOT NULL,
  `Fec_Registro` date NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `Cod_persona` int(11) NOT NULL,
  `Nom_persona` varchar(255) NOT NULL,
  `Edad_persona` int(11) NOT NULL,
  `Dir_persona` varchar(100) NOT NULL,
  `DNI_persona` varchar(15) NOT NULL,
  `Cod_Telefono` int(11) NOT NULL,
  `Fec_nacimiento` date NOT NULL,
  `Gen_persona` enum('F','M') NOT NULL,
  `IND_civil` enum('S','C','D','V') NOT NULL,
  `RTN_persona` varchar(20) NOT NULL,
  `Pes_persona` decimal(5,2) NOT NULL,
  `Alt_persona` decimal(5,2) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contrasena` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`Cod_persona`, `Nom_persona`, `Edad_persona`, `Dir_persona`, `DNI_persona`, `Cod_Telefono`, `Fec_nacimiento`, `Gen_persona`, `IND_civil`, `RTN_persona`, `Pes_persona`, `Alt_persona`, `usuario`, `correo`, `contrasena`) VALUES
(21, 'kevin', 0, 'direccion por defecto', '0', 0, '0000-00-00', 'F', 'S', '00', 22.00, 22.00, 'kc', 'coreoo', '1233'),
(25, 'ana', 0, 'direccion por defecto', '0', 0, '0000-00-00', 'F', 'S', '00', 22.00, 22.00, 'aa', 'ana', 'fb131bc57a477c8c9d068f1ee5622ac304195a77164ccc2d75d82dfe1a727ba8d674ed87f96143b2b416aacefb555e3045c356faa23e6d21de72b85822e39fdd'),
(26, 'CC', 0, 'direccion por defecto', '0', 0, '0000-00-00', 'F', 'S', '00', 22.00, 22.00, 'E', 'C', '3d637ae63d59522dd3cb1b81c1ad67e56d46185b0971e0bc7dd2d8ad3b26090acb634c252fc6a63b3766934314ea1a6e59fa0c8c2bc027a7b6a460b291cd4dfb'),
(27, 'CC', 0, 'direccion por defecto', '0', 0, '0000-00-00', 'F', 'S', '00', 22.00, 22.00, 'CC', 'CC', '99c426cc0bf3c465f9c4a49e5a6c3d09a43c4f95631776b354be0727f3f65567ae9357c5d55015e2cfbb27ead98e1bb54f2a0f26042ad267a279f0e3a8c5b2e9'),
(28, '', 0, 'direccion por defecto', '0', 0, '0000-00-00', 'F', 'S', '00', 22.00, 22.00, '', '', 'cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e'),
(29, 'q', 0, 'direccion por defecto', '0', 0, '0000-00-00', 'F', 'S', '00', 22.00, 22.00, 'q', 'q', '4dff4ea340f0a823f15d3f4f01ab62eae0e5da579ccb851f8db9dfe84c58b2b37b89903a740e1ee172da793a6e79d560e5f7f9bd058a12a280433ed6fa46510a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id_Producto` int(11) NOT NULL,
  `Id_Categoria` int(11) DEFAULT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(500) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Stock` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `renta_mensual`
--

CREATE TABLE `renta_mensual` (
  `Cod_Renta` int(11) NOT NULL,
  `Cod_Manager` int(11) NOT NULL,
  `Monto` decimal(10,2) NOT NULL,
  `Fecha_pago` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `ID_Reporte` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Cod_Residente` int(11) NOT NULL,
  `Descripcion` text NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residentes`
--

CREATE TABLE `residentes` (
  `ID_Residente` int(11) NOT NULL,
  `Cod_persona` int(11) NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  `Fecha_Egreso` date DEFAULT NULL,
  `Razón_Egreso` varchar(100) DEFAULT NULL,
  `Estado_Salud` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tel_persona`
--

CREATE TABLE `tel_persona` (
  `Cod_Telefono` int(11) NOT NULL,
  `Num_Telefono` int(10) NOT NULL,
  `Tip_Telefono` enum('P','C','T') NOT NULL,
  `Fec_Registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tel_persona`
--

INSERT INTO `tel_persona` (`Cod_Telefono`, `Num_Telefono`, `Tip_Telefono`, `Fec_Registro`) VALUES
(0, 0, 'P', '2023-10-24 00:43:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `ID_Visitante` int(11) NOT NULL,
  `Cod_persona` int(11) NOT NULL,
  `CorreoElectronico` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `ID_Visita` int(11) NOT NULL,
  `FechaVisita` date DEFAULT NULL,
  `ID_Residente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`Id_Actividad`),
  ADD KEY `Id_Area` (`Id_Area`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`Id_Area`);

--
-- Indices de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD PRIMARY KEY (`Id_Asignacion`),
  ADD KEY `ID_Residente` (`ID_Residente`),
  ADD KEY `Id_Area` (`Id_Area`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Id_Categoria`);

--
-- Indices de la tabla `controlvisitas`
--
ALTER TABLE `controlvisitas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Visita` (`ID_Visita`),
  ADD KEY `ID_Visitante` (`ID_Visitante`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`Id_Compra`),
  ADD KEY `Id_Producto` (`Id_Producto`);

--
-- Indices de la tabla `inventario_alimentacion`
--
ALTER TABLE `inventario_alimentacion`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Producto` (`Id_Producto`),
  ADD KEY `Id_Categoria` (`Id_Categoria`);

--
-- Indices de la tabla `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ID_Manager`),
  ADD KEY `Cod_persona` (`Cod_persona`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`Cod_persona`),
  ADD KEY `Cod_Telefono` (`Cod_Telefono`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id_Producto`),
  ADD KEY `Id_Categoria` (`Id_Categoria`);

--
-- Indices de la tabla `renta_mensual`
--
ALTER TABLE `renta_mensual`
  ADD PRIMARY KEY (`Cod_Renta`),
  ADD KEY `Cod_Manager` (`Cod_Manager`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`ID_Reporte`),
  ADD KEY `Cod_Residente` (`Cod_Residente`);

--
-- Indices de la tabla `residentes`
--
ALTER TABLE `residentes`
  ADD PRIMARY KEY (`ID_Residente`),
  ADD KEY `Cod_persona` (`Cod_persona`);

--
-- Indices de la tabla `tel_persona`
--
ALTER TABLE `tel_persona`
  ADD PRIMARY KEY (`Cod_Telefono`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`ID_Visitante`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`ID_Visita`),
  ADD KEY `ID_Residente` (`ID_Residente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `Id_Actividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `Id_Area` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  MODIFY `Id_Asignacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `Id_Categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `controlvisitas`
--
ALTER TABLE `controlvisitas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `Id_Compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario_alimentacion`
--
ALTER TABLE `inventario_alimentacion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `manager`
--
ALTER TABLE `manager`
  MODIFY `ID_Manager` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `Cod_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Id_Producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `renta_mensual`
--
ALTER TABLE `renta_mensual`
  MODIFY `Cod_Renta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `ID_Reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `residentes`
--
ALTER TABLE `residentes`
  MODIFY `ID_Residente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tel_persona`
--
ALTER TABLE `tel_persona`
  MODIFY `Cod_Telefono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `ID_Visitante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `visitas`
--
ALTER TABLE `visitas`
  MODIFY `ID_Visita` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_ibfk_1` FOREIGN KEY (`Id_Area`) REFERENCES `areas` (`Id_Area`);

--
-- Filtros para la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD CONSTRAINT `asignaciones_ibfk_1` FOREIGN KEY (`ID_Residente`) REFERENCES `residentes` (`ID_Residente`),
  ADD CONSTRAINT `asignaciones_ibfk_2` FOREIGN KEY (`Id_Area`) REFERENCES `areas` (`Id_Area`);

--
-- Filtros para la tabla `controlvisitas`
--
ALTER TABLE `controlvisitas`
  ADD CONSTRAINT `controlvisitas_ibfk_1` FOREIGN KEY (`ID_Visita`) REFERENCES `visitas` (`ID_Visita`),
  ADD CONSTRAINT `controlvisitas_ibfk_2` FOREIGN KEY (`ID_Visitante`) REFERENCES `visitantes` (`ID_Visitante`);

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD CONSTRAINT `detalle_compra_ibfk_1` FOREIGN KEY (`Id_Producto`) REFERENCES `productos` (`Id_Producto`);

--
-- Filtros para la tabla `inventario_alimentacion`
--
ALTER TABLE `inventario_alimentacion`
  ADD CONSTRAINT `inventario_alimentacion_ibfk_1` FOREIGN KEY (`Id_Producto`) REFERENCES `productos` (`Id_Producto`),
  ADD CONSTRAINT `inventario_alimentacion_ibfk_2` FOREIGN KEY (`Id_Categoria`) REFERENCES `categoria` (`Id_Categoria`);

--
-- Filtros para la tabla `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`Cod_persona`) REFERENCES `personas` (`Cod_persona`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`Cod_Telefono`) REFERENCES `tel_persona` (`Cod_Telefono`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Id_Categoria`) REFERENCES `categoria` (`Id_Categoria`);

--
-- Filtros para la tabla `renta_mensual`
--
ALTER TABLE `renta_mensual`
  ADD CONSTRAINT `renta_mensual_ibfk_1` FOREIGN KEY (`Cod_Manager`) REFERENCES `manager` (`ID_Manager`);

--
-- Filtros para la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD CONSTRAINT `reportes_ibfk_1` FOREIGN KEY (`Cod_Residente`) REFERENCES `residentes` (`ID_Residente`);

--
-- Filtros para la tabla `residentes`
--
ALTER TABLE `residentes`
  ADD CONSTRAINT `residentes_ibfk_1` FOREIGN KEY (`Cod_persona`) REFERENCES `personas` (`Cod_persona`);

--
-- Filtros para la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD CONSTRAINT `visitas_ibfk_1` FOREIGN KEY (`ID_Residente`) REFERENCES `residentes` (`ID_Residente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
