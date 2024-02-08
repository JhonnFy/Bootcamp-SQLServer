/*
Una empresa almacena los datos de sus empleados en una tabla llamada "Empleados".

Prerrequisitos:
1-Elimine la tabla si existe.
2-Crear la tabla.
3-Ver la estructura de las columnas.
4-Ingrese 3 registros.
5-Imprima todos los datos de empleados.
6-Imprima el nombre, documento y domicilio de los empleados.
7-Imprima el documento, sexo, sueldo básico, de todos los empleados.*/


CREATE DATABASE DataEmpleados
GO

USE DataEmpleados
GO

DROP TABLE IF EXISTS Empleados
GO

CREATE TABLE Empleados(
DniEmpleados INT NOT NULL,
NombreEmpleado VARCHAR(50) NOT NULL,
Domicilio VARCHAR(50) NOT NULL,
Genero VARCHAR(7) NOT NULL,
Salario FLOAT NOT NULL
)
GO

INSERT INTO Empleados (DniEmpleados, NombreEmpleado, Domicilio, Genero, Salario) VALUES (1023901231, 'Jhon Fy', 'Cra 7 # 8-44', 'H', 5000000)
INSERT INTO Empleados (DniEmpleados, NombreEmpleado, Domicilio, Genero, Salario) VALUES (1023901232, 'Gabriel Gomez', 'Calle 21 Sur # 9-54', 'H', 2500000)
INSERT INTO Empleados (DniEmpleados, NombreEmpleado, Domicilio, Genero, Salario) VALUES (1023901233, 'Mario Rojas', 'Cra 30 Con 1 De Mayo', 'H', 2000000)
INSERT INTO Empleados (DniEmpleados, NombreEmpleado, Domicilio, Genero, Salario) VALUES (1023901234, 'Juan Vasquez', 'Calle 10 # 8-25', 'H', 1500000)
INSERT INTO Empleados (DniEmpleados, NombreEmpleado, Domicilio, Genero, Salario) VALUES (1023901235, 'Pedro Castillo', 'Cra 7 Cra 8-27', 'H', 1000000)
GO

SELECT * FROM Empleados
GO

SELECT a.NombreEmpleado, a.DniEmpleados, a.Domicilio FROM Empleados a
GO

SELECT a.DniEmpleados, a.Genero, a.Salario FROM Empleados a
GO

