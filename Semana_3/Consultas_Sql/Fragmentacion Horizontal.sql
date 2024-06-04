--Tabla Padre / Madre
CREATE TABLE
    `detalle_pedido` (
        `codigo_pedido` int (11) NOT NULL,
        `codigo_producto` varchar(15) NOT NULL,
        `cantidad` int (11) NOT NULL,
        `precio_unidad` decimal(15, 2) NOT NULL,
        `numero_linea` smallint (6) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--Fragcionamiento Horizontal
--Tabla Detalle_Pedido1  Horizontal   1 - 150
CREATE TABLE
    `detalle_pedido_1_H` (
        `codigo_pedido` int (11) NOT NULL,
        `codigo_producto` varchar(15) NOT NULL,
        `cantidad` int (11) NOT NULL,
        `precio_unidad` decimal(15, 2) NOT NULL,
        `numero_linea` smallint (6) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

ALTER TABLE `detalle_pedido_1_H` ADD PRIMARY KEY (`codigo_pedido`, `codigo_producto`),
ADD KEY `codigo_producto` (`codigo_producto`);

ALTER TABLE `detalle_pedido_1_H` ADD CONSTRAINT `detalle_pedido_ibfk_1_1_H` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`),
ADD CONSTRAINT `detalle_pedido_ibfk_2_1_H` FOREIGN KEY (`codigo_producto`) REFERENCES `producto` (`codigo_producto`);

COMMIT;

--Tabla Detalle_Pedido1  Horizontal   151 > 
CREATE TABLE
    `detalle_pedido_2_H` (
        `codigo_pedido` int (11) NOT NULL,
        `codigo_producto` varchar(15) NOT NULL,
        `cantidad` int (11) NOT NULL,
        `precio_unidad` decimal(15, 2) NOT NULL,
        `numero_linea` smallint (6) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

ALTER TABLE `detalle_pedido_2_H` ADD PRIMARY KEY (`codigo_pedido`, `codigo_producto`),
ADD KEY `codigo_producto` (`codigo_producto`);

ALTER TABLE `detalle_pedido_2_H` ADD CONSTRAINT `detalle_pedido_ibfk_1_2_H` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`),
ADD CONSTRAINT `detalle_pedido_ibfk_2_2_H` FOREIGN KEY (`codigo_producto`) REFERENCES `producto` (`codigo_producto`);

COMMIT;

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido` ADD PRIMARY KEY (`codigo_pedido`, `codigo_producto`),
ADD KEY `codigo_producto` (`codigo_producto`);

--
-- Restricciones para tablas volcadas
--
--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido` ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`),
ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`codigo_producto`) REFERENCES `producto` (`codigo_producto`);

COMMIT;