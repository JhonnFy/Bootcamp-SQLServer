
/*Script 2
Una empresa almacena datos de sus empleados en una tabla "Empleados" que guarda los siguientes datos: Nombre, documento, sexo, domicilio, sueldo básico.

Prerrequisitos:
1-Elimine la tabla, si existe.
2-Cree la tabla eligiendo el tipo adecuado de datos para cada campo.
3-Consulte la estructura de las columnas.
4-Ingrese 5 registros
5-Imprima en pantalla
*/

CREATE DATABASE Empresa
GO

USE Empresa
GO

DROP TABLE IF EXISTS Empleados
GO

CREATE TABLE Empleados(
Nombre Varchar(50) NOT NULL,
Documento INT NOT NULL,
Sexo VARCHAR(10) NOT NULL,
Domiciliio VARCHAR(50) NOT NULL,
SueldoBasico FLOAT NOT NULL
)
GO

INSERT INTO Empleados (Nombre, Documento, Sexo, Domiciliio, SueldoBasico) VALUES ('Jhon Fy', 1023901234,'H','Calle 21 Sur N 9-27 Este', 1250000)
INSERT INTO Empleados (Nombre, Documento, Sexo, Domiciliio, SueldoBasico) VALUES ('Camila Rojas', 1023901235,'M','Cra 7 # 8-54', 1250000)
INSERT INTO Empleados (Nombre, Documento, Sexo, Domiciliio, SueldoBasico) VALUES ('Juan Castro', 1023901236,'H','Cra 10 Calle 6', 1250000)
INSERT INTO Empleados (Nombre, Documento, Sexo, Domiciliio, SueldoBasico) VALUES ('Daniela Alfonso', 1023901237,'M','Av Cra 30 Cra 1 De Mayo', 1250000)
INSERT INTO Empleados (Nombre, Documento, Sexo, Domiciliio, SueldoBasico) VALUES ('Anderson Ready', 1023901238,'H','Cra 7 Calle 100', 1250000)

Execute sp_columns Empleados
GO
SELECT * FROM Empleados
GO
