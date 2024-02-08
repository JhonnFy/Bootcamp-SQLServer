/*
Trabaje con la tabla "Agenda" en la que registra los datos de sus amigos.

1-Elimine "Agenda" si existe.
2-Crea la tabla con los siguientes atributos: apellidos, nombres, domicilio, teléfono.
3-Visualice la estructura de las columnas.
4-Seleccione todos los datos de la tabla.
5-Seleccione todos los datos, condicione con el primer nombre del primer registro.
6-Seleccione nombres y apellidos iguales a "López"  (3 registros).
7-Muestre el nombre de quienes tengan el teléfono "4544545" (2 registros).
*/

CREATE DATABASE DataAgenda
GO

USE DataAgenda
GO

DROP TABLE IF EXISTS Agenda
GO

CREATE TABLE Agenda(
Apellidos VARCHAR(50) NOT NULL,
Nombres VARCHAR(50) NOT NULL,
Domicilio VARCHAR(50) NOT NULL,
Telefono VARCHAR(50) NOT NULL
)
GO

INSERT INTO Agenda (Apellidos, Nombres, Domicilio, Telefono) VALUES ('Garcia','Gabriel','Cra 7 # 100-50','4544545')
INSERT INTO Agenda (Apellidos, Nombres, Domicilio, Telefono) VALUES ('Vasquez','Juan','Cra 7 # 100-50','4544545')
INSERT INTO Agenda (Apellidos, Nombres, Domicilio, Telefono) VALUES ('Lopez','Daniel','Cra 7 # 100-50','1234567')
INSERT INTO Agenda (Apellidos, Nombres, Domicilio, Telefono) VALUES ('Lopez','Ismael','Cra 7 # 100-50','7654321')
INSERT INTO Agenda (Apellidos, Nombres, Domicilio, Telefono) VALUES ('Lopez','Gabriel','Cra 7 # 100-50','9873215')
INSERT INTO Agenda (Apellidos, Nombres, Domicilio, Telefono) VALUES ('Patrosca','Juan','Cra 7 # 100-50','5557748')
GO

SELECT * FROM Agenda
GO

SELECT * FROM Agenda a WHERE a.Nombres = 'Gabriel'
GO

SELECT * FROM Agenda a WHERE a.Apellidos = 'Lopez'
GO

SELECT * FROM Agenda a WHERE a.Telefono = '4544545'
GO

EXECUTE sp_columns Agenda
GO
