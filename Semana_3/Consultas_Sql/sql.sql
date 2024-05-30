--
-- Base de datos: `quinto`
--
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `alumno`
--
CREATE TABLE
    `alumno` (
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
            `lugardetrabajo` varchar(40) DEFAULT NULL,
            `direcciontrabajo` varchar(40) DEFAULT NULL,
            `telefono` varchar(15) DEFAULT NULL,
            `cargo` varchar(40) DEFAULT NULL,
            `Empresapropia` varchar(5) DEFAULT NULL,
            `trabajaensuareadeestudio` varchar(5) DEFAULT NULL,
            `tiempodetrabajo` int (2) DEFAULT NULL,
            `s1` text,
            `s2` text,
            `s3` text,
            `s4` text,
            `s5` text,
            `s6` text,
            `s7` text,
            `s8` text,
            `s9` text,
            `s10` text,
            `s11` text,
            `s12` datetime DEFAULT NULL,
            `s13` text,
            `s14` text,
            `s15` text,
            `s16` text,
            `s17` text,
            `s18` text,
            `s19` text,
            `s20` text,
            `s21` text,
            `s22` text,
            `s23` text,
            `s24` text,
            `s25` text,
            `s26` text,
            `s27` text,
            `s28` text,
            `s29` text,
            `s30` text,
            `s31` text,
            `s32` text,
            `s33` text,
            `fechagrado` date DEFAULT NULL,
            `s36` text,
            `s37` text,
            `s38` text,
            `s39` text,
            `s40` text,
            `s41` text,
            `s42` text,
            `s43` text,
            `s44` text,
            `s45` text,
            `s46` text,
            `s47` text,
            `area1` varchar(50) DEFAULT NULL,
            `area2` varchar(50) DEFAULT NULL,
            `s48` text,
            `s45_1` text,
            `s46_1` text,
            `s47_1` text,
            `s48_1` text,
            `s49_1` text,
            `s50_1` text,
            `valida` varchar(2) DEFAULT NULL,
            `validac` varchar(2) DEFAULT NULL,
            `validad` varchar(2) DEFAULT NULL,
            `validas` varchar(2) DEFAULT NULL,
            `validat` varchar(2) DEFAULT NULL,
            `ins_even` varchar(2) DEFAULT NULL,
            `par_even` varchar(2) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Índices para tablas volcadas
--
--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno` ADD PRIMARY KEY (`codigo`),
ADD KEY `index_cedula` (`cedula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--
--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno` MODIFY `codigo` int (5) NOT NULL AUTO_INCREMENT;