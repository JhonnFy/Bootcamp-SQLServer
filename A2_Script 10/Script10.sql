/*
Cree una tabla de usuarios, con los siguientes atributos: nombres, apellidos, edad, profesión. 

Prerrequisitos:
Elimine la tabla si existe.
Crear la tabla.
Ver la estructura de las columnas.
Imprima todos los registros.
Imprima todos los registros donde el nombre sea diferente de Jhon.
Imprima todos los registros donde la edad sea superior a 18.
Imprima todos los registros donde la profesión sea Software Developer.
Imprima todos los registros donde la profesión sea Autor.*/

CREATE DATABASE DataUsuarios
GO

DROP TABLE IF EXISTS DataUsuarios
GO

CREATE TABLE DataUsuarios(
Nombres VARCHAR(50) NOT NULL,
Apellidos VARCHAR(50) NOT NULL,
Edad INT NOT NULL,
Profesion VARCHAR(50) NOT NULL
)
GO

INSERT INTO DataUsuarios (Nombres, Apellidos, Edad, Profesion) VALUES ('Jhon','Rincon',26,'Software Developer')
INSERT INTO DataUsuarios (Nombres, Apellidos, Edad, Profesion) VALUES ('Gabriel','Garcia',12,'Autor')
INSERT INTO DataUsuarios (Nombres, Apellidos, Edad, Profesion) VALUES ('Mario','Mendoza',15,'Autor')
INSERT INTO DataUsuarios (Nombres, Apellidos, Edad, Profesion) VALUES ('Juan','Vazquez',18,'Autor')
GO

SELECT * FROM DataUsuarios
GO

SELECT * FROM DataUsuarios a WHERE a.Nombres <> 'Jhon'
SELECT * FROM DataUsuarios a WHERE a.Edad >= 18
SELECT * FROM DataUsuarios a WHERE a.Profesion = 'Software Developer'
SELECT * FROM DataUsuarios a WHERE a.Profesion = 'Autor'
