--Mostrar todas las tablas
SHOW TABLES;

--listar todas los nombrs de columnas
show COLUMNS
from
    alumno
    --Fragmentacion 
SELECT
    alumno_1.codigo as "Codigo Alumno 1",
    alumno_1.*,
    alumno_2.codigo as Codigo_Alumno_2,
    alumno_2.*
FROM
    `alumno_1`
    INNER JOIN alumno_2 on alumno_1.codigo = alumno_2.codigo;