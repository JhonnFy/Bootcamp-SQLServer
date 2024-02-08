
/*
Script 6.
Un usuario se registra en una plataforma para solicitar citas medicas, datos basicos de tipo  nombres, dni, número de localidad.

Prerrequisitos:
1-Elimine la tabla si existe.
2-Crear la tabla.
3-Ver la estructura de las columnas.
4-Ingrese n registros.
5-Imprima todos los datos de empleados.
6-Imprima todos los usuarios cuyo numero de localidad sea 4
*/

--CREATE DATABASE DataCitasMedicas
--GO

DROP TABLE IF EXISTS CitasMedicas
GO

CREATE TABLE CitasMedicas(
Dni INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(20) NOT NULL,
Apellidos VARCHAR(20) NOT NULL,
NumeroLocalidad INT NOT NULL
)
GO

INSERT INTO CitasMedicas (Dni, Nombre, Apellidos, NumeroLocalidad) VALUES (1023901231, 'Gabriel','Arias',1)
INSERT INTO CitasMedicas (Dni, Nombre, Apellidos, NumeroLocalidad) VALUES (1023901232, 'Juan David','Garcia',2)
INSERT INTO CitasMedicas (Dni, Nombre, Apellidos, NumeroLocalidad) VALUES (1023901233, 'Mario','Rojas',3)
INSERT INTO CitasMedicas (Dni, Nombre, Apellidos, NumeroLocalidad) VALUES (1023901234, 'Camilo','Mendoza',4)
INSERT INTO CitasMedicas (Dni, Nombre, Apellidos, NumeroLocalidad) VALUES (1023901235, 'Pablo','Inf',4)
INSERT INTO CitasMedicas (Dni, Nombre, Apellidos, NumeroLocalidad) VALUES (1023901236, 'Ismael','Alfa',3)
INSERT INTO CitasMedicas (Dni, Nombre, Apellidos, NumeroLocalidad) VALUES (1023901237, 'Rafael','Castiblanco',2)
INSERT INTO CitasMedicas (Dni, Nombre, Apellidos, NumeroLocalidad) VALUES (1023901238, 'Mario','Barco',1)
GO

SELECT * FROM CitasMedicas
GO

SELECT * FROM CitasMedicas a WHERE a.NumeroLocalidad = '4'
GO
