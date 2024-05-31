--
-- Base de datos: `quinto`
--
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `alumno`
--
CREATE TABLE
    `Alumno_1` (
        `codigo` int (5) NOT NULL,
        `cedula` varchar(15) DEFAULT NULL,
        `nombres` varchar(40) DEFAULT NULL,
        `apellidos` varchar(40) DEFAULT NULL,
        `direccion` varchar(40) DEFAULT NULL,
        `telefono1` varchar(15) DEFAULT NULL,
        `telefono2` varchar(15) DEFAULT NULL,
        `ciudad` varchar(50) DEFAULT NULL,
        `provincia` varchar(50) CHARACTER
        SET
            utf8 DEFAULT NULL,
            `pais` varchar(50) DEFAULT NULL,
            `email` varchar(50) DEFAULT NULL,
            `fechanacimiento` date DEFAULT NULL,
            `redsocial` varchar(15) DEFAULT NULL,
            `carrera` varchar(40) DEFAULT NULL,
            `extension` varchar(15) DEFAULT NULL,
            `aniograduacion` int (4) DEFAULT NULL,
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Índices para tablas volcadas
--
--
-- Indices de la tabla `alumno`
--
ALTER TABLE `Alumno_1` ADD PRIMARY KEY (`codigo`),
ADD KEY `index_cedula` (`cedula`);